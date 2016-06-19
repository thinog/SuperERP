using SuperERP.Vendas.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class VendasOrcamentosController : Controller
    {
        // GET: VendasOrcamentos
        public ActionResult Index()
        {
            ViewBag.Recusados = 0;
            ViewBag.Orcamentos = 0;
            ViewBag.Aceitos = 0;
            ViewBag.Vendas = 0;
            ViewBag.Previsao = 0;
            return View();
        }

        public ActionResult Novo()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Novo(VendaContratoDTO vendaContrato)
        {
            return View();
        }
    }
}