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
    //Cambiar el nombre de tus variables igual
    private readonly ILoginViewModel _loginVM;
    private readonly IUserDetailViewModel  _userDetailViewModel;

    public LoginController( ILoginViewModel vm, IUserDetailViewModel userDetailViewModel)
    {
        _loginVM = vm;
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
            _loginVM.Email = model.Email;
            _loginVM.Password = model.Password;
            if (await _loginVM.Login())
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

        //Podes invertir tu condicion para no tener muchos if anidados. Es buena practica evitar eso
        
        if(!ModelState.IsValid) return View("SignIn", model);
        
        _loginVM.Password = model.Password;
        _loginVM.Email = model.Email;
        _loginVM.FirstName = model.FirstName;
        _loginVM.LastName = model.LastName;
        _loginVM.PhoneNumber = model.PhoneNumber;

        if (await _loginVM.SignIn()) return RedirectToAction("Index", "Home");
        
        ModelState.AddModelError(string.Empty, "Invalid email or password. Please try again.");
        
        return View("SignIn", model);
    }

    public async Task<IActionResult> LogOut()
    {
        await _loginVM.LogOut(); 
        return RedirectToAction("Index", "Home");
    }


    public async Task<IActionResult> UserDetail(string userId)
    {
        await _userDetailViewModel.Detail(null);
        return View("UserDetail", _userDetailViewModel);
    }
}