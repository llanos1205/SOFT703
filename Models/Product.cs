namespace SOFT703.Models;

public class Product
{
    public int Id { set; get; }
    public  string? Name { get; set; }
    public  string? Photo { get; set; }
    public  int Stock { get; set; }
    public  double Price { get; set; }
    public List<ProductXTrolley>? ProductXTrolleys { get; set; } // Navigation property

}