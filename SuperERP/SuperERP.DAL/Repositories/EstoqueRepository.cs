using SuperERP.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    public class EstoqueRepository : Repositorio<Produto>
    {
        public ICollection<Produto> PegarEstoque()
        {
            return dbContext.Produtos
                            .Include( x=> x.Categoria)
                            .Include( x => x.Unidade_Medida )
                            .ToList();
        }
        public ICollection<VendasAtivas> PegarVendaAtivosDoProduto(int produtoId)
        {
            return dbContext.VendasAtivas
                            .Include(x => x.Venda)
                            .Include(x => x.Venda.ClienteFornecedor)
                            .Include(x => x.Produto)
                            .Where(x => x.ID_Produto == produtoId)
                            .ToList();
        }
        public ICollection<CompraAtiva> PegarCompraAtivosDoProduto(int produtoId)
        {
            return dbContext.ComprasAtivas
                            .Include(x => x.Compra)
                            .Include(x => x.Compra.ClienteFornecedor)
                            .Include(x => x.Produto)
                            .Where( x => x.ID_Produto == produtoId)
                            .ToList();
        }
    }
}
