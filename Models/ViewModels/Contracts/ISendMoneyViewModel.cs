using Microsoft.AspNetCore.Mvc.Rendering;

namespace SOFT703.Models.ViewModels.Contracts;

public interface ISendMoneyViewModel: IGenericViewModel<Transaction>
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
    public Task<Exchange> GetExchangeRate(string senderCountryId, string receiverCountryId,string agentId);
    public Task CreateTransaction();
}