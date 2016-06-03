using SuperERP.Compras.DTO;
using SuperERP.DAL.Models;
using SuperERP.DAL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.Compras.Service
{
    public static class EmpresaService
    {
        public static void Cadastrar(EmpresaDTO empresaDTO)
        {
            ServicoGenerico<Empresa, EmpresaDTO>.Cadastrar(empresaDTO);
        }
    }
}
