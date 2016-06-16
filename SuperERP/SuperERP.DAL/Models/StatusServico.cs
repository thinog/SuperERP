using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class StatusServico
    {
        public StatusServico()
        {
            this.Ordem_Servico = new List<OrdemServico>();
        }

        public int ID { get; set; }
        public string Nome { get; set; }
        public virtual ICollection<OrdemServico> Ordem_Servico { get; set; }
    }
}
