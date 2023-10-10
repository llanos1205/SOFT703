using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Services.Contracts;

namespace SOFT703.Services;

public class TransactionService:GenericBaseService<Transaction>,ITransactionService
{
    public TransactionService(ApplicationDbContext context) : base(context)
    {
    }
}