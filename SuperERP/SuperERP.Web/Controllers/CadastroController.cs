using SuperERP.Vendas;
using SuperERP.Vendas.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SuperERP.Compras.Dto;

namespace SuperERP.Web.Controllers
{
    public class CadastroController : Controller
    {
        public ActionResult Empresa()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Empresa(EmpresaDto usurio)
        {

            var teste = new List<string>();
            return View();
        }

        public ActionResult Usuario()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Usuario(UsuarioDto usurio)
        {
           
            var teste = new List<string>();
            return View();
        }

        public ActionResult PessoaFisica()
        {
            return View();
        }

        [HttpPost]
        public ActionResult PessoaFisica(PessoaFisicaDTO pessoa)
        {
           // var pessoaFisica = SuperERP.Vendas.Listar.PessoaFisica();
           
            var teste = new List<string>();
            return View();
        }

        public ActionResult PessoaJuridica()
        {
            return View();
        }

        [HttpPost]
        public ActionResult PessoaJuridica(PessoaJuridicaDTO pessoa)
        {
            return View();
        }
	}
}