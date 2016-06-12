using SuperERP.Compras.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class FuncionalidadeController : Controller
    {
        // GET: Funcionalidade
        public ActionResult Index()
        {
            return View(Compras.Service.FuncionalidadeService.Listar());
        }

        public ActionResult Incluir()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Incluir(FuncionalidadeDTO funcionalidade)
        {
            Compras.Service.FuncionalidadeService.Cadastrar(funcionalidade);
            return View();
        }

        public ActionResult Alterar(int funcionalidadeID)
        {
            return View(Compras.Service.FuncionalidadeService.BuscaPorId(funcionalidadeID));
        }

        [HttpPost]
        public ActionResult Alterar(FuncionalidadeDTO funcionalidade)
        {
            Compras.Service.FuncionalidadeService.Alterar(funcionalidade);
            return View();
        }

        public ActionResult Excluir(int funcionalidadeID)
        {
            return View(Compras.Service.FuncionalidadeService.BuscaPorId(funcionalidadeID));
        }

        [HttpPost]
        public ActionResult Excluir(FuncionalidadeDTO funcionalidade)
        {
            Compras.Service.FuncionalidadeService.Deletar(funcionalidade.ID);
            return View();
        }
    }
}