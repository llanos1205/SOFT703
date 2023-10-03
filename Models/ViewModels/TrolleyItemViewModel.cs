namespace SOFT703.Models.ViewModels;

public class TrolleyItemViewModel
{
    public string ProductName { get; set; }
    public int Quantity { get; set; }
    public double Total { get; set; }

    public TrolleyItemViewModel(Trolley trolley)
    {
        
    }
}
