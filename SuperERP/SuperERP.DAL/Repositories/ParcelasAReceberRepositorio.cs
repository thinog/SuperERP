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
            var parcelas = dbContext.Parcelamentos.Include(x => x.Venda.ClienteFornecedor);
            return parcelas.ToList();
        }

        public Parcelamento PegarParcela( int id )
        {
            var parcela = dbContext.Parcelamentos.Where(x => x.Id == id).FirstOrDefault();

            return parcela;
        }
        public bool ReceberParcela(Parcelamento parcela)
        {
            Parcelamento parcelaAlterada = dbContext.Parcelamentos.Where(p => p.Id == parcela.Id).FirstOrDefault();
            parcela.Pago = true;
            parcela.Data_Pago = System.DateTime.Now;

            if (parcelaAlterada != null)
            {
                dbContext.Entry(parcelaAlterada).CurrentValues.SetValues(parcela);
            }else{return false;}

            dbContext.SaveChanges();
            
            return true;
        }
    }
}
