using SuperERP.DAL.Models;
using SuperERP.Vendas.DTO;

namespace SuperERP.Vendas.Config
{
    public static class AutoMapperConfig
    {
        public static void Inicializar() {
            ConverteDTOParaModel();
            ConverteModelParaDTO();
        }

        public static void ConverteDTOParaModel()
        {
            AutoMapper.Mapper.CreateMap<PessoaFisicaDTO, PessoaFisica>();
            AutoMapper.Mapper.CreateMap<ParcelamentoDTO, Parcelamento>();
            AutoMapper.Mapper.CreateMap<ProdutoEstoqueDTO, Produto>();
            AutoMapper.Mapper.CreateMap<VendaDTO, Venda>();
            AutoMapper.Mapper.CreateMap<VendaAtivosDTO, Venda_Ativos>();
        }

        public static void ConverteModelParaDTO()
        {
            AutoMapper.Mapper.CreateMap<PessoaFisica, PessoaFisicaDTO>();
            AutoMapper.Mapper.CreateMap<Parcelamento, ParcelamentoDTO>();
            AutoMapper.Mapper.CreateMap<Produto, ProdutoEstoqueDTO>();
            AutoMapper.Mapper.CreateMap<Venda, VendaDTO>();
            AutoMapper.Mapper.CreateMap<Venda_Ativos, VendaAtivosDTO>();
        }
    }
}
