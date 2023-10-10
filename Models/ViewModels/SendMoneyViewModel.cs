using Microsoft.AspNetCore.Mvc.Rendering;
using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class SendMoneyViewModel : ISendMoneyViewModel
{
    public string SelectedAgentId { get; set; }
    public List<SelectListItem>? Agents { get; set; }
    public string SelectedSenderCountryId { get; set; }
    public List<SelectListItem>? SenderCountries { get; set; }
    public string SelectedReceiverCountryId { get; set; }
    public List<SelectListItem>? ReceiverCountries { get; set; }
    public double ExchangeRate { get; set; }
    public double AmountToSend { get; set; }
    public double TotalConversion { get; set; }
    

    private readonly ITransactionService _transactionService;
    private readonly IAgentService _agentService;
    private readonly IExchangeService _exchangeService;
    private readonly ICountryService _countryService;
    private readonly IUserService _userService;

    public SendMoneyViewModel(ITransactionService transactionService, IAgentService agentService,
        IExchangeService exchangeService, ICountryService countryService , IUserService userService)
    {
        _transactionService = transactionService;
        _agentService = agentService;
        _exchangeService = exchangeService;
        _countryService = countryService;
        _userService = userService;
    }

    public SendMoneyViewModel()
    {
    }

    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task GetByIdAsync(string id)
    {
        throw new NotImplementedException();
    }

    public async Task GetAllAsync()
    {
        Agents = (await _agentService.GetAllAsync())
            .Select(a => new SelectListItem { Value = a.Id.ToString(), Text = a.Name }).ToList();
        SenderCountries = (await _countryService.GetAllAsync())
            .Select(c => new SelectListItem { Value = c.Id.ToString(), Text = c.Name }).ToList();
        ReceiverCountries = (await _countryService.GetAllAsync())
            .Select(c => new SelectListItem { Value = c.Id.ToString(), Text = c.Name }).ToList();
    }
    public async Task<Exchange> GetExchangeRate(string senderCountryId, string receiverCountryId, string agentId)
    {
        var exchange =  _exchangeService.GetExchangeRate(senderCountryId, receiverCountryId, agentId);
        return exchange;
    }

    public async Task CreateTransaction()
    {
        var exchange = await GetExchangeRate(this.SelectedSenderCountryId, this.SelectedReceiverCountryId,
            this.SelectedAgentId);
        var transaction = new Transaction
        {
            Amount = this.AmountToSend,
            ExchangeId = exchange.Id,
            TransactionDate = DateTime.Now,
            AmountConverted = this.AmountToSend * exchange.Rate,
            UserId = _userService.GetUserId()
        };
        await _transactionService.AddAsync(transaction);
    }

    public Task<Transaction> AddAsync(Transaction entity)
    {
        throw new NotImplementedException();
    }

    public Task<Transaction> UpdateAsync(string id, Transaction newEntity)
    {
        throw new NotImplementedException();
    }
}