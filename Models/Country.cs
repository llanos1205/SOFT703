namespace SOFT703.Models;

public class Country
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public List<Exchange> SenderExchanges { get; set; } // Exchanges where this is the sender country
    public List<Exchange> ReceiverExchanges { get; set; } // Exchanges where this is the receiver country
}