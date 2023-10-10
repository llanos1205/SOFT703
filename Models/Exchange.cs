using SOFT703.Services.Contracts;

namespace SOFT703.Models;

public class Exchange:IEntity
{
    public string? Id { get; set; }
    public double Rate { get; set; }
    public string? AgentId { get; set; }
    public Agent? Agent { get; set; }
    public string? SenderCountryId { get; set; }
    public Country? SenderCountry { get; set; }
    public string?ReceiverCountryId { get; set; }
    public Country? ReceiverCountry { get; set; }
    public List<Transaction>? Transactions { get; set; }
}
