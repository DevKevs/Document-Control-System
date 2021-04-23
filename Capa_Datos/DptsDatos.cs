using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Entidad;

namespace Capa_Datos
{
    public class DptsDatos
    {
        FINALPRG2Entities db = new FINALPRG2Entities();

        public void AddDpt(Departamento dept)
        {
            db.Departamento.Add(dept);
            db.SaveChanges();
        }
        public List<Departamento> MostrarDpt()
        {
            return db.Departamento.ToList();
        }
        public void ActualizarDpt(Departamento dept)
        {
            var registro = from Departamento in db.Departamento
                           where Departamento.ID_departamento == dept.ID_departamento
                           select Departamento;
            Departamento encontrado = registro.First();
            encontrado.Departamento1 = dept.Departamento1;
            encontrado.Siglas = dept.Siglas;
            db.SaveChanges();
        }
        public void BorrarDpt(Departamento dept)
        {
            var registro = from Departamento in db.Departamento
                           where Departamento.ID_departamento == dept.ID_departamento
                           select Departamento;
            Departamento encontrado = registro.First();
            db.Departamento.Remove(encontrado);
            db.SaveChanges();
        }
    }
}
