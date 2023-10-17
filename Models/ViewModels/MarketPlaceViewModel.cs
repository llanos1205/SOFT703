using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class MarketPlaceViewModel : IMarketPlaceViewModel
{
    public List<Product> Catalog { get; set; }
    public Trolley? CurrentTrolley { get; set; }
    public double Total { get; set; }


    private readonly ITrolleyService _trolleyService;
    private readonly IProductService _productService;
    private readonly IUserService _userService;

    public MarketPlaceViewModel(ITrolleyService trolleyService, IProductService productService,
        IUserService userService)
    {
        _trolleyService = trolleyService;
        _productService = productService;
        _userService = userService;
    }

    public MarketPlaceViewModel()
    {
    }

    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task GetByIdAsync(string id)
    {
        throw new NotImplementedException();
    }

    public async Task GetAllAsync()
    {
        Catalog = await _productService.GetAllAsync();
        CurrentTrolley = await _trolleyService.GetLatest(_userService.GetUserId());
    }

    public async Task AddToTrolley(string productId)
    {
        CurrentTrolley = await _trolleyService.GetLatest(_userService.GetUserId());
        await _trolleyService.AddProduct(CurrentTrolley.Id, productId);
    }

    public async Task RemoveFromTrolley(string productId)
    {
        CurrentTrolley = await _trolleyService.GetLatest(_userService.GetUserId());
        await _trolleyService.RemoveProduct(CurrentTrolley.Id, productId);
    }

    public async Task CheckOut(string trolleyId)
    {
        await _trolleyService.CheckOut(trolleyId);
    }

    public async Task GetTrolley()
    {
        CurrentTrolley = await _trolleyService.GetLatest(_userService.GetUserId());
        
    }

    public Task<Trolley> AddAsync(Trolley entity)
    {
        throw new NotImplementedException();
    }

    public Task<Trolley> UpdateAsync(string id, Trolley newEntity)
    {
        throw new NotImplementedException();
    }
}