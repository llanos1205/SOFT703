using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SOFT703.Models;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class LoginController : Controller
{
    private readonly UserManager<User> _userManager;
    private readonly SignInManager<User> _signInManager;

    public LoginController(UserManager<User> userManager, SignInManager<User> signInManager)
    {
        _userManager = userManager;
        _signInManager = signInManager;
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
    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> SignIn(LoginViewModel model)
    {
        if (ModelState.IsValid)
        {
            var user = await _userManager.FindByEmailAsync(model.Email);

            if (user != null && await _userManager.CheckPasswordAsync(user, model.Password))
            {
                // Sign in the user
                await _signInManager.SignInAsync(user, isPersistent: false);

                // Redirect to a success page or return a JSON response
                return RedirectToAction("Index", "Home");
            }

            // If login fails, add an error message to ModelState
            ModelState.AddModelError(string.Empty, "Invalid email or password.");
        }

        // If ModelState is not valid, return to the login view with validation errors
        return View("SignIn", model);
    }
}