using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SuperERP.Vendas.Service;
using SuperERP.Vendas.DTO;
using System.Text.RegularExpressions;

namespace SuperERP.Web.Controllers
{
    public class ClienteController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.fisicas = ClienteService.ListaPessoasFisicas();
            ViewBag.juridicas = ClienteService.ListaPessoasJuridicas();
            return View();
        }

        public ActionResult Editar(int id, int tipo)
        {
            return View();
        }

        public ActionResult Cadastrar()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Cadastrar(FormCollection f)
        {
            var a = f["pessoa"];
            var b = f["Item1.Email"];
            var c = f["Item1.Endereco"];
            // Pessoa Fisica
            if (f["pessoa"] == "1")
            {
                var pessoa = new PessoaFisicaDTO();
                pessoa.Nome = f["Item1.Nome"];
                pessoa.CPF = new Regex(@"[^\d]").Replace(f["Item1.CPF"], "");
                pessoa.RG = new Regex(@"[^\d]").Replace(f["Item1.RG"], "");

                if(f["Item1.Email"] != null)
                {
                    pessoa.Email = f["Item1.Email"];
                    pessoa.Fone = new Regex(@"[^\d]").Replace(f["Item1.Fone"], "");
                    pessoa.Cargo = f["Item1.Cargo"];
                }

                if (f["Item1.Endereco"] != null)
                {
                    pessoa.Endereco = f["Item1.Endereco"];
                    pessoa.Numero = f["Item1.Numero"];
                    pessoa.Complemento = f["Item1.Complemento"];
                    pessoa.CEP = new Regex(@"[^\d]").Replace(f["Item1.CEP"], "");
                    pessoa.Bairro = f["Item1.Bairro"];
                    pessoa.Cidade = f["Item1.Cidade"];
                }
                ClienteService.CadastraPessoaFisica(pessoa);
            }
            // Pessoa Juridica
            else if (f["pessoa"] == "2")
            {
                var pessoa = new PessoaJuridicaDTO();
                pessoa.Nome = f["Item2.Nome"];
                pessoa.CNPJ = new Regex(@"[^\d]").Replace(f["Item2.CNPJ"], "");
                pessoa.RazaoSocial = f["Item2.RazaoSocial"];

                if (f["Item1.Email"] != null)
                {
                    pessoa.Email = f["Item1.Email"];
                    pessoa.Fone = new Regex(@"[^\d]").Replace(f["Item1.Fone"], "");
                    pessoa.Cargo = f["Item1.Cargo"];
                }

                if (f["Item1.Endereco"] != null)
                {
                    pessoa.Endereco = f["Item1.Endereco"];
                    pessoa.Numero = f["Item1.Numero"];
                    pessoa.Complemento = f["Item1.Complemento"];
                    pessoa.CEP = new Regex(@"[^\d]").Replace(f["Item1.CEP"], "");
                    pessoa.Bairro = f["Item1.Bairro"];
                    pessoa.Cidade = f["Item1.Cidade"];
                }
                ClienteService.CadastraPessoaJuridica(pessoa);
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Excluir(int id, int tipo)
        {
            try
            {
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}