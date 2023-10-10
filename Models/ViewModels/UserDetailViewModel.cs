using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class UserDetailViewModel : IUserDetailViewModel
{
    public User? User { get; set; }
    public List<Transaction> Transactions { get; set; }
    public List<Trolley> Trolleys { get; set; }

    private readonly IUserService _userService;

    public UserDetailViewModel(IUserService userService)
    {
        _userService = userService;
    }
    public UserDetailViewModel(){}

    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task GetByIdAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task GetAllAsync()
    {
        throw new NotImplementedException();
    }

    public Task<User> AddAsync(User entity)
    {
        throw new NotImplementedException();
    }

    public Task<User> UpdateAsync(string id, User newEntity)
    {
        throw new NotImplementedException();
    }

    public async Task Detail(string? Id)
    {
        this.User = await _userService.GetUserTrolleyTransaction(Id);
        this.Trolleys = User.Trolleys;
        this.Transactions = User.Transactions;
    }
}