using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Entidad;

namespace Capa_Negocio
{
    public class DptsNegocio
    {
        DptsDatos Dep = new DptsDatos();

        public void GuardarDpt(Departamento dept)
        {
            Dep.AddDpt(dept);
        }
        public List<Departamento> MostrarDatos()
        {
            return Dep.MostrarDpt().ToList();
        }
        public void ActualizarDpt(Departamento dept)
        {
            Dep.ActualizarDpt(dept);
        }
        public void EliminarDpt(Departamento dept)
        {
            Dep.BorrarDpt(dept);
        }
    }
}
