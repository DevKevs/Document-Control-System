using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Capa_Entidad;
using Capa_Negocio;
using Capa_Servicios;

namespace CapaPresentacion.Controllers
{
    public class ReportesController : Controller
    {
        ReportServices reportes = new ReportServices();
        DptsNegocio dept = new DptsNegocio();
        // GET: Reportes
        public ActionResult Reporteria()
        {
            return View();
        }
        //Reporte de empleados 
        public ActionResult ReporteEmp()
        {
            return View(reportes.ReporteEmpleados());
        }
        //reporte de departamentos 
        public ActionResult ReporteDep()
        {
            return View(dept.MostrarDatos());
        }
        //reporte de documentos 
        public ActionResult ReporteDoc()
        {
            return View(reportes.ReporteDocumentos());
        }
        //reporte de documentos por usuario 
        public ActionResult FrmRptUserDocx()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RptUserDocx(string name)
        {
            return View(reportes.RepDocUser(name));
        }
        //reporte de documentos por dpOrigen 
        public ActionResult FrmRptOrigen()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RptOrigen(string origin)
        {
            return View(reportes.RepDocOrigen(origin));
        }
        //reporte de documentos por dpDestino 
        public ActionResult FrmRptDestino()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RptDestino(string destination)
        {
            return View(reportes.RepDocDestino(destination));
        }
        //reporte de documentos por lapso de tiempo 
        public ActionResult FrmRptLapseTime()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RptLapseTime(string desde, string hasta)
        {
            return View(reportes.RepDocTimelapse(desde, hasta));
        }
    }
}