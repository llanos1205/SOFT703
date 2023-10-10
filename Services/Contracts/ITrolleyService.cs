using SOFT703.Models;

namespace SOFT703.Services.Contracts;

public interface ITrolleyService:IBaseService<Trolley>
{
    Task<Trolley?> GetLatest(string id);
    Task<Trolley> RecalculateTotal(string id);
    Task<Trolley> AddProduct(string id, string productId);
    Task<Trolley> RemoveProduct(string id, string productId);
    Task<Trolley> CheckOut(string trolleyId);
    
}