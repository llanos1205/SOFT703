namespace SOFT703.Models.ViewModels.Contracts;

public interface IMarketPlaceViewModel:IGenericViewModel<Trolley>
{
    public List<Product> Catalog { get; set; }
    
    public Trolley? CurrentTrolley { get; set; }
    public double Total { get; set; }
    
    public Task AddToTrolley(string productId);
    public Task RemoveFromTrolley(string productId);
    public Task CheckOut(string trolleyId);

    Task GetTrolley();
}