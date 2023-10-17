using System.Text.Json;
using System.Text.Json.Serialization;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Controllers;

public class MarketPlaceController : Controller
{
    private readonly IMarketPlaceViewModel _marketPlaceViewModel;

    public MarketPlaceController(IMarketPlaceViewModel vm)
    {
        _marketPlaceViewModel = vm;
    }


    [Authorize]
    public async Task<IActionResult> MarketPlace()
    {
        await _marketPlaceViewModel.GetAllAsync();
        return View("MarketPlace", _marketPlaceViewModel);
    }

    [HttpGet]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> AddToTrolley(string productId)
    {
        await _marketPlaceViewModel.AddToTrolley(productId);

        // Create JsonSerializerOptions with ReferenceHandler.Preserve
        var options = new JsonSerializerOptions
        {
            ReferenceHandler = ReferenceHandler.Preserve
        };
        string trolleyJson = JsonSerializer.Serialize(_marketPlaceViewModel.CurrentTrolley, options);
        return Content(trolleyJson, "application/json");
    }

    [HttpGet]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> RemoveItem(string id)
    {
        await _marketPlaceViewModel.RemoveFromTrolley(id);
        var options = new JsonSerializerOptions
        {
            ReferenceHandler = ReferenceHandler.Preserve
        };

        // Serialize the CurrentTrolley to JSON
        string trolleyJson = JsonSerializer.Serialize(_marketPlaceViewModel.CurrentTrolley, options);
        return Content(trolleyJson, "application/json");
    }

    [HttpGet]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> CheckOut(string trolleyid)
    {
        await _marketPlaceViewModel.CheckOut(trolleyid);
        await _marketPlaceViewModel.GetTrolley();
        var options = new JsonSerializerOptions
        {
            ReferenceHandler = ReferenceHandler.Preserve
        };
        string trolleyJson = JsonSerializer.Serialize(_marketPlaceViewModel.CurrentTrolley, options);
        return Content(trolleyJson, "application/json");
    }

    [HttpGet]
    [Authorize]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Trolley()
    {
        await _marketPlaceViewModel.GetTrolley();
        var options = new JsonSerializerOptions
        {
            ReferenceHandler = ReferenceHandler.Preserve
        };
        string trolleyJson = JsonSerializer.Serialize(_marketPlaceViewModel.CurrentTrolley, options);
        return Content(trolleyJson, "application/json");
    }
}