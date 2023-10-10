using System.ComponentModel.DataAnnotations.Schema;

namespace SOFT703.Services.Contracts;

public interface IEntity
{
    
    public string Id { get; set; }
}