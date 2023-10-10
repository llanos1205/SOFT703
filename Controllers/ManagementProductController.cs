using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Controllers;

public class ManagementProductController : Controller
{
    private readonly IManagementProductViewModel _vm;

    public ManagementProductController(IManagementProductViewModel vm)
    {
        _vm = vm;
    }

    // GET
    public async Task<IActionResult> Index()
    {
        await _vm.GetAllAsync();
        return View(_vm);
    }

    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Edit(string id, ManagementProductViewModel vm)
    {
        if (id != vm.Product.Id)
        {
            return NotFound(); // Product not found
        }

        if (ModelState.IsValid)
        {
            try
            {
                await _vm.UpdateAsync(id, vm.Product);
                return RedirectToAction("Index");
            }
            catch (DbUpdateConcurrencyException)
            {
                ModelState.AddModelError(string.Empty, "Concurrency error occurred.");
            }
        }

        return View(vm);
    }

    public async Task<IActionResult> Edit(string id)
    {
        await _vm.GetByIdAsync(id);
        return View(_vm);
    }

    public IActionResult Add()
    {
        return View(_vm);
    }

    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Add(ManagementProductViewModel vm)
    {
        await _vm.AddAsync(vm.Product);
        return RedirectToAction("Index");
    }

    public async Task<IActionResult> Delete(string id)
    {
        await _vm.DeleteAsync(id);
        return RedirectToAction("Index");
    }
}