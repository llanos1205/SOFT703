namespace SOFT703.Services.Contracts;

public interface IBaseService<T> where T : IEntity
{
    
    Task<T> GetByIdAsync(string id);
    Task<List<T>> GetAllAsync() ;
    Task<T> AddAsync(T entity);
    Task<T> UpdateAsync(T entity);
    Task<T> DeleteAsync(T entity);
    Task<T> DeleteAsync(string id);
    Task<bool> ExistsAsync(string id);
    Task<int> CountAsync();
    Task<int> SaveChangesAsync();
    
}