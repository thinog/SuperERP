using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SuperERP.Compras;
using SuperERP.DAL.Repositories;
using SuperERP.DAL.Models;

namespace SuperERP.Web.Controllers
{
    public class ProdutoController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Produto/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Produto/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Produto/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Produto/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Produto/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Produto/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Produto/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult GetProdutos()
        {
            var lista = new List<Produto>();
            var item = new Produto();
            item.ID = 1;
            lista.Add(item);
            return Json(lista, JsonRequestBehavior.AllowGet);
        }
    }
}
