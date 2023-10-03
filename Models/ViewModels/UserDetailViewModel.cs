namespace SOFT703.Models.ViewModels;

public class UserDetailViewModel
{
    public User User { get; set; }
    public List<Transaction> Transactions { get; set; }
    public List<Trolley> Trolleys { get; set; }
}
