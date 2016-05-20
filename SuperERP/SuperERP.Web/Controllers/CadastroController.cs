using SuperERP.Vendas;
using SuperERP.Vendas.DTO;
using SuperERP.Compras.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class CadastroController : Controller
    {

        public ActionResult Empresa()
        {

            return View();
        }
        [HttpPost]
          public ActionResult Empresa(UsuarioEmpresaDto primeirousuario)
        {

            return View();
        }
   



        public ActionResult PessoaFisica()
        {
            return View();
        }

        [HttpPost]
        public ActionResult PessoaFisica(PessoaFisicaDTO pessoa)
        {
            var pessoaFisica = SuperERP.Vendas.Listar.PessoaFisica(1);
            var teste = new List<string>();
            return View(pessoaFisica);
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