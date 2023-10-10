using SOFT703.Services.Contracts;

namespace SOFT703.Models;

public class Agent:IEntity
{
    public string? Id { get; set; }
    public string? Name { get; set; }
    public string? Address { get; set; }
    public List<Exchange> Exchanges { get; set; }
}