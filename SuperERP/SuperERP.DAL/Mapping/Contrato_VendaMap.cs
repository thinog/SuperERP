using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class Contrato_VendaMap : EntityTypeConfiguration<ContratoVenda>
    {
        public Contrato_VendaMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("Contrato_Venda");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.IdPeriodicidade).HasColumnName("ID_Periodicidade");
            this.Property(t => t.IdVenda).HasColumnName("ID_Venda");
            this.Property(t => t.DiaCobranca).HasColumnName("Dia_Cobranca");
            this.Property(t => t.DataInicio).HasColumnName("Data_Inicio");
            this.Property(t => t.DataFim).HasColumnName("Data_Fim");
            this.Property(t => t.Juros).HasColumnName("Juros");
            this.Property(t => t.Ocorrencias).HasColumnName("Ocorrencias");

            // Relationships
            this.HasRequired(t => t.Periodicidade)
                .WithMany(t => t.ContratoVenda)
                .HasForeignKey(d => d.IdPeriodicidade);
            this.HasRequired(t => t.Venda)
                .WithMany(t => t.Contrato_Venda)
                .HasForeignKey(d => d.IdVenda);

        }
    }
}
