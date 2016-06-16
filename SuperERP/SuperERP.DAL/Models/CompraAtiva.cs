namespace SuperERP.DAL.Models
{
    public partial class CompraAtiva
    {
        public int ID { get; set; }
        public int ID_Compra { get; set; }
        public int? ID_Produto { get; set; }
        public int? ID_Servico { get; set; }
        public decimal? Imposto { get; set; }
        public string Detalhes { get; set; }
        public int? Quantidade { get; set; }
        public virtual Compra Compra { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual Servico Servico { get; set; }
    }
}
