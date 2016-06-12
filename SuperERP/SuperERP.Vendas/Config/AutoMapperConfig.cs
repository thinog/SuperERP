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
            AutoMapper.Mapper.CreateMap<VendaAtivosDTO, VendasAtivas>();
            AutoMapper.Mapper.CreateMap<VendaAtivosEstoqueDTO, VendasAtivas>();
            AutoMapper.Mapper.CreateMap<CompraAtivosEstoqueDTO, CompraAtiva>();
            AutoMapper.Mapper.CreateMap<CategoriaDTO, Categoria>();
        }

        public static void ConverteModelParaDTO()
        {
            AutoMapper.Mapper.CreateMap<PessoaFisica, PessoaFisicaDTO>();
            AutoMapper.Mapper.CreateMap<Parcelamento, ParcelamentoDTO>();
            AutoMapper.Mapper.CreateMap<Produto, ProdutoEstoqueDTO>();
            AutoMapper.Mapper.CreateMap<Venda, VendaDTO>();
            AutoMapper.Mapper.CreateMap<VendasAtivas, VendaAtivosDTO>();
            AutoMapper.Mapper.CreateMap<VendasAtivas, VendaAtivosEstoqueDTO>();
            AutoMapper.Mapper.CreateMap<CompraAtiva, CompraAtivosEstoqueDTO>();
            AutoMapper.Mapper.CreateMap<Categoria, CategoriaDTO>();
        }
    }
}
