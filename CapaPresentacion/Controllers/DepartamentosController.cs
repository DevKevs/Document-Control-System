using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Capa_Entidad;
using Capa_Negocio;

namespace CapaPresentacion.Controllers
{
    public class DepartamentosController : Controller
    {
        DptsNegocio ejecutor = new DptsNegocio();
        // GET: Departamentos/Details/5
        public ActionResult Details()
        {
            return View(ejecutor.MostrarDatos());
        }

        // GET: Departamentos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Departamentos/Create
        [HttpPost]
        public ActionResult Create(Departamento dept)
        {
            try
            {
                ejecutor.GuardarDpt(dept);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }

        // GET: Departamentos/Edit/5
        public ActionResult Edit()
        {
            return View();
        }

        // POST: Departamentos/Edit/5
        [HttpPost]
        public ActionResult Edit(Departamento dept)
        {
            try
            {
                ejecutor.ActualizarDpt(dept);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }

        // GET: Departamentos/Delete/5
        public ActionResult Delete()
        {
            return View();
        }

        // POST: Departamentos/Delete/5
        [HttpPost]
        public ActionResult Delete(Departamento dept)
        {
            try
            {
                ejecutor.EliminarDpt(dept);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }
    }
}
