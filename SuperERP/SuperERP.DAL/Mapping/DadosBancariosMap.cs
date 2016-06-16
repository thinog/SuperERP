using SuperERP.DAL.Models;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Mapping
{
    public class DadosBancariosMap : EntityTypeConfiguration<DadosBancarios>
    {
        public DadosBancariosMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Banco)
                .IsRequired()
                .HasMaxLength(40);

            this.Property(t => t.ContaCorrente)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Agencia)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("DadosBancarios");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.ContaCorrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.IdPessoaJuridica).HasColumnName("ID_PessoaJuridica");
            this.Property(t => t.IdPessoaFisica).HasColumnName("ID_PessoaFisica");

            // Relationships
            this.HasOptional(t => t.PessoaFisica)
                .WithMany(t => t.DadosBancarios)
                .HasForeignKey(d => d.IdPessoaFisica);
            this.HasOptional(t => t.PessoaJuridica)
                .WithMany(t => t.DadosBancarios)
                .HasForeignKey(d => d.IdPessoaJuridica);

        }
    }
}
