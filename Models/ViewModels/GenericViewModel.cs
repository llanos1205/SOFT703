using SOFT703.Models.ViewModels.Contracts;

namespace SOFT703.Models.ViewModels;

public class GenericViewModel<T>:IGenericViewModel<T> where T : class
{
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

    public Task<T> AddAsync(T entity)
    {
        throw new NotImplementedException();
    }

    public Task<T> UpdateAsync(string id, T newEntity)
    {
        throw new NotImplementedException();
    }
}