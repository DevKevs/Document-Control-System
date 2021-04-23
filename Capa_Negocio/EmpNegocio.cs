using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Entidad;

namespace Capa_Negocio
{
    public class EmpNegocio
    {
        EmpDatos Empleado = new EmpDatos();

        public void AgregarEmp(Empleados emp)
        {
            Empleado.AddEmpleado(emp);
        }
        public List<Empleados> MostrarDatos()
        {
            return Empleado.MostrarEmpleado().ToList();
        }
        public void ActualizarEmp(Empleados emp)
        {
            Empleado.ActualizarEmpleado(emp);
        }
        public void EliminarEmpleado(Empleados emp)
        {
            Empleado.BorrarEmpleado(emp);
        }
    }
}
