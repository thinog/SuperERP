using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class PessoaFisica
    {
        public PessoaFisica()
        {
            ClienteFornecedores = new List<ClienteFornecedor>();
            Contatos = new List<Contato>();
            DadosBancarios = new List<DadosBancarios>();
            Enderecos = new List<Endereco>();
        }

        public int Id { get; set; }
        public int IdEmpresa { get; set; }
        public string Nome { get; set; }
        public string CPF { get; set; }
        public string RG { get; set; }
        public virtual ICollection<ClienteFornecedor> ClienteFornecedores { get; set; }
        public virtual ICollection<Contato> Contatos { get; set; }
        public virtual ICollection<DadosBancarios> DadosBancarios { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual ICollection<Endereco> Enderecos { get; set; }
    }
}
