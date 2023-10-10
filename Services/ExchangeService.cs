using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class ExchangeService:GenericBaseService<Exchange>,IExchangeService
{
    public ExchangeService(ApplicationDbContext context) : base(context)
    {
    }

    public Exchange GetExchangeRate(string senderCountryId, string receiverCountryId, string agentId)
    {
        Exchange exchangeFound = _context.Exchange.FirstOrDefault(x =>
            x.SenderCountryId == senderCountryId &&
            x.ReceiverCountryId == receiverCountryId &&
            x.AgentId == agentId) ?? new Exchange { Rate = 1.00 };
        return exchangeFound;
    }
}