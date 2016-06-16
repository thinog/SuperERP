using System;

namespace SuperERP.DAL.Models
{
    public class ContratoVenda
    {
        public int Id { get; set; }
        public int IdPeriodicidade { get; set; }
        public int IdVenda { get; set; }
        public int DiaCobranca { get; set; }
        public DateTime DataInicio { get; set; }
        public DateTime DataFim { get; set; }
        public decimal Juros { get; set; }
        public int Ocorrencias { get; set; }
        public virtual Periodicidade Periodicidade { get; set; }
        public virtual Venda Venda { get; set; }
    }
}
