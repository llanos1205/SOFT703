using System.Runtime.Intrinsics.X86;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class ManagementUserController : Controller
{
    private readonly ApplicationDbContext _context;

    public ManagementUserController(ApplicationDbContext context)
    {
        _context = context;
    }

    // GET
    public IActionResult Index()
    {
        var vm = new ManagementUserViewModel();
        vm.Users = _context.Users.ToList();
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


        var viewModel = new UserDetailViewModel
        {
            User = user,
            Transactions = transactions,
            Trolleys = _context.Trolley.Where(t => t.UserId == id).ToList()
        };

        return View(viewModel);
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
 
    public IActionResult Add(int id)
    {
        throw new NotImplementedException();
    }
    public IActionResult Delete(int id)
    {
        throw new NotImplementedException();
    }
}