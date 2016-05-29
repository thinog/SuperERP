using SuperERP.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    public class EstoqueRepository : Repositorio<Produto>
    {
        public ICollection<Produto> PegarEstoque()
        {
            return dbContext.Produtoes.ToList();
        }
    }
}
