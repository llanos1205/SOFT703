using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class CountryService:GenericBaseService<Country>,ICountryService
{
    public CountryService(ApplicationDbContext context) : base(context)
    {
    }
}