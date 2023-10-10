using Microsoft.AspNetCore.Identity;
using SOFT703.Services.Contracts;

namespace SOFT703.Models;

public class User: IdentityUser,IEntity
{
    public  string? FirstName { get; set; }
    public  string? LastName { get; set; }
    public  string? Phone { get; set; }
    public List<Trolley>? Trolleys { get; set; } 
    public List<Transaction>? Transactions { get; set; } 

}