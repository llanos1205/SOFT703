using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class MarketPlaceController : Controller
{
    // GET
    private readonly ApplicationDbContext _context;

    public MarketPlaceController(ApplicationDbContext context)
    {
        _context = context;
    }

    [Authorize]
    public IActionResult MarketPlace()
    {
        var currentUser = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
        var currentTrolley = _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefault(x => x.UserId == currentUser && x.IsCurrent);
        if (currentTrolley == null)
        {
            var newTrolley = new Trolley()
            {
                UserId = currentUser,
                IsCurrent = true,
                Total = 0
            };
            var result = _context.Trolley.Add(newTrolley);
            _context.SaveChanges();
            currentTrolley = result.Entity;
        }

        var products = _context.Product.ToList();

        if (currentTrolley.ProductXTrolleys == null)
        {
            currentTrolley.ProductXTrolleys = new List<ProductXTrolley>();
        }
        var mpViewModel = new MarketPlaceViewModel
        {
            Total = currentTrolley.Total,
            CurrentTrolley = currentTrolley,
            Catalog = products
         
        };
        return View("MarketPlace", mpViewModel);
    }


    public IActionResult AddToTrolley(string productId)
    {
        var product = _context.Product.Find(productId);
        if (product != null)
        {
            var userId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var trolley = _context.Trolley
                .Include(t => t.ProductXTrolleys) 
                .SingleOrDefault(t => t.UserId == userId && t.IsCurrent);
            if (trolley == null)
            {
                trolley = new Trolley
                {
                    UserId = userId,
                    IsCurrent = true,
                };
                _context.Trolley.Add(trolley);
            }
            var existingProduct =
                trolley.ProductXTrolleys.SingleOrDefault(pt => pt.ProductId == productId && pt.TrolleyId == trolley.Id);
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
            _context.SaveChanges();
        }
        return RedirectToAction("MarketPlace"); 
    }

    public IActionResult RemoveItem(string id)
    {
        var product = _context.Product.Find(id);
        if (product != null)
        {
            var userId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var trolley = _context.Trolley
                .Include(t => t.ProductXTrolleys) 
                .SingleOrDefault(t => t.UserId == userId && t.IsCurrent);
            if (trolley == null)
            {
                trolley = new Trolley
                {
                    UserId = userId,
                    IsCurrent = true,
                };
                _context.Trolley.Add(trolley);
            }
            var existingProduct =
                trolley.ProductXTrolleys.SingleOrDefault(pt => pt.ProductId == id && pt.TrolleyId == trolley.Id);

            if (existingProduct.Quantity == 1)
            {
                trolley.ProductXTrolleys.Remove(existingProduct);
                
            }
            else
            {
                existingProduct.Quantity--;
            }
            trolley.Total -= product.Price;
            _context.SaveChanges();
        }
        return RedirectToAction("MarketPlace"); 

    }

    public IActionResult CheckOut(string trolleyid)
    {
        var trolley = _context.Trolley.Find(trolleyid);
        trolley.IsCurrent = false;
        trolley.TransactionDate = DateTime.Now;
        var newTrolley = new Trolley()
        {
            UserId = trolley.UserId,
            IsCurrent = true,
            Total = 0
        };
        var result = _context.Trolley.Add(newTrolley);
        _context.SaveChanges();
        return RedirectToAction("MarketPlace");
    }
}