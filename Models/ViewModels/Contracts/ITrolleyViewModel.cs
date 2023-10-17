namespace SOFT703.Models.ViewModels.Contracts;

public interface ITrolleyViewModel:IGenericViewModel<Trolley>
{
    public Trolley Trolley { get; set; }
    public List<Trolley> Trolleys { get; set; }
}