namespace SOFT703.Models;

public class Agent
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public List<Exchange> Exchanges { get; set; }
}