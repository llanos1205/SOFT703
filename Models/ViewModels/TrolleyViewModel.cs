using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class TrolleyViewModel:ITrolleyViewModel
{
    private readonly ITrolleyService _trolleyService;
    public TrolleyViewModel(ITrolleyService trolleyService)
    {
        _trolleyService = trolleyService;
    }
    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
    }

    public async Task GetByIdAsync(string id)
    {
        Trolley = await _trolleyService.GetExtendedTrolley(id);
        if (Trolley.ProductXTrolleys == null)
        {
            Trolley.ProductXTrolleys = new List<ProductXTrolley>();
        }
    }

    public Task GetAllAsync()
    {
        throw new NotImplementedException();
    }

    public Task<Trolley> AddAsync(Trolley entity)
    {
        throw new NotImplementedException();
    }

    public Task<Trolley> UpdateAsync(string id, Trolley newEntity)
    {
        throw new NotImplementedException();
    }

    public Trolley Trolley { get; set; }
    public List<Trolley> Trolleys { get; set; }
}