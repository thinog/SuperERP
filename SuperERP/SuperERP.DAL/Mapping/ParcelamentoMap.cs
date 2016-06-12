using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class ParcelamentoMap : EntityTypeConfiguration<Parcelamento>
    {
        public ParcelamentoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("Parcelamento");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.IdCompra).HasColumnName("ID_Compra");
            this.Property(t => t.IdVenda).HasColumnName("ID_Venda");
            this.Property(t => t.NumeroParcela).HasColumnName("Numero_Parcela");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Pago).HasColumnName("Pago");
            this.Property(t => t.Data_Pagamento).HasColumnName("Data_Pagamento");
            this.Property(t => t.Data_Pago).HasColumnName("Data_Pago");

            // Relationships
            this.HasRequired(t => t.Compra)
                .WithMany(t => t.Parcelamentos)
                .HasForeignKey(d => d.IdCompra);
            this.HasRequired(t => t.Venda)
                .WithMany(t => t.Parcelamentoes)
                .HasForeignKey(d => d.IdVenda);

        }
    }
}
