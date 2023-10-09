namespace SOFT703.Models;

public class Transaction
{
    public int Id { get; set; }
    public double Amount { get; set; }
    public double AmountConverted { get; set; }
    public string UserId { get; set; }
    public User User { get; set; }
    public int ExchangeId { get; set; } 
    public Exchange Exchange { get; set; }
    public DateTime TransactionDate { get; set; } 

}