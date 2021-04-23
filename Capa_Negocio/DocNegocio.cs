using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Entidad;

namespace Capa_Negocio
{
    public class DocNegocio
    {
        DocDatos docx = new DocDatos();

        public void AgregarDoc(Documentos doc)
        {
            //generar codigo
            doc.Codigo = docx.MakeCode(doc);
            //agregar documento
            docx.AddDoc(doc);
        }
        public List<Documentos> ShowDocx()
        {
            return docx.ShowDoc().ToList();
        }
    }
}
