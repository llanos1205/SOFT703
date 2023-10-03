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
    public IActionResult SendMoney(SendMoneyViewModel viewModel)
    {
        if (ModelState.IsValid)
        {
            // Process the form data, perform calculations, and save data to the database as needed.
            // You can access viewModel.SelectedAgentId, viewModel.SelectedSenderCountryId,
            // viewModel.SelectedReceiverCountryId, viewModel.AmountToSend, etc.

            // Calculate the total amount based on the exchange rate and other factors.
            double exchangeRate = viewModel.ExchangeRate; // Exchange rate from the view model
            double amountToSend = viewModel.AmountToSend; // Amount to send from the view model
            double totalConversion = exchangeRate * amountToSend;

            // Create a new Transaction entity and populate its properties
            var exchangeFound = ExchangeFound(viewModel.SelectedSenderCountryId, viewModel.SelectedReceiverCountryId,
                viewModel.SelectedAgentId);
            var transaction = new Transaction()
            {
                ExchangeId = exchangeFound.Id,
                Amount = amountToSend
            };

            // Add the transaction to the database and save changes
            _context.Transaction.Add(transaction);
            _context.SaveChanges();

            // Redirect to a success page or return a view.

            // For example, redirect to a success page
            return RedirectToAction("Success");
        }

        // If ModelState is not valid, return to the same view with validation errors.
        return View(viewModel);
    }


    public IActionResult Success()
    {
        throw new NotImplementedException();
    }
}