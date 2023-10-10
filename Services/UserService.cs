using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class UserService : GenericBaseService<User>, IUserService
{
    private readonly UserManager<User> _userManager;
    private readonly SignInManager<User> _signInManager;

    public UserService(UserManager<User> userManager, SignInManager<User> signInManager,ApplicationDbContext context) : base(context)
    {
        _userManager = userManager;
        _signInManager = signInManager;
    }

    public async Task<bool> Login(string Email, string Password)
    {
        var user = await _userManager.FindByEmailAsync(Email);
        if (user != null && await _userManager.CheckPasswordAsync(user, Password))
        {
            await _signInManager.SignInAsync(user, isPersistent: false);
            return true;
        }
        return false;
    }

    public async Task<bool> SignIn(User user,string Password)
    {
        var result = await _userManager.CreateAsync(user, Password);
        if (result.Succeeded)
        {
            await _signInManager.SignInAsync(user, isPersistent: false);
            return true;
        }
        return false;
    }

    public async Task LogOut()
    {
        await _signInManager.SignOutAsync();
    }

    public string? GetUserId()
    {
        return _userManager.GetUserId(_signInManager.Context.User);
    }

    public Task<User?> GetUserTrolleyTransaction(string? id)
    {
        //if id is null find all transactions related to the calling user, if not null find all the transactions to the user with that id
        return id == null ? _context.Users.Include(x => x.Transactions)
            .Include(x => x.Trolleys)
            .FirstOrDefaultAsync(x => x.Id == GetUserId()) : _context.Users.Include(x => x.Transactions)
            .Include(x => x.Trolleys)
            .FirstOrDefaultAsync(x => x.Id == id);

        
    }
}