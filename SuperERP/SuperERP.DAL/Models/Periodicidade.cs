using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class Periodicidade
    {
        public Periodicidade()
        {
            ContratoVenda = new List<ContratoVenda>();
        }

        public int ID { get; set; }
        public string Nome { get; set; }
        public int Meses { get; set; }
        public virtual ICollection<ContratoVenda> ContratoVenda { get; set; }
    }
}
