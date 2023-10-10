using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class ExchangeService:GenericBaseService<Exchange>,IExchangeService
{
    public ExchangeService(ApplicationDbContext context) : base(context)
    {
    }
}