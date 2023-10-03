using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;

namespace SOFT703.Controllers;

public class SendMoneyController : Controller
{
    // GET
    private readonly ApplicationDbContext _context;

    public SendMoneyController(ApplicationDbContext context)
    {
        _context = context;
    }
    public IActionResult Index()
    {
        return View();
    }
    [Authorize]
    public IActionResult SendMoney()
    {
        var viewModel = new SendMoneyViewModel()
        {
            Agents = _context.Agent.ToList()
                .Select(a => new SelectListItem { Value = a.Id.ToString(), Text = a.Name })
                .ToList(),
            
            SenderCountries = _context.Country.ToList()
                .Select(c => new SelectListItem { Value = c.Id.ToString(), Text = c.Name })
                .ToList(),
            ReceiverCountries = _context.Country.ToList()
                .Select(c => new SelectListItem { Value = c.Id.ToString(), Text = c.Name })
                .ToList()
        };

        return View(viewModel);
    }

    public Exchange ExchangeFound(int senderCountryId, int receiverCountryId, int agentId)
    {
        Exchange exchangeFound = _context.Exchange.FirstOrDefault(x =>
            x.SenderCountryId == senderCountryId &&
            x.ReceiverCountryId == receiverCountryId &&
            x.AgentId == agentId) ?? new Exchange{ Rate = 1.00};
        return exchangeFound;
    }
    [HttpGet]
    public IActionResult GetExchangeRate(int senderCountryId, int receiverCountryId, int agentId)
    {
        // Here, you would implement logic to retrieve the Exchange Rate
        // based on senderCountryId, receiverCountryId, and agentId.
    
        // Example: Retrieve the Exchange Rate (replace this with your actual logic)
        
        
        double exchangeRate = this.ExchangeFound( senderCountryId,  receiverCountryId, agentId)?.Rate ?? 1.00; // Default to 1.00 if no exchange rate found

        // Return the Exchange Rate as JSON
        return Json(new { exchangeRate });
    }
    [HttpPost]
    [ValidateAntiForgeryToken]
    [Authorize]
    public IActionResult SendMoney(SendMoneyViewModel viewModel)
    {
        if (ModelState.IsValid)
        {
            // Validate the model and perform necessary checks

            // Find the exchange that matches the combo boxes of countries and agent
            Exchange exchange = _context.Exchange.FirstOrDefault(x =>
                x.SenderCountryId == viewModel.SelectedSenderCountryId &&
                x.ReceiverCountryId == viewModel.SelectedReceiverCountryId &&
                x.AgentId == viewModel.SelectedAgentId);

            if (exchange != null)
            {
                // Create a new transaction
                var total = viewModel.AmountToSend * exchange.Rate;
                var transaction = new Transaction
                {
                    Amount = viewModel.AmountToSend,
                    AmountConverted = total,
                    UserId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value, // Get the user's ID
                    ExchangeId = exchange.Id,
                    TransactionDate = DateTime.Now 
                };

                // Save the transaction to the database
                _context.Transaction.Add(transaction);
                _context.SaveChanges();

                // Redirect to a success page or return a view
                // You can also display a success message
                return SendMoney();// Replace "Success" with your success page/action
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Exchange rate not found for the selected countries and agent.");
            }
        }

        // If ModelState is not valid or exchange rate is not found, return to the same view with validation errors
        return View(viewModel);
    }

}