using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class Ordem_ServicoMap : EntityTypeConfiguration<OrdemServico>
    {
        public Ordem_ServicoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(255);

            this.Property(t => t.NumeroOs)
                .IsRequired()
                .HasMaxLength(12);

            this.Property(t => t.Equipamento_Recebido)
                .HasMaxLength(255);

            this.Property(t => t.NumeroSerie)
                .HasMaxLength(15);

            this.Property(t => t.Marca)
                .HasMaxLength(255);

            this.Property(t => t.Modelo)
                .HasMaxLength(255);

            this.Property(t => t.ObsRecebimento)
                .HasMaxLength(500);

            this.Property(t => t.ObsProblema)
                .HasMaxLength(500);

            this.Property(t => t.DescrServico)
                .HasMaxLength(500);

            this.Property(t => t.ObsInterno)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("Ordem_Servico");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.IdServico).HasColumnName("ID_Servico");
            this.Property(t => t.IdStatus).HasColumnName("ID_Status");
            this.Property(t => t.NumeroOs).HasColumnName("Numero_Os");
            this.Property(t => t.DataI_Inicio).HasColumnName("DataI_Inicio");
            this.Property(t => t.DataI_Entrega).HasColumnName("DataI_Entrega");
            this.Property(t => t.Equipamento_Recebido).HasColumnName("Equipamento_Recebido");
            this.Property(t => t.NumeroSerie).HasColumnName("NumeroSerie");
            this.Property(t => t.Marca).HasColumnName("Marca");
            this.Property(t => t.Modelo).HasColumnName("Modelo");
            this.Property(t => t.ObsRecebimento).HasColumnName("Obs_Recebimento");
            this.Property(t => t.ObsProblema).HasColumnName("Obs_Problema");
            this.Property(t => t.DescrServico).HasColumnName("Descr_Servico");
            this.Property(t => t.ObsInterno).HasColumnName("Obs_Interno");

            // Relationships
            this.HasRequired(t => t.Servico)
                .WithMany(t => t.Ordem_Servico)
                .HasForeignKey(d => d.IdServico);
            this.HasRequired(t => t.Status_Servico)
                .WithMany(t => t.Ordem_Servico)
                .HasForeignKey(d => d.IdStatus);
        }
    }
}
