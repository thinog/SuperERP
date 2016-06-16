using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class FormaPgto
    {
        public FormaPgto()
        {
            Compras = new List<Compra>();
            Vendas = new List<Venda>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public virtual ICollection<Compra> Compras { get; set; }
        public virtual ICollection<Venda> Vendas { get; set; }
    }
}
