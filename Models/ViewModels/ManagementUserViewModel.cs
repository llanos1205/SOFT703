using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class ManagementUserViewModel:IManagementUserViewModel
{
    public List<User>? Users { get; set; }
    public User? User { get; set; }
    
    private readonly IUserService _userService;
    public ManagementUserViewModel(IUserService userService)
    {
        _userService = userService;
    }
    public ManagementUserViewModel(){}
    
    
    public async Task DeleteAsync(string id)
    {
        await _userService.DeleteAsync(id);
    }

    public async Task GetByIdAsync(string id)
    {
        this.User = await _userService.GetByIdAsync(id);
    }

    public async Task GetAllAsync()
    {
        Users = await _userService.GetAllAsync();
        var selfUser = Users.FirstOrDefault(x => x.Id == _userService.GetUserId());
        Users.Remove(selfUser);        
    }

    public Task<User> AddAsync(User entity)
    {
        throw new NotImplementedException();
    }

    public async Task<User> UpdateAsync(string id, User newEntity)
    {
        var foundUser = _userService.GetByIdAsync(id);
        if (foundUser == null)
        {
            throw new Exception("User not found");
        }
        foundUser.Result.Email = newEntity.Email;
        foundUser.Result.FirstName = newEntity.FirstName;
        foundUser.Result.LastName = newEntity.LastName;
        foundUser.Result.PhoneNumber = newEntity.PhoneNumber;
        return await _userService.UpdateAsync(foundUser.Result);
    }
}