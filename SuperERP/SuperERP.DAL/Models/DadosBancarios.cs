using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class DadosBancarios
    {
        public DadosBancarios()
        {
            this.Compras = new List<Compra>();
            this.Vendas = new List<Venda>();
        }

        public int Id { get; set; }
        public string Banco { get; set; }
        public string ContaCorrente { get; set; }
        public string Agencia { get; set; }
        public int? IdPessoaJuridica { get; set; }
        public int? IdPessoaFisica { get; set; }
        public int? IdEmpresa { get; set; }
        public virtual ICollection<Compra> Compras { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual PessoaFisica PessoaFisica { get; set; }
        public virtual PessoaJuridica PessoaJuridica { get; set; }
        public virtual ICollection<Venda> Vendas { get; set; }
    }
}
