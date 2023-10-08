using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class MarketPlaceController : Controller
{
    // GET
    private readonly ApplicationDbContext _context;

    public MarketPlaceController(ApplicationDbContext context)
    {
        _context = context;
    }

    [Authorize]
    public IActionResult MarketPlace()
    {
        var currentUser = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
        var currentTrolley = _context.Trolley.Include(x => x.ProductXTrolleys).ThenInclude(x => x.Product)
            .FirstOrDefault(x => x.UserId == currentUser && x.IsCurrent);
        if (currentTrolley == null)
        {
            var newTrolley = new Trolley()
            {
                UserId = currentUser,
                IsCurrent = true,
                Total = 0
            };
            var result = _context.Trolley.Add(newTrolley);
            _context.SaveChanges();
            currentTrolley = result.Entity;
        }

        var products = _context.Product.ToList();

        var mpViewModel = new MarketPlaceViewModel
        {
            Total = currentTrolley.Total,
            CurrentTrolley = currentTrolley,
            Catalog = products
         
        };
        return View("MarketPlace", mpViewModel);
    }

    [HttpPost]
    [Authorize]
    public IActionResult AddToTrolley(int productId)
    {
        // Retrieve the product with the specified productId from the database
        var product = _context.Product.Find(productId);

        if (product != null)
        {
            // Check if the user has an active trolley
            var userId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var trolley = _context.Trolley
                .Include(t => t.ProductXTrolleys) // Eager load ProductXTrolleys
                .SingleOrDefault(t => t.UserId == userId && t.IsCurrent);


            if (trolley == null)
            {
                // Create a new trolley if one doesn't exist
                trolley = new Trolley
                {
                    UserId = userId,
                    IsCurrent = true,
                };
                _context.Trolley.Add(trolley);
            }

            // Check if the product is already in the trolley
            var existingProduct =
                trolley.ProductXTrolleys.SingleOrDefault(pt => pt.ProductId == productId && pt.TrolleyId == trolley.Id);

            if (existingProduct == null)
            {
                // If not, add it to the trolley with a quantity of 1
                trolley.ProductXTrolleys.Add(new ProductXTrolley
                {
                    Product = product,
                    Quantity = 1
                });
            }
            else
            {
                // If the product is already in the trolley, increase its quantity by 1
                existingProduct.Quantity++;
            }

            // Update the total in the trolley
            trolley.Total += product.Price;

            // Save changes to the database
            _context.SaveChanges();
        }

        // Redirect back to the catalog or wherever you want
        return RedirectToAction("MarketPlace"); // Replace "Index" with your catalog view
    }
}