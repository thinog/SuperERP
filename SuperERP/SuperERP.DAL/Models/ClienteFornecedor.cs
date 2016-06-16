using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class ClienteFornecedor
    {
        public ClienteFornecedor()
        {
            Compras = new List<Compra>();
            ProdutoFornecedores = new List<ProdutoFornecedor>();
            Vendas = new List<Venda>();
        }

        public int ID { get; set; }
        public int? ID_PJ { get; set; }
        public int? ID_PF { get; set; }
        public int Tipo { get; set; }
        public virtual PessoaFisica PessoaFisica { get; set; }
        public virtual PessoaJuridica PessoaJuridica { get; set; }
        public virtual ICollection<Compra> Compras { get; set; }
        public virtual ICollection<ProdutoFornecedor> ProdutoFornecedores { get; set; }
        public virtual ICollection<Venda> Vendas { get; set; }
    }
}
