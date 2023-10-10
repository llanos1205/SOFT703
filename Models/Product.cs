using SOFT703.Services.Contracts;

namespace SOFT703.Models;

public class Product:IEntity
{
    public string? Id { set; get; }
    public  string? Name { get; set; }
    public  string? Photo { get; set; }
    public  int Stock { get; set; }
    public  double Price { get; set; }
    public List<ProductXTrolley>? ProductXTrolleys { get; set; }

}