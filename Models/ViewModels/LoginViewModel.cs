using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class LoginViewModel : ILoginViewModel
{
    [Required(ErrorMessage = "Please enter your email.")]
    [EmailAddress(ErrorMessage = "Invalid email format. Please enter a valid email.")]
    public string Email { get; set; }

    [Required(ErrorMessage = "Password is required.")]
    [DataType(DataType.Password)]
    public string? Password { get; set; }

    public string? FirstName { get; set; }
    public string? LastName { get; set; }
    public string? PhoneNumber { get; set; }


    private readonly IUserService _userService;
    private readonly ITrolleyService _trolleyService;
    private readonly ITransactionService _transactionService;

    public LoginViewModel(IUserService userService, ITrolleyService trolleyService, ITransactionService transactionService)
    {
        _userService = userService;
        _trolleyService = trolleyService;
        _transactionService = transactionService;
    }

    public LoginViewModel()
    {
    }

    public async Task<bool> Login()
    {
        return await _userService.Login(this.Email, this.Password);
    }

    public async Task LogOut()
    {
        await _userService.LogOut();
    }

    public async Task<bool> SignIn()
    {
        var user = new User()
        {
            Email = this.Email,
            UserName = this.Email,
            FirstName = this.FirstName,
            LastName = this.LastName,
            PhoneNumber = this.PhoneNumber,
            EmailConfirmed = true
            
        };
        return await _userService.SignIn(user, this.Password);

    }



    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task GetByIdAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task GetAllAsync()
    {
        throw new NotImplementedException();
    }

    public Task<User> AddAsync(User entity)
    {
        throw new NotImplementedException();
    }

    public Task<User> UpdateAsync(string id, User newEntity)
    {
        throw new NotImplementedException();
    }
}