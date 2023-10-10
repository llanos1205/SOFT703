using SOFT703.Services.Contracts;

namespace SOFT703.Models;

public class Transaction:IEntity
{
    public string? Id { get; set; }
    public double Amount { get; set; }
    public double AmountConverted { get; set; }
    public string? UserId { get; set; }
    public User? User { get; set; }
    public string? ExchangeId { get; set; } 
    public Exchange? Exchange { get; set; }
    public DateTime TransactionDate { get; set; } 

}