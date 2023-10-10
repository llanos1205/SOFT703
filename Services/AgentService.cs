using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class AgentService: GenericBaseService<Agent>, IAgentService
{
    public AgentService(ApplicationDbContext context) : base(context)
    {
    }
}