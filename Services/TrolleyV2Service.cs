using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class TrolleyV2Service:GenericBaseService<Trolley>,ITrolleyService
{
    public TrolleyV2Service(ApplicationDbContext context) : base(context)
    {
    }

    public async Task<Trolley?> GetLatest(string id)
    {
        var fakeTrolley = new Trolley()
        {
            IsCurrent = true,
            TransactionDate = DateTime.Now,
            UserId = id,
            ProductXTrolleys = new List<ProductXTrolley>()
            {
                new ProductXTrolley()
                {
                    Product = new Product()
                    {
                        Id = "1",
                        Name = "HARD CODED PRODUCT",
                        Price = 1314
                    },
                    Quantity = 69
                }
            },
            Total = 911
        };
        return fakeTrolley;
    }

    public Task<Trolley> RecalculateTotal(string id)
    {
        throw new NotImplementedException();
    }

    public Task<Trolley> AddProduct(string id, string productId)
    {
        throw new NotImplementedException();
    }

    public Task<Trolley> RemoveProduct(string id, string productId)
    {
        throw new NotImplementedException();
    }

    public Task<Trolley> CheckOut(string trolleyId)
    {
        throw new NotImplementedException();
    }

    public Task<Trolley?> GetExtendedTrolley(string trolleyId)
    {
        throw new NotImplementedException();
    }
}