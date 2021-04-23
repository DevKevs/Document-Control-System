using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Capa_Entidad;
using Capa_Negocio;

namespace CapaPresentacion.Controllers
{
    public class DocumentosController : Controller
    {
        DocNegocio docx = new DocNegocio();

        // GET: Documentos/Details/5
        public ActionResult Details()
        {
            return View(docx.ShowDocx());
        }

        // GET: Documentos/Create
        public ActionResult Create()
        {
            //List<Models.viewModels.DepDropDown> lista = null; 
            //using(Capa_Datos.FINALPRG2Entities db = new Capa_Datos.FINALPRG2Entities())
            //{
            //    lista = (from Departamento in db.Departamento
            //             select new Models.viewModels.DepDropDown
            //             {
            //                 Id = Departamento.ID_departamento,
            //                 Dep = Departamento.Departamento1
            //             }).ToList();
            //}
            //List<SelectListItem> items = lista.ConvertAll(d =>
            //{
            //    return new SelectListItem()
            //    {
            //        Text = d.Dep.ToString(),
            //        Value = d.Id.ToString(),
            //        Selected = false

            //    };
            //});
            //ViewBag.items = items;
            return View();
        }

        // POST: Documentos/Create
        [HttpPost]
        public ActionResult Create(Documentos doc)
        {
            try
            {
                docx.AgregarDoc(doc);

                return RedirectToAction("Details");
            }
            catch
            {
                return View();
            }
        }

        
    }
}
