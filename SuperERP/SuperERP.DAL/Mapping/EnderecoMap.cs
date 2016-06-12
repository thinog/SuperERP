using SuperERP.DAL.Models;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Mapping
{
    public class EnderecoMap : EntityTypeConfiguration<Endereco>
    {
        public EnderecoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.CEP)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Endereco1)
                .IsRequired()
                .HasMaxLength(64);

            this.Property(t => t.Numero)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Complemento)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Bairro)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Cidade)
                .IsRequired()
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Endereco");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.CEP).HasColumnName("CEP");
            this.Property(t => t.IdPessoaJuridica).HasColumnName("ID_PessoaJuridica");
            this.Property(t => t.IdPessoaFisica).HasColumnName("ID_PessoaFisica");
            this.Property(t => t.Endereco1).HasColumnName("Endereco");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Complemento).HasColumnName("Complemento");
            this.Property(t => t.Bairro).HasColumnName("Bairro");
            this.Property(t => t.Cidade).HasColumnName("Cidade");

            // Relationships
            this.HasOptional(t => t.PessoaFisica)
                .WithMany(t => t.Enderecos)
                .HasForeignKey(d => d.IdPessoaFisica);
            this.HasOptional(t => t.PessoaJuridica)
                .WithMany(t => t.Enderecoes)
                .HasForeignKey(d => d.IdPessoaJuridica);

        }
    }
}
