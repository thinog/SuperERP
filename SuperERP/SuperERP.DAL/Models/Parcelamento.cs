using System;

namespace SuperERP.DAL.Models
{
    public partial class Parcelamento
    {
        public int Id { get; set; }
        public int? IdCompra { get; set; }
        public int? IdVenda { get; set; }
        public int NumeroParcela { get; set; }
        public decimal Valor { get; set; }
        public bool? Pago { get; set; }
        public DateTime Data_Pagamento { get; set; }
        public DateTime? Data_Pago { get; set; }
        public virtual Compra Compra { get; set; }
        public virtual Venda Venda { get; set; }
    }
}
