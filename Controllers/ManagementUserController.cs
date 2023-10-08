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
    public IActionResult Edit(int id)
    {
        throw new NotImplementedException();
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