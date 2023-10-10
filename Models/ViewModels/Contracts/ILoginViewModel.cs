namespace SOFT703.Models.ViewModels.Contracts;

public interface ILoginViewModel:IGenericViewModel<User>
{
    public string Email { get; set; }
    public string Password { get; set; }
    public string? FirstName { get; set; }
    public string? LastName { get; set; }
    public string? PhoneNumber { get; set; }
    public  Task<bool> Login();
    public  Task LogOut();
    public  Task<bool> SignIn();

    public Task AddUser(string role);


}