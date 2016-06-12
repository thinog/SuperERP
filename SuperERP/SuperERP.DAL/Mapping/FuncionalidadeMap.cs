using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class FuncionalidadeMap : EntityTypeConfiguration<Funcionalidade>
    {
        public FuncionalidadeMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Funcionalidades");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Descricao).HasColumnName("Descricao");

            // Relationships
            this.HasMany(t => t.Perfis)
                .WithMany(t => t.Funcionalidades)
                .Map(m =>
                    {
                        m.ToTable("Funcionalidades_Perfil");
                        m.MapLeftKey("ID_Funcionalidades");
                        m.MapRightKey("ID_Perfil");
                    });


        }
    }
}
