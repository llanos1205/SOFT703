using SOFT703.Data;
using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services.Contracts;

namespace SOFT703.Models.ViewModels;

public class AgentsViewModel: IAgentsViewModel
{
    private readonly IAgentService _agentService;
    public AgentsViewModel(IAgentService agentService)
    {
        _agentService = agentService;
    }
    public List<Agent>? Agents { get; set; }
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
        Agents = await _agentService.GetAllAsync();
    }

    public Task<Agent> AddAsync(Agent entity)
    {
        throw new NotImplementedException();
    }

    public Task<Agent> UpdateAsync(string id, Agent newEntity)
    {
        throw new NotImplementedException();
    }
}