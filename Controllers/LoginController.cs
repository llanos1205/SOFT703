using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class LoginController : Controller
{
    private readonly UserManager<User> _userManager;
    private readonly SignInManager<User> _signInManager;
    private readonly ApplicationDbContext _context;


    public LoginController(ApplicationDbContext context,UserManager<User> userManager, SignInManager<User> signInManager)
    {
        _userManager = userManager;
        _signInManager = signInManager;
        _context = context;
    }
    [HttpGet]
    [AllowAnonymous]
    public IActionResult Login()
    {
        return View();
    }

    [HttpPost]
    [AllowAnonymous]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Login(LoginViewModel model)
    {
        if (ModelState.IsValid)
        {
            var user = await _userManager.FindByEmailAsync(model.Email);

            if (user != null && await _userManager.CheckPasswordAsync(user, model.Password))
            {
                await _signInManager.SignInAsync(user, isPersistent: false);
                return RedirectToAction("Index", "Home"); // Redirect to a secure page upon successful login
            }

            ModelState.AddModelError(string.Empty, "Invalid email or password. Please try again."); // Add the error message
        }

        return View(model);
    }
    public IActionResult SignIn()
    {
        return View("SignIn");
    }
    [HttpPost]
    [AllowAnonymous]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> SignIn(LoginViewModel model)
    {
        if (ModelState.IsValid)
        {
            // Create a new user
            var user = new User()
            {
                Email = model.Email,
                FirstName = model.FirstName,
                LastName = model.LastName,
                PhoneNumber = model.PhoneNumber,
                EmailConfirmed = true,
                UserName = model.Email
            };

            // Use UserManager to create the user
            var result = await _userManager.CreateAsync(user, model.Password);

            if (result.Succeeded)
            {
                // If user creation is successful, sign the user in
                await _signInManager.SignInAsync(user, isPersistent: false);
            
                // Redirect to a success page or home page
                return RedirectToAction("Index", "Home");
            }
            else
            {
                // If user creation fails, add errors to ModelState
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }
        }

        // If ModelState is not valid or user creation fails, return to the login view with validation errors
        return View("SignIn", model);
    }

    public IActionResult LogOut()
    {
        _signInManager.SignOutAsync();
        return RedirectToAction("Index", "Home");
    }

 
    public IActionResult UserDetail(string userId)
    {
        var user = _context.Users.FirstOrDefault(u => u.Id == userId);
        if (user == null)
        {
            return NotFound();
        }

        var transactions = _context.Transaction.Where(t => t.UserId == userId).ToList();
        var trolleys = _context.Trolley.Where(t => t.UserId == userId).ToList();

        var viewModel = new UserDetailViewModel
        {
            User = user,
            Transactions = transactions,
            Trolleys = trolleys
        };

        return View("UserDetail",viewModel);
    }

}