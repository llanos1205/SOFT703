using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Controllers;


//Por mas que no sea una api, los endpoints deberían ser sustantivos en plural
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


    //Lo mismo evitemos los if anidados, como este metodo es un update tu metodo deberia ser un put o patch
    // usualemente cuando actualizas algo le mandas el id por la ruta y los datos a actualizar por el body, post no se usa para actualizar
    //el metodo puede ser asi

    [HttpPut("products/{id}")]
    public async Task<IActionResult> Edit(int id, [FromBody] object product)
    {
        //Y aqui hacer la magia


    }
    
    [HttpPost]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Edit(string id, ManagementProductViewModel vm)
    {
        //Podes utilizar un if simplificado
        if (id != vm.Product.Id)    return NotFound(); 
        

        if (!ModelState.IsValid)
        {
           return View(vm);
        }

        try
        {
            await _vm.UpdateAsync(id, vm.Product);
            return RedirectToAction("Index");
        }
        //Para mas adelante es bueno controlar el tipo de excepciones de manera especifica
        catch (DbUpdateConcurrencyException)
        {
            ModelState.AddModelError(string.Empty, "Concurrency error occurred.");
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