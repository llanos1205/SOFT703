using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class ManagementProductViewModel: IManagementProductViewModel
{
    private readonly IProductService _productService;
    public List<Product>? Products { get; set; }
    public Product? Product { get; set; }

    public ManagementProductViewModel(IProductService productService)
    {
        _productService = productService;
    }

    public ManagementProductViewModel()
    {
    }

    public async Task DeleteAsync(string id)
    {
        await  _productService.DeleteAsync(id);
    }

    public async Task GetByIdAsync(string id)
    {
        this.Product = await _productService.GetByIdAsync(id);
    }

    public async Task GetAllAsync()
    {
        this.Products = await _productService.GetAllAsync();
    }

    public Task<Product> AddAsync(Product entity)
    {
        return _productService.AddAsync(entity);
    }

    public async Task<Product> UpdateAsync(string id, Product newEntity)
    {
        var entity = await _productService.GetByIdAsync(id);
        entity.Name = newEntity.Name;
        entity.Price = newEntity.Price;
        entity.Photo = newEntity.Photo;
        entity.Stock = newEntity.Stock;
        return await _productService.UpdateAsync(entity);
    }
}