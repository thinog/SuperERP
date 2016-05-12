using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.DAL.Repositories
{
    interface IRepository<T> : IDisposable where T : class
    {
        public ICollection<T> ObterLista();
        public T ObterPorEntidadePorId(int id);
        public bool Cadastrar(T entidade);
        public bool Deletar(T entidade);
        public bool Deletar(int id);
    }
}
