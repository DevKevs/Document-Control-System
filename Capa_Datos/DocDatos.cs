using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Entidad;

namespace Capa_Datos
{
    public class DocDatos
    {
        DateTime time = DateTime.Today;
        FINALPRG2Entities db = new FINALPRG2Entities();
        public void AddDoc(Documentos doc)
        {
            doc.Fecha = time.ToShortDateString();
            db.Documentos.Add(doc);
            db.SaveChanges();
        }
        public List<Documentos> ShowDoc()
        {
            return db.Documentos.ToList();
        }

        public string MakeCode(Documentos doc)
        {
            var origen = from Departamento in db.Departamento
                         where Departamento.Departamento1 == doc.Dpt_origen
                         select Departamento;

            var destino = from Departamento in db.Departamento
                          where Departamento.Departamento1 == doc.Dpt_destino
                          select Departamento;


            Departamento dpOrigen = origen.First();
            Departamento dpDestino = destino.First();

            int num = db.Documentos.Count() + 1;

            return $"{DateTime.Now.Year}-{dpOrigen.Siglas}-{dpDestino.Siglas}-0{num}";
        }
    }
}
