using SOFT703.Models;

namespace SOFT703.Services.Contracts;

public interface IUserService
{
    public  Task<bool> Login(string Email,string Password);
    public  Task<bool> SignIn(User user, string Password);
    public Task LogOut();
    public string? GetUserId();
    Task<User?> GetUserTrolleyTransaction(string? id);
}