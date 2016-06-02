using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SuperERP.Vendas.DTO;

namespace SuperERP.Compras.DTO
{
    public class ProdutoDTO
    {
        public int ID { get; set; }
        public int ID_Empresa { get; set; }
        public int ID_Categoria { get; set; }
        public Nullable<int> ID_Cliente { get; set; }
        public Nullable<int> ID_Ncm { get; set; }
        public Nullable<int> ID_Unidade_Medida { get; set; }
        public double ICMS { get; set; }
        public double IPI { get; set; }
        public double IVA { get; set; }
        public double ST { get; set; }
        public double PIS { get; set; }
        public double COFINS { get; set; }
        public string Nome { get; set; }
        public int Codigo_Cliente { get; set; }
        public int Codigo_Barras { get; set; }
        public double Valor_Venda { get; set; }
        public int Estoque { get; set; }
        public int EstoqueMax { get; set; }
        public int EstoqueMin { get; set; }
        public Nullable<double> Peso_Liquido { get; set; }
        public Nullable<double> Peso_Bruto { get; set; }
        public string ean { get; set; }
        public virtual CategoriaDTO Categoria { get; set; }
        public virtual ClienteFornecedorDTO ClienteFornecedor { get; set; }
        public virtual ICollection<CompraAtivosDTO> Compra_Ativos { get; set; }
        public virtual EmpresaDTO Empresa { get; set; }
        public virtual NcmDTO Ncm { get; set; }
        public virtual UnidadeMedidaDTO Unidade_Medida { get; set; }
        public virtual ICollection<ProdutoFornecedorDTO> ProdutoFornecedors { get; set; }
    }
}
