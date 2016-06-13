using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SuperERP.DAL.Models;
using SuperERP.DAL.Repositories;
using SuperERP.Vendas.DTO;

namespace SuperERP.Vendas.Service
{
    public class ClienteService
    {
        public static ICollection<PessoaFisicaDTO> ListaPessoasFisicas()
        {
            Config.AutoMapperConfig.Inicializar();
            var repositorio = new PessoaFisicaRepositorio();
            var pessoaFisica = repositorio.ObterTodos();
            var p = Mapper.Map<ICollection<PessoaFisica>, ICollection<PessoaFisicaDTO>>(pessoaFisica);
            return p;
        }

        public static ICollection<PessoaJuridicaDTO> ListaPessoasJuridicas()
        {
            Config.AutoMapperConfig.Inicializar();
            var repositorio = new PessoaJuridicaRepository();
            var pessoaJuridica = repositorio.ObterTodos();
            var p = Mapper.Map<ICollection<PessoaJuridica>, ICollection<PessoaJuridicaDTO>>(pessoaJuridica);
            return p;
        }
    }
}
