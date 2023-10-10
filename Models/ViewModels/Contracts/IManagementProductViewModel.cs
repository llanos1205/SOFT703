
namespace SOFT703.Models.ViewModels.Contracts;

public interface IManagementProductViewModel:IGenericViewModel<Product>
{

    public List<Product>? Products { get; set; }
    public Product? Product { get; set; }
}