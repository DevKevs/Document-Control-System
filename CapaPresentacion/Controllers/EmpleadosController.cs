using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Capa_Entidad;
using Capa_Negocio;

namespace CapaPresentacion.Controllers
{
    public class EmpleadosController : Controller
    {
        EmpNegocio ejecutor = new EmpNegocio();

        // GET: Empleados/Details/5
        public ActionResult Details()
        {
            return View(ejecutor.MostrarDatos());
        }

        // GET: Empleados/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Empleados/Create
        [HttpPost]
        public ActionResult Create(Empleados emp)
        {
            try
            {
                ejecutor.AgregarEmp(emp);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }

        // GET: Empleados/Edit/5
        public ActionResult Edit()
        {
            return View();
        }

        // POST: Empleados/Edit/5
        [HttpPost]
        public ActionResult Edit(Empleados emp)
        {
            try
            {
                ejecutor.ActualizarEmp(emp);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }

        // GET: Empleados/Delete/5
        public ActionResult Delete()
        {
            return View();
        }

        // POST: Empleados/Delete/5
        [HttpPost]
        public ActionResult Delete(Empleados emp)
        {
            try
            {
                ejecutor.EliminarEmpleado(emp);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }
    }
}
