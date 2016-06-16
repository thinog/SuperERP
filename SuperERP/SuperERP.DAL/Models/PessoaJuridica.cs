using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public partial class PessoaJuridica
    {
        public PessoaJuridica()
        {
            ClienteFornecedors = new List<ClienteFornecedor>();
            Contatoes = new List<Contato>();
            DadosBancarios = new List<DadosBancarios>();
            Enderecoes = new List<Endereco>();
        }

        public int ID { get; set; }
        public int ID_Empresa { get; set; }
        public string Nome { get; set; }
        public string CNPJ { get; set; }
        public string RazaoSocial { get; set; }
        public virtual ICollection<ClienteFornecedor> ClienteFornecedors { get; set; }
        public virtual ICollection<Contato> Contatoes { get; set; }
        public virtual ICollection<DadosBancarios> DadosBancarios { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual ICollection<Endereco> Enderecoes { get; set; }
    }
}
