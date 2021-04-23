using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Entidad;
using Capa_Datos;

namespace Capa_Servicios
{
    public class ReportServices
    {
        FINALPRG2Entities db = new FINALPRG2Entities();
        
        public List<rpt_empleados_Result> ReporteEmpleados()
        {
            return db.rpt_empleados().ToList();
        }
        public List<rpt_allDocx_Result> ReporteDocumentos()
        {
            return db.rpt_allDocx().ToList();
        }
        public List<rpt_userDocx_Result> RepDocUser(string name)
        {
            return db.rpt_userDocx(name).ToList();
        }
        public List<rpt_OriginDept_Result> RepDocOrigen(string origin)
        {
            return db.rpt_OriginDept(origin).ToList();
        }
        public List<rpt_DestinationDept_Result> RepDocDestino(string destination)
        {
            return db.rpt_DestinationDept(destination).ToList();
        }
        public List<rpt_TimeLapse_Result> RepDocTimelapse(string desde, string hasta)
        {
            return db.rpt_TimeLapse(desde, hasta).ToList();
        }
    }
}
