using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class ProdutoMap : EntityTypeConfiguration<Produto>
    {
        public ProdutoMap()
        {
            // Primary Key
            HasKey(t => t.ID);

            // Properties
            Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(255);

            Property(t => t.ean)
                .HasMaxLength(20);

            // Table & Column Mappings
            ToTable("Produto");
            Property(t => t.ID).HasColumnName("ID");
            Property(t => t.ID_Empresa).HasColumnName("ID_Empresa");
            Property(t => t.ID_Categoria).HasColumnName("ID_Categoria");
            Property(t => t.ID_Ncm).HasColumnName("ID_Ncm");
            Property(t => t.ID_Unidade_Medida).HasColumnName("ID_Unidade_Medida");
            Property(t => t.ICMS).HasColumnName("ICMS");
            Property(t => t.IPI).HasColumnName("IPI");
            Property(t => t.IVA).HasColumnName("IVA");
            Property(t => t.ST).HasColumnName("ST");
            Property(t => t.PIS).HasColumnName("PIS");
            Property(t => t.COFINS).HasColumnName("COFINS");
            Property(t => t.Nome).HasColumnName("Nome");
            Property(t => t.Codigo_Cliente).HasColumnName("Codigo_Cliente");
            Property(t => t.Codigo_Barras).HasColumnName("Codigo_Barras");
            Property(t => t.Valor_Venda).HasColumnName("Valor_Venda");
            Property(t => t.Estoque).HasColumnName("Estoque");
            Property(t => t.EstoqueMax).HasColumnName("EstoqueMax");
            Property(t => t.EstoqueMin).HasColumnName("EstoqueMin");
            Property(t => t.Peso_Liquido).HasColumnName("Peso_Liquido");
            Property(t => t.Peso_Bruto).HasColumnName("Peso_Bruto");
            Property(t => t.ean).HasColumnName("ean");

            // Relationships
            HasRequired(t => t.Categoria)
                .WithMany(t => t.Produtos)
                .HasForeignKey(d => d.ID_Categoria);
            HasRequired(t => t.Empresa)
                .WithMany(t => t.Produtos)
                .HasForeignKey(d => d.ID_Empresa);
            HasOptional(t => t.Ncm)
                .WithMany(t => t.Produtos)
                .HasForeignKey(d => d.ID_Ncm);
            HasOptional(t => t.Unidade_Medida)
                .WithMany(t => t.Produtoes)
                .HasForeignKey(d => d.ID_Unidade_Medida);

        }
    }
}