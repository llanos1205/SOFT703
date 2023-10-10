using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;
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


    public async Task<IActionResult> AddToTrolley(string productId)
    {
        await _marketPlaceViewModel.AddToTrolley(productId);
        return RedirectToAction("MarketPlace");
    }

    public async Task<IActionResult> RemoveItem(string id)
    {
        await _marketPlaceViewModel.RemoveFromTrolley(id);
        return RedirectToAction("MarketPlace");
    }

    public async Task<IActionResult> CheckOut(string trolleyid)
    {
        await _marketPlaceViewModel.CheckOut(trolleyid);
        return RedirectToAction("MarketPlace");
    }
}