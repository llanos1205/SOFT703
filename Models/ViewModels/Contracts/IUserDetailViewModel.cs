namespace SOFT703.Models.ViewModels.Contracts;

public interface IUserDetailViewModel: IGenericViewModel<User>
{
    public User? User { get; set; }
    public List<Transaction> Transactions { get; set; }
    public List<Trolley> Trolleys { get; set; }
    public Task Detail(string? Id);
}