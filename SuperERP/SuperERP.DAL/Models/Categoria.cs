using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class Categoria
    {
        public Categoria()
        {
            Produtos = new List<Produto>();
            Servicos = new List<Servico>();
        }

        public int ID { get; set; }
        public bool CategoriaTipo { get; set; }
        public string Nome { get; set; }
        public virtual ICollection<Produto> Produtos { get; set; }
        public virtual ICollection<Servico> Servicos { get; set; }
    }
}
