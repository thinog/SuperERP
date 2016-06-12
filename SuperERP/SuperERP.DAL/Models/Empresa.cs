using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class Empresa
    {
        public Empresa()
        {
            Compras = new List<Compra>();
            DadosBancarios = new List<DadosBancarios>();
            PessoasFisicas = new List<PessoaFisica>();
            PessoasJuridicas = new List<PessoaJuridica>();
            Produtos = new List<Produto>();
            Servicos = new List<Servico>();
            Usuarios = new List<Usuario>();
            Vendas = new List<Venda>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string CNPJ { get; set; }
        public string RazaoSocial { get; set; }
        public string CEP { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public virtual ICollection<Compra> Compras { get; set; }
        public virtual ICollection<DadosBancarios> DadosBancarios { get; set; }
        public virtual ICollection<PessoaFisica> PessoasFisicas { get; set; }
        public virtual ICollection<PessoaJuridica> PessoasJuridicas { get; set; }
        public virtual ICollection<Produto> Produtos { get; set; }
        public virtual ICollection<Servico> Servicos { get; set; }
        public virtual ICollection<Usuario> Usuarios { get; set; }
        public virtual ICollection<Venda> Vendas { get; set; }
    }
}
