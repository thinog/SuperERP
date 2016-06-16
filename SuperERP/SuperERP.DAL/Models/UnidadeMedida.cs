using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class UnidadeMedida
    {
        public UnidadeMedida()
        {
            this.Produtoes = new List<Produto>();
        }

        public int ID { get; set; }
        public string Nome { get; set; }
        public virtual ICollection<Produto> Produtoes { get; set; }
    }
}
