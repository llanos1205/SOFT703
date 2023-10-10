using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;
//should inherit from GenericBaseService and implement the IProductService interface
public class ProductService: GenericBaseService<Product>,IProductService
{
    
    public ProductService(ApplicationDbContext dbContext) : base(dbContext)
    {
    }
    
}