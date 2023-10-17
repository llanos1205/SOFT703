using System.Runtime.Intrinsics.X86;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Controllers;

public class ManagementUserController : Controller
{
    private readonly IUserDetailViewModel _userDetailViewModel;
    private readonly IManagementUserViewModel _managementUserViewModel;
    private readonly ILoginViewModel _loginViewModel;

    public ManagementUserController(IUserDetailViewModel vm, IManagementUserViewModel managementUserViewModel,
        ILoginViewModel loginViewModel)
    {
        _managementUserViewModel = managementUserViewModel;
        _userDetailViewModel = vm;
        _loginViewModel = loginViewModel;
    }

    public async Task<IActionResult> Index()
    {
        await _managementUserViewModel.GetAllAsync();
        return View(_managementUserViewModel);
    }

    public async Task<IActionResult> Detail(string id)
    {
        await _userDetailViewModel.Detail(id);
        return View(_userDetailViewModel);
    }

    public async Task<IActionResult> Edit(string id)
    {
        await _managementUserViewModel.GetByIdAsync(id);
        return View(_managementUserViewModel);
    }


    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Edit(ManagementUserViewModel vm)
    {
        if (!User.IsInRole("staff"))
        {
            ModelState.AddModelError(string.Empty, "You are not authorized to perform this action");
            return View(vm);
        }


        _managementUserViewModel.User = new User()
        {
            Email = vm.User.Email,
            FirstName = vm.User.FirstName,
            LastName = vm.User.LastName,
            PhoneNumber = vm.User.PhoneNumber,
        };
        await _managementUserViewModel.UpdateAsync(vm.User.Id, _managementUserViewModel.User);
        return RedirectToAction("Index");
    }

    public IActionResult Add()
    {
        return View(_loginViewModel);
    }

    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Add(LoginViewModel vm)
    {
        _loginViewModel.Email = vm.Email;
        _loginViewModel.FirstName = vm.FirstName;
        _loginViewModel.LastName = vm.LastName;
        _loginViewModel.PhoneNumber = vm.PhoneNumber;
        _loginViewModel.Password = "Password1!";
        await _loginViewModel.AddUser("client");
        return RedirectToAction("Index");
    }

    public async Task<IActionResult> Delete(string id)
    {
        await _managementUserViewModel.DeleteAsync(id);

        return RedirectToAction("Index");
    }
}