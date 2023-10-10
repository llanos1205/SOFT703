using SOFT703.Models;

namespace SOFT703.Services.Contracts;

public interface IUserService: IBaseService<User>
{
    public  Task<bool> Login(string Email,string Password);
    public  Task<bool> SignIn(User user, string Password);
    public Task LogOut();
    public string? GetUserId();
    Task<User?> GetUserTrolleyTransaction(string? id);
    Task SetRole(string email, string role);
    Task AddDefaultAsync(User user, string? password);
   
}