using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class Servico
    {
        public Servico()
        {
            this.Compra_Ativos = new List<CompraAtiva>();
            this.Ordem_Servico = new List<OrdemServico>();
            this.Venda_Ativos = new List<VendasAtivas>();
        }

        public int ID { get; set; }
        public int ID_Cliente { get; set; }
        public int ID_Empresa { get; set; }
        public int ID_Categoria_Servico { get; set; }
        public string Nome { get; set; }
        public double ISS { get; set; }
        public double ICMS { get; set; }
        public double IVA { get; set; }
        public double ST { get; set; }
        public double PIS { get; set; }
        public double COFINS { get; set; }
        public Nullable<double> valor { get; set; }
        public Nullable<double> custo { get; set; }
        public virtual Categoria Categoria { get; set; }
        public virtual ClienteFornecedor ClienteFornecedor { get; set; }
        public virtual ICollection<CompraAtiva> Compra_Ativos { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual ICollection<OrdemServico> Ordem_Servico { get; set; }
        public virtual ICollection<VendasAtivas> Venda_Ativos { get; set; }
    }
}
