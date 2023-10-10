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

    public Exchange ExchangeFound(string senderCountryId, string receiverCountryId, string agentId)
    {
        Exchange exchangeFound = _context.Exchange.FirstOrDefault(x =>
            x.SenderCountryId == senderCountryId &&
            x.ReceiverCountryId == receiverCountryId &&
            x.AgentId == agentId) ?? new Exchange { Rate = 1.00 };
        return exchangeFound;
    }

    [HttpGet]
    public IActionResult GetExchangeRate(string senderCountryId, string receiverCountryId, string agentId)
    {
        double exchangeRate = this.ExchangeFound(senderCountryId, receiverCountryId, agentId)?.Rate ?? 1.00;
        return Json(new { exchangeRate });
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    [Authorize]
    public IActionResult SendMoney(SendMoneyViewModel viewModel)
    {
        if (ModelState.IsValid)
        {
            Exchange exchange = _context.Exchange.FirstOrDefault(x =>
                x.SenderCountryId == viewModel.SelectedSenderCountryId &&
                x.ReceiverCountryId == viewModel.SelectedReceiverCountryId &&
                x.AgentId == viewModel.SelectedAgentId);

            if (exchange != null)
            {
                var total = viewModel.AmountToSend * exchange.Rate;
                var transaction = new Transaction
                {
                    Amount = viewModel.AmountToSend,
                    AmountConverted = total,
                    UserId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value,
                    ExchangeId = exchange.Id,
                    TransactionDate = DateTime.Now
                };
                _context.Transaction.Add(transaction);
                _context.SaveChanges();
                return SendMoney();
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Exchange rate not found for the selected countries and agent.");
            }
        }

        return View(viewModel);
    }
}