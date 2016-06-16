using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class CompraMap : EntityTypeConfiguration<Compra>
    {
        public CompraMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Observacoes)
                .IsRequired()
                .HasMaxLength(300);

            // Table & Column Mappings
            ToTable("Compra");
            Property(t => t.Id).HasColumnName("ID");
            Property(t => t.IdEmpresa).HasColumnName("ID_Empresa");
            Property(t => t.IdFornecedor).HasColumnName("ID_Fornecedor");
            Property(t => t.IdStatus).HasColumnName("ID_Status");
            Property(t => t.CompraNum).HasColumnName("Compra_Num");
            Property(t => t.DataCompra).HasColumnName("Data_Compra");
            Property(t => t.Desconto).HasColumnName("Desconto");
            Property(t => t.IdFormaPgto).HasColumnName("ID_FormaPgto");
            Property(t => t.Observacoes).HasColumnName("Observacoes");
            Property(t => t.Idconta).HasColumnName("ID_conta");

            // Relationships
            HasRequired(t => t.ClienteFornecedor)
                .WithMany(t => t.Compras)
                .HasForeignKey(d => d.IdFornecedor);
            HasRequired(t => t.DadosBancarios)
                .WithMany(t => t.Compras)
                .HasForeignKey(d => d.Idconta);
            HasRequired(t => t.Empresa)
                .WithMany(t => t.Compras)
                .HasForeignKey(d => d.IdEmpresa);
            HasRequired(t => t.FormaPgto)
                .WithMany(t => t.Compras)
                .HasForeignKey(d => d.IdFormaPgto);
            HasRequired(t => t.StatusVenda)
                .WithMany(t => t.Compras)
                .HasForeignKey(d => d.IdStatus);

        }
    }
}
