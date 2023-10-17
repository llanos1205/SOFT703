using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

//this class shoul inherit from GenericBaseService
public class TrolleyService : GenericBaseService<Trolley>, ITrolleyService
{
    public TrolleyService(ApplicationDbContext context) : base(context)
    {
    }

    public async Task<Trolley?> GetExtendedTrolley(string trolleyId)
    {
        //based on the trolley id find the trolley with its products
        return await _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefaultAsync(x => x.Id == trolleyId);
        
    }

    public async Task<Trolley?> GetLatest(string id)
    {
        //find the latest trolley for the user including the products 
        var trolley = await _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefaultAsync(x => x.UserId == id && x.IsCurrent);

        if (trolley == null)
        {
            trolley = await AddAsync(new Trolley()
                { UserId = id, IsCurrent = true, TransactionDate = DateTime.Now, Total = 0 });
            trolley = await RecalculateTotal(trolley.Id);
            trolley.ProductXTrolleys = new List<ProductXTrolley>();
            return trolley;
        }

        return trolley;
    }

    public async Task<Trolley> RecalculateTotal(string id)
    {
        var trolley = _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefault(x => x.Id == id);
        //with the above trolly recalculate the total
        trolley.Total = trolley.ProductXTrolleys.Sum(x => x.Product.Price * x.Quantity);
        return await UpdateAsync(trolley);
    }

    public async Task<Trolley> AddProduct(string id, string productId)
    {
        //find product by its ID and add it to a trolley
        var product = _context.Product.Find(productId);
        var trolley = _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefault(x => x.Id == id);
        var existingProduct = trolley.ProductXTrolleys.SingleOrDefault(pt => pt.ProductId == productId);
        if (existingProduct == null)
        {
            trolley.ProductXTrolleys.Add(new ProductXTrolley
            {
                Product = product,
                Quantity = 1
            });
        }
        else
        {
            existingProduct.Quantity++;
        }

        trolley.Total += product.Price;
        var updatedTrolley = await UpdateAsync(trolley);
        updatedTrolley = await RecalculateTotal(updatedTrolley.Id);
        return updatedTrolley;
    }

    public async Task<Trolley> RemoveProduct(string id, string productId)
    {
        //find product by its ID and remove it from a trolley
        var product = _context.Product.Find(productId);
        var trolley = _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefault(x => x.Id == id);
        var existingProduct = trolley.ProductXTrolleys.SingleOrDefault(pt => pt.ProductId == productId);
        if (existingProduct != null)
        {
            if (existingProduct.Quantity > 1)
            {
                existingProduct.Quantity--;
            }
            else
            {
                trolley.ProductXTrolleys.Remove(existingProduct);
            }
        }

        trolley.Total -= product.Price;
        var updatedTrolley = await UpdateAsync(trolley);
        updatedTrolley = await RecalculateTotal(updatedTrolley.Id);
        return updatedTrolley;
    }

    public async Task<Trolley> CheckOut(string trolleyId)
    {
        var trolley = _context.Trolley.Find(trolleyId);
        trolley.IsCurrent = false;
        trolley.TransactionDate = DateTime.Now;
        var newTrolley = new Trolley()
        {
            UserId = trolley.UserId,
            IsCurrent = true,
            Total = 0
        };
        await UpdateAsync(trolley);
        return await AddAsync(newTrolley);
    }
}