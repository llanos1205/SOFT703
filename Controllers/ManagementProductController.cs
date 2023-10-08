using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]

    public IActionResult Edit(int id,ManagementProductViewModel vm)
    {
        if (id != vm.Product.Id)
        {
            return NotFound(); // Product not found
        }
        if (ModelState.IsValid)
        {
            try
            {
                var existingProduct = _context.Product.FirstOrDefault(p => p.Id == id);
                if (existingProduct == null)
                {
                    return NotFound(); 
                }
                existingProduct.Name = vm.Product.Name;
                existingProduct.Photo = vm.Product.Photo;
                existingProduct.Price = vm.Product.Price;
                existingProduct.Stock = vm.Product.Stock;
                _context.SaveChanges();
                return RedirectToAction("Index"); 
            }
            catch (DbUpdateConcurrencyException)
            {
                ModelState.AddModelError(string.Empty, "Concurrency error occurred.");
            }
        }
        return View(vm); 
    }
    
    public IActionResult Edit(int id)
    {
        var vm = new ManagementProductViewModel();
        vm.Product = _context.Product.FirstOrDefault(X => X.Id == id);
        return View(vm);
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
        _context.SaveChanges();
        return RedirectToAction("Index");
    }

    public IActionResult Delete(int id)
    {
        var product = _context.Product.FirstOrDefault(x => x.Id == id);
        _context.Product.Remove(product);
        _context.SaveChanges();
        return RedirectToAction("Index");
    }

    
}