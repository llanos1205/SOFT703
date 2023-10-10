using Microsoft.AspNetCore.Mvc.Rendering;

namespace SOFT703.Models.ViewModels;

public class SendMoneyViewModel
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
}