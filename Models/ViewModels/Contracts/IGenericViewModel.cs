namespace SOFT703.Models.ViewModels.Contracts;

public interface IGenericViewModel<T> where T : class
{
    Task DeleteAsync(string id);
    Task GetByIdAsync(string id);
    Task GetAllAsync();
    Task<T> AddAsync(T entity);
    Task<T> UpdateAsync(string id, T newEntity);
    
}