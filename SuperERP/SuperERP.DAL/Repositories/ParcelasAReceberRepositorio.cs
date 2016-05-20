using SuperERP.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    public class ParcelasAReceberRepositorio : Repositorio<Parcelamento>
    {
        public ICollection<Parcelamento> PegarTodasParcelas()
        {
            var parcela = dbContext.Parcelamentoes.Include(x => x.Venda.ClienteFornecedor);           

            return parcela.ToList();
        }
    }
}
