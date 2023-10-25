using Microsoft.AspNetCore.Mvc;
using SOFT703.Data;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Controllers;

public class AgentsController : Controller
{
    //El nombre de tus variables tienen que ser descriptivas
    //_agentsViewModel
    private readonly IAgentsViewModel _vm;

    public AgentsController(IAgentsViewModel vm)
    {
        _vm = vm;
    }

    public async Task<IActionResult> Index()
    {
        await _vm.GetAllAsync();
        return View(_vm);
    }
}