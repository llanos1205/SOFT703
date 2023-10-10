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
    private readonly UserManager<User> _userManager;
    private readonly ApplicationDbContext _context;
    private readonly ILoginViewModel _loginViewModel;
    public ManagementUserController(ILoginViewModel vm,ApplicationDbContext context,UserManager<User> userManager)
    {
        _context = context;
        _userManager = userManager;
        _loginViewModel = vm;
    }

    // GET
    public IActionResult Index()
    {
        var vm = new ManagementUserViewModel();
        vm.Users = _context.Users.ToList();
        vm.Users = vm.Users.Where(u => u.Id != User.FindFirst(ClaimTypes.NameIdentifier)?.Value).ToList();
        return View(vm);
    }

    public IActionResult Detail(string id)
    {
        var user = _context.Users.FirstOrDefault(u => u.Id == id);
        if (user == null)
        {
            return NotFound();
        }

        var transactions = _context.Transaction
            .Where(t => t.UserId == id)
            .Include(t => t.Exchange)
            .ThenInclude(e => e.SenderCountry) // Include sender country
            .Include(t => t.Exchange)
            .ThenInclude(e => e.ReceiverCountry) // Include receiver country
            .ToList();


        // var viewModel = new UserDetailViewModel
        // {
        //     User = user,
        //     Transactions = transactions,
        //     Trolleys = _context.Trolley.Where(t => t.UserId == id).ToList()
        // };

        return View(null);
    }
 
    public IActionResult Edit(string id)
    {
        var vm = new ManagementUserViewModel();
        vm.User = _context.Users.FirstOrDefault(u => u.Id == id);
        return View(vm);
    }
    
    
    [HttpPost]
    [Authorize]
    
    [ValidateAntiForgeryToken]
    public IActionResult Edit(ManagementUserViewModel vm)
    {
        if (!User.IsInRole("Staff"))
        {
            ModelState.AddModelError(string.Empty, "You are not authorized to perform this action");
            return View(vm);
        }
        var user= _context.Users.FirstOrDefault(u => u.Id == vm.User.Id);
        if (user == null)
        {
            return NotFound();
        }
        else
        {
            user.FirstName = vm.User.LastName;
            user.FirstName = vm.User.FirstName;
            user.PhoneNumber = vm.User.PhoneNumber;
            user. Email = vm.User.Email;
            _context.SaveChanges();
        }

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
         
        var user = new User
        {
            FirstName = vm.FirstName,
            LastName = vm.LastName,
            Email = vm.Email,
            PhoneNumber = vm.PhoneNumber,
            UserName = vm.Email
        };
        var defaultPass= "Password1!";
        var result= await _userManager.CreateAsync(user, defaultPass);
        if (result.Succeeded)
        {
            return RedirectToAction("Index");
        }
        else
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError(string.Empty, error.Description);
            }
        }

        return RedirectToAction("Add");
    }
    public IActionResult Delete(string id)
    {
        var user = _context.Users.FirstOrDefault(u => u.Id == id);
        if (user == null)
        {
            return NotFound();
        }
        else if (user.Id == User.FindFirst(ClaimTypes.NameIdentifier)?.Value)
        {
            ModelState.AddModelError(string.Empty, "Cant delete yourself");
        }
        else
        {
            _context.Users.Remove(user);
            _context.SaveChanges();
        }

        return RedirectToAction("Index");
    }
}