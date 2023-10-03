using Microsoft.AspNetCore.Mvc.Rendering;

namespace SOFT703.Models.ViewModels;

public class SendMoneyViewModel
{
    public int SelectedAgentId { get; set; }
    public List<SelectListItem> Agents { get; set; }
    public int SelectedSenderCountryId { get; set; }
    public List<SelectListItem> SenderCountries { get; set; }
    public int SelectedReceiverCountryId { get; set; }
    public List<SelectListItem> ReceiverCountries { get; set; }
    public double ExchangeRate { get; set; }
    public double AmountToSend { get; set; }
    public double TotalConversion { get; set; }
}