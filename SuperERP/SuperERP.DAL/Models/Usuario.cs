using System;
using System.Collections.Generic;

namespace SuperERP.DAL.Models
{
    public class Usuario
    {
        public Usuario()
        {
            Vendas = new List<Venda>();
            Compras = new List<Compra>();
        }

        public int ID { get; set; }
        public int ID_Perfil { get; set; }
        public int ID_Empresa { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual Perfil Perfil { get; set; }
        public virtual ICollection<Compra> Compras { get; set; }
        public virtual ICollection<Venda> Vendas { get; set; }
    }
}
