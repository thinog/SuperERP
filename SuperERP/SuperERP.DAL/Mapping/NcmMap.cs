using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace SuperERP.DAL.Models.Mapping
{
    public class NcmMap : EntityTypeConfiguration<Ncm>
    {
        public NcmMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Codico)
                .IsRequired()
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Ncm");
            this.Property(t => t.Id).HasColumnName("ID");
            this.Property(t => t.Codico).HasColumnName("Codico");
        }
    }
}
