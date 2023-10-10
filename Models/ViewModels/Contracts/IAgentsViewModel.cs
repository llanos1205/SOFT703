namespace SOFT703.Models.ViewModels.Contracts;

public interface IAgentsViewModel:IGenericViewModel<Agent>
{
    public List<Agent>? Agents { get; set; }
}