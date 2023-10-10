using SOFT703.Models;

namespace SOFT703.Services.Contracts;

public interface IExchangeService:IBaseService<Exchange>
{
    Exchange GetExchangeRate(string senderCountryId, string receiverCountryId, string agentId);
}