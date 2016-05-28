using SuperERP.Compras.Dto;
using SuperERP.DAL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.Compras.Service
{
    class EmpresaService
    {
        public static void Cadastra(EmpresaDto empresaDto)
        {
            EmpresaRepository.Gravar();

        }
    }
}
