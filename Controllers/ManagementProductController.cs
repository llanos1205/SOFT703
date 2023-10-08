using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SOFT703.Data;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class ManagementProductController : Controller
{
    private readonly ApplicationDbContext _context;

    public ManagementProductController(ApplicationDbContext context)
    {
        _context = context;
    }
    // GET
    public IActionResult Index()
    {
        var vm = new ManagementProductViewModel();
        vm.Products = _context.Product.ToList();
        return View(vm);
    }

    public IActionResult Edit(int id)
    {
        throw new NotImplementedException();
    }
    public IActionResult Add()
    {
        var vm = new ManagementProductViewModel();
        return View(vm);
    }
    
    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]
    public IActionResult Add(ManagementProductViewModel vm)
    {
        _context.Product.Add(vm.Product);
        return RedirectToAction("Index");
    }
    public IActionResult Delete(int id)
    {
        throw new NotImplementedException();
    }
    public IActionResult Detail(int id)
    {
        throw new NotImplementedException();
    }
    
}