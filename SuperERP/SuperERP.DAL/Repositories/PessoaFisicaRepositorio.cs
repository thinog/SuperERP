using SuperERP.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    public class PessoaFisicaRepositorio : Repositorio<PessoaFisica>
    {
        public PessoaFisica ObterPorEmail(string email)
        {
            return (from pessoaFisica in dbContext.PessoasFisicas join fornecedorCliente in dbContext.ClienteFornecedores on pessoaFisica.Id equals fornecedorCliente.ID_PF
                        join contato in dbContext.Contatos on fornecedorCliente.ID equals contato.IdPessoaJuridica where contato.Email == email select pessoaFisica).FirstOrDefault();
        }

        public PessoaFisica ObterPorCPF(string cpf)
        {
            return dbContext.PessoasFisicas.FirstOrDefault(x => x.CPF == cpf);
        }

        public List<PessoaFisica> ObterTodos()
        {
            var clientes = dbContext.PessoasFisicas.ToList();
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
