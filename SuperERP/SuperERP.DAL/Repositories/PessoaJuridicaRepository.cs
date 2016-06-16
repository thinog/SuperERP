using SuperERP.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    public class PessoaJuridicaRepository : Repositorio<PessoaJuridica>
    {
        public PessoaJuridica ObterPorEmail(string email)
        {
            return (from pessoaJuridica in dbContext.PessoasJuridicas
                    join fornecedorCliente in dbContext.ClienteFornecedores on pessoaJuridica.ID equals fornecedorCliente.ID_PF
                    join contato in dbContext.Contatos on fornecedorCliente.ID equals contato.IdPessoaJuridica
                    where contato.Email == email
                    select pessoaJuridica).FirstOrDefault();
        }

        public PessoaJuridica ObterPorCNPJ(string cnpj)
        {
            return dbContext.PessoasJuridicas.FirstOrDefault(x => x.CNPJ == cnpj);
        }
        public List<PessoaJuridica> ObterTodos()
        {
            //var clientes = (from pessoaJuridica in dbContext.PessoasJuridicas join contato in dbContext.Contatos on pessoaJuridica.ID equals contato.IdPessoaFisica select pessoaJuridica).ToList();
            var clientes = dbContext.PessoasJuridicas.ToList();
            if (clientes.Count() > 0)
            {
                return clientes;
            }
            else
            {
                return null;
            }
        }
        public List<Contato> ObterContatos()
        {
            var contatos = dbContext.Contatos.ToList();
            if (contatos.Count() > 0)
            {
                return contatos;
            }
            else
            {
                return null;
            }
        }
    }
}