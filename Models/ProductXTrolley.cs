namespace SOFT703.Models;

public class ProductXTrolley
{
    public int ProductId { get; set; }
    public Product? Product { get; set; }

    public int TrolleyId { get; set; }
    public Trolley? Trolley { get; set; }
    public  int Quantity { get; set; }
}