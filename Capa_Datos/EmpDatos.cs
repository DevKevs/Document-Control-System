using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Entidad;

namespace Capa_Datos
{
    public class EmpDatos
    {
        FINALPRG2Entities db = new FINALPRG2Entities();

        public void AddEmpleado(Empleados Emp)
        {
            db.Empleados.Add(Emp);
            db.SaveChanges();
        }
        public List<Empleados> MostrarEmpleado()
        {
            return db.Empleados.ToList();
        }
        public void ActualizarEmpleado(Empleados Emp)
        {
            var registro = from Empleados in db.Empleados
                           where Empleados.ID_empleado == Emp.ID_empleado
                           select Empleados;
            Empleados encontrado = registro.First();
            encontrado.Nombre = Emp.Nombre;
            encontrado.Cargo = Emp.Cargo;
            encontrado.Correo = Emp.Correo;
            db.SaveChanges();
        }
        public void BorrarEmpleado(Empleados Emp)
        {
            var registro = from Empleados in db.Empleados
                           where Empleados.ID_empleado == Emp.ID_empleado
                           select Empleados;
            Empleados encontrado = registro.First();
            db.Empleados.Remove(encontrado);
            db.SaveChanges();
        }
    }
}
