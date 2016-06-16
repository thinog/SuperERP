using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class Funcionalidade
    {
        public Funcionalidade()
        {
            Perfis = new List<Perfil>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public virtual ICollection<Perfil> Perfis { get; set; }
    }
}