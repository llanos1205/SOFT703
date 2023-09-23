using Microsoft.AspNetCore.Identity;

namespace SOFT703.Models;

public class User: IdentityUser
{
    public  string? FirstName { get; set; }
    public  string? LastName { get; set; }
    public  string? Phone { get; set; }
    public List<Trolley>? Trolleys { get; set; } // Navigation property for user's trolleys

}