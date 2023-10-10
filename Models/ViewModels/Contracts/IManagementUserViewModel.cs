namespace SOFT703.Models.ViewModels.Contracts;

public interface IManagementUserViewModel:IGenericViewModel<User>
{
    public List<User>? Users { get; set; }
    public User? User { get; set; }
    
}