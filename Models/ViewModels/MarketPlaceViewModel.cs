namespace SOFT703.Models.ViewModels;

public class MarketPlaceViewModel
{
    public List<Product> Catalog { get; set; }
    public List<TrolleyItemViewModel> TrolleyItems { get; set; }
    
    public Trolley? CurrentTrolley { get; set; }
    public double Total { get; set; }
}
