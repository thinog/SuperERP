using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class Venda
    {
        public Venda()
        {
            this.Contrato_Venda = new List<ContratoVenda>();
            this.Parcelamentoes = new List<Parcelamento>();
            this.Venda1 = new List<Venda>();
            this.Venda_Ativos = new List<VendasAtivas>();
        }

        public int ID { get; set; }
        public int ID_Empresa { get; set; }
        public int ID_Usuario { get; set; }
        public int ID_Cliente { get; set; }
        public Nullable<int> ID_Orcamento { get; set; }
        public int ID_Status { get; set; }
        public int ID_conta { get; set; }
        public int ID_FormaPgto { get; set; }
        public int Venda_Num { get; set; }
        public System.DateTime Data_Venda { get; set; }
        public bool Contrato { get; set; }
        public double Desconto { get; set; }
        public string Observacoes { get; set; }
        public virtual ClienteFornecedor ClienteFornecedor { get; set; }
        public virtual ICollection<ContratoVenda> Contrato_Venda { get; set; }
        public virtual DadosBancarios Dados_Bancarios { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual FormaPgto Forma_Pgto { get; set; }
        public virtual ICollection<Parcelamento> Parcelamentoes { get; set; }
        public virtual StatusVenda Status_Venda { get; set; }
        public virtual Usuario Usuario { get; set; }
        public virtual ICollection<Venda> Venda1 { get; set; }
        public virtual Venda Venda2 { get; set; }
        public virtual ICollection<VendasAtivas> Venda_Ativos { get; set; }
    }
}
