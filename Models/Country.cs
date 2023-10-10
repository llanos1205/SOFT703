using SOFT703.Services.Contracts;

namespace SOFT703.Models;

public class Country:IEntity
{
    public string? Id { get; set; }
    public string? Name { get; set; }
    public List<Exchange> SenderExchanges { get; set; } 
    public List<Exchange> ReceiverExchanges { get; set; } 
}