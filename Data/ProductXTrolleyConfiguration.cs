using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SOFT703.Models;
using System.Reflection.Emit;

namespace SOFT703.Data
{
    public class ProductXTrolleyConfiguration  : IEntityTypeConfiguration<ProductXTrolley>
    {

        

        public void Configure(EntityTypeBuilder<ProductXTrolley> builder)
        {
            builder
           .HasKey(pt => new { pt.ProductId, pt.TrolleyId });

            builder
                .HasOne(pt => pt.Product)
                .WithMany(p => p.ProductXTrolleys)
                .HasForeignKey(pt => pt.ProductId);

            builder
                .HasOne(pt => pt.Trolley)
                .WithMany(t => t.ProductXTrolleys)
                .HasForeignKey(pt => pt.TrolleyId);
        }
    }

}



