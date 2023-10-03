using System.ComponentModel.DataAnnotations;

namespace SOFT703.Models.ViewModels;

public class LoginViewModel
{
    
        [Required(ErrorMessage = "Please enter your email.")]
        [EmailAddress(ErrorMessage = "Invalid email format. Please enter a valid email.")]

        public string Email { get; set; }

        [Required(ErrorMessage = "Password is required.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
   
}