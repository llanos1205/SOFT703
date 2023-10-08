using Microsoft.AspNetCore.Mvc;
using SOFT703.Data;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class AgentsController : Controller
{
    private readonly ApplicationDbContext _context;

    public AgentsController(ApplicationDbContext context)
    {
        _context = context;
    }
    // GET
    public IActionResult Index()
    {
        var vm = new AgentsViewModel();
        vm.Agents = _context.Agent.ToList();
        return View(vm);
    }
}