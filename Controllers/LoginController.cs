using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Controllers;

public class LoginController : Controller
{
    private readonly UserManager<User> _userManager;
    private readonly SignInManager<User> _signInManager;
    private readonly ApplicationDbContext _context;
    private readonly ILoginViewModel _vm;
    private readonly IUserDetailViewModel  _userDetailViewModel;

    public LoginController(ApplicationDbContext context, UserManager<User> userManager,
        SignInManager<User> signInManager, ILoginViewModel vm, IUserDetailViewModel userDetailViewModel)
    {
        _userManager = userManager;
        _signInManager = signInManager;
        _context = context;
        _vm = vm;
        _userDetailViewModel = userDetailViewModel;
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
            _vm.Email = model.Email;
            _vm.Password = model.Password;
            if (await _vm.Login())
            {
                return RedirectToAction("Index", "Home");
            }

            ModelState.AddModelError(string.Empty, "Invalid email or password. Please try again.");
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
            _vm.Password = model.Password;
            _vm.Email = model.Email;
            _vm.FirstName = model.FirstName;
            _vm.LastName = model.LastName;
            _vm.PhoneNumber = model.PhoneNumber;
            if (await _vm.SignIn())
            {
                return RedirectToAction("Index", "Home");
            }

            else
            {
                ModelState.AddModelError(string.Empty, "Invalid email or password. Please try again.");
            }
        }

        return View("SignIn", model);
    }

    public async Task<IActionResult> LogOut()
    {
        await _vm.LogOut(); 
        return RedirectToAction("Index", "Home");
    }


    public async Task<IActionResult> UserDetail(string userId)
    {
        await _userDetailViewModel.Detail(null);


       
         
       

        return View("UserDetail", _userDetailViewModel);
    }
}