namespace SOFT703.Models;

public class Exchange
{
    public int Id { get; set; }
    public double Rate { get; set; }
    public int AgentId { get; set; }
    public Agent Agent { get; set; }
    public int SenderCountryId { get; set; }
    public Country SenderCountry { get; set; }
    public int ReceiverCountryId { get; set; }
    public Country ReceiverCountry { get; set; }
    public List<Transaction> Transactions { get; set; }
}
