using Microsoft.AspNetCore.Mvc;

namespace SOFT703.Controllers;

public class ManagementController : Controller
{
    // GET
    public IActionResult Index()
    {
        return View();
    }
}