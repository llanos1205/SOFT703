using Microsoft.AspNetCore.Mvc;
using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Controllers;

public class TrolleyController : Controller
{
    private readonly ITrolleyViewModel _trolleyViewModel;
    public TrolleyController(ITrolleyViewModel trolleyViewModel)
    {
        _trolleyViewModel = trolleyViewModel;
    }

    public async Task<ViewResult> Detail(string id)
    {
        await _trolleyViewModel.GetByIdAsync(id);
        return View(_trolleyViewModel);
    }
}