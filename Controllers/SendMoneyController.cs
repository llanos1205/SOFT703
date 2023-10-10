using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Controllers;

public class SendMoneyController : Controller
{
    private readonly ISendMoneyViewModel _sendMoneyViewModel;
    public SendMoneyController(ISendMoneyViewModel sendMoneyViewModel)
    {
        _sendMoneyViewModel = sendMoneyViewModel;
    }
    
    [Authorize]
    public async Task<IActionResult> SendMoney()
    {
        await _sendMoneyViewModel.GetAllAsync();

        return View(_sendMoneyViewModel);
    }


    [HttpGet]
    public IActionResult GetExchangeRate(string senderCountryId, string receiverCountryId, string agentId)
    {
        double exchangeRate = _sendMoneyViewModel.GetExchangeRate(senderCountryId, receiverCountryId, agentId).Result.Rate;
        return Json(new { exchangeRate });
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    [Authorize]
    public async Task<IActionResult> SendMoney(SendMoneyViewModel viewModel)
    {
        if (ModelState.IsValid)
        {
            _sendMoneyViewModel.AmountToSend = viewModel.AmountToSend;
            _sendMoneyViewModel.SelectedAgentId = viewModel.SelectedAgentId;
            _sendMoneyViewModel.SelectedSenderCountryId = viewModel.SelectedSenderCountryId;
            _sendMoneyViewModel.SelectedReceiverCountryId = viewModel.SelectedReceiverCountryId;
           //create a transaction with the current agent, countires and exchange rate
           await _sendMoneyViewModel.CreateTransaction();
        }

        return RedirectToAction("SendMoney");
    }
}