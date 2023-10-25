using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using SOFT703.Models;

namespace SOFT703.Data;

public class ApplicationDbContext : IdentityDbContext<User, Role, string>
{
    public DbSet<Agent> Agent { get; set; }
    public DbSet<Country> Country { get; set; }
    public DbSet<Exchange> Exchange { get; set; }
    public DbSet<Product> Product { get; set; }
    public DbSet<Trolley> Trolley { get; set; }
    public DbSet<Transaction> Transaction { get; set; }
    public DbSet<ProductXTrolley> ProductXTrolley { get; set; }

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }


    //No hay nada de malo con esto, pero sería mejor separarlo por clases por entidad para tener mejor legibilidad
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        new ProductXTrolleyConfiguration()
            .Configure(modelBuilder.Entity<ProductXTrolley>());
       
        
        
        modelBuilder.Entity<Trolley>()
            .HasOne(t => t.User)
            .WithMany(u => u.Trolleys)
            .HasForeignKey(t => t.UserId)
            .IsRequired();
        modelBuilder.Entity<Country>()
            .HasMany(c => c.SenderExchanges)
            .WithOne(e => e.SenderCountry)
            .HasForeignKey(e => e.SenderCountryId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<Exchange>()
            .HasOne(e => e.SenderCountry)
            .WithMany(c => c.SenderExchanges)
            .HasForeignKey(e => e.SenderCountryId)
            .OnDelete(DeleteBehavior.Restrict); 

        modelBuilder.Entity<Country>()
            .HasMany(c => c.ReceiverExchanges)
            .WithOne(e => e.ReceiverCountry)
            .HasForeignKey(e => e.ReceiverCountryId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<Exchange>()
            .HasOne(e => e.ReceiverCountry)
            .WithMany(c => c.ReceiverExchanges)
            .HasForeignKey(e => e.ReceiverCountryId)
            .OnDelete(DeleteBehavior.Restrict); 
    
        UpdateKeysConfig(modelBuilder);
        base.OnModelCreating(modelBuilder);
    }

    protected void UpdateKeysConfig(ModelBuilder modelBuilder)
    {
        foreach (var entityType in modelBuilder.Model.GetEntityTypes())
        {
            var properties = entityType.GetProperties();
            foreach (var property in properties)
            {
                if (property.ClrType == typeof(string) && property.Name == "Id")
                {
                    property.ValueGenerated = ValueGenerated.OnAdd;
                }
            }
        }
    }
}