using AutoMapper;
using SuperERP.DAL.Models;
using SuperERP.DAL.Repositories;
using SuperERP.Vendas.DTO;
using System.Collections.Generic;

namespace SuperERP.Vendas
{
    public class Listar
    {
        public static ICollection<PessoaFisicaDTO> PessoasFisicas()
        {
            //ToDo: Ainda deverá ser refatorado
            var pessoaRepo = new PessoaFisicaRepositorio();
            var listaDePessoasFisicas = pessoaRepo.ObterLista();
            var listarDePessoaFisicaDTO = Mapper.Map<ICollection<PessoaFisica>, ICollection<PessoaFisicaDTO>>(listaDePessoasFisicas);
            return new List<PessoaFisicaDTO>();
        }
        public static PessoaFisicaDTO PessoaFisica(int id)
        {
            //ToDo: Ainda deverá ser refatorado
            var pessoaRepo = new PessoaFisicaRepositorio();
            var pessoaFisica = pessoaRepo.ObterPorEntidadePorId(id);
            var pessoaFisicaDTO = Mapper.Map<PessoaFisica, PessoaFisicaDTO>(pessoaFisica);
            return new PessoaFisicaDTO();
        }

        public static ICollection<PessoaJuridicaDTO> PessoasJuridicas()
        {
            //ToDo: Ainda deverá ser implementado
            return new List<PessoaJuridicaDTO>();
        }

        public static ICollection<ParcelamentoDTO> Parcelamentos()
        {
            Config.AutoMapperConfig.Inicializar();
            var parcelamentos = new ParcelasAReceberRepositorio();
            var parcelas = parcelamentos.PegarTodasParcelas();
            var p = Mapper.Map<ICollection<Parcelamento>, ICollection<ParcelamentoDTO>>(parcelas);
            return p;
        }
        public static ParcelamentoDTO Parcelamento(int id)
        {
            Config.AutoMapperConfig.Inicializar();
            var parcelamentosRep = new ParcelasAReceberRepositorio();
            var parcela = parcelamentosRep.PegarParcela(id);
            var p = Mapper.Map<Parcelamento, ParcelamentoDTO>(parcela);
            return p;
        }

        public static PessoaJuridicaDTO PessoaJuridica()
        {
            //ToDo: Ainda deverá ser implementado
            return new PessoaJuridicaDTO();
        }
    }
}
