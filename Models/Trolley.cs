namespace SOFT703.Models;

public class Trolley
{
    public int Id { set; get; }
    public  bool IsCurrent { get; set; }
    public string UserId { get; set; } // Foreign key to associate the trolley with a user
    public User User { get; set; } 
    public List<ProductXTrolley>? ProductXTrolleys { get; set; } // Navigation property

}