using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class ParcelasAReceberController : Controller
    {
        //
        // GET: /ParcelasAReceber/
        public ActionResult Index()
        {
            var parcelas = Vendas.Listar.Parcelamentos();

            return View(parcelas);
        }

        //
        // GET: /ParcelasAReceber/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ParcelasAReceber/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /ParcelasAReceber/Create
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
        // GET: /ParcelasAReceber/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /ParcelasAReceber/Edit/5
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
        // GET: /ParcelasAReceber/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /ParcelasAReceber/Delete/5
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
    }
}
