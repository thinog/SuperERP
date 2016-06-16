using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class Ncm
    {
        public Ncm()
        {
            Produtos = new List<Produto>();
        }

        public int Id { get; set; }
        public string Codico { get; set; }
        public virtual ICollection<Produto> Produtos { get; set; }
    }
}