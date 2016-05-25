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
        }

        public static void ConverteModelParaDTO()
        {
            AutoMapper.Mapper.CreateMap<PessoaFisica, PessoaFisicaDTO>();
            AutoMapper.Mapper.CreateMap<Parcelamento, ParcelamentoDTO>();
        }
    }
}
