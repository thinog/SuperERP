using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class Compra
    {
        public Compra()
        {
            VendasAtivas = new List<VendasAtivas>();
            CompraAtiva = new List<CompraAtiva>();
            Parcelamentos = new List<Parcelamento>();
        }

        public int Id { get; set; }
        public int IdEmpresa { get; set; }
        public int IdFornecedor { get; set; }
        public int IdUsuario { get; set; }
        public int IdStatus { get; set; }
        public int CompraNum { get; set; }
        public DateTime DataCompra { get; set; }
        public decimal Desconto { get; set; }
        public int IdFormaPgto { get; set; }
        public string Observacoes { get; set; }
        public int Idconta { get; set; }
        public virtual ClienteFornecedor ClienteFornecedor { get; set; }
        public virtual ICollection<VendasAtivas> VendasAtivas { get; set; }
        public virtual DadosBancarios DadosBancarios { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual FormaPgto FormaPgto { get; set; }
        public virtual StatusVenda StatusVenda { get; set; }
        public virtual Usuario Usuario { get; set; }
        public virtual ICollection<CompraAtiva> CompraAtiva { get; set; }
        public virtual ICollection<Parcelamento> Parcelamentos { get; set; }
    }
}
