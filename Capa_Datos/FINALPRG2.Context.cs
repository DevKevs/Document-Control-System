﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Capa_Datos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    using Capa_Entidad;
    
    public partial class FINALPRG2Entities : DbContext
    {
        public FINALPRG2Entities()
            : base("name=FINALPRG2Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Departamento> Departamento { get; set; }
        public virtual DbSet<Documentos> Documentos { get; set; }
        public virtual DbSet<Empleados> Empleados { get; set; }
    
        public virtual ObjectResult<rpt_allDocx_Result> rpt_allDocx()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<rpt_allDocx_Result>("rpt_allDocx");
        }
    
        public virtual ObjectResult<rpt_DestinationDept_Result> rpt_DestinationDept(string destination)
        {
            var destinationParameter = destination != null ?
                new ObjectParameter("destination", destination) :
                new ObjectParameter("destination", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<rpt_DestinationDept_Result>("rpt_DestinationDept", destinationParameter);
        }
    
        public virtual ObjectResult<rpt_empleados_Result> rpt_empleados()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<rpt_empleados_Result>("rpt_empleados");
        }
    
        public virtual ObjectResult<rpt_OriginDept_Result> rpt_OriginDept(string origin)
        {
            var originParameter = origin != null ?
                new ObjectParameter("Origin", origin) :
                new ObjectParameter("Origin", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<rpt_OriginDept_Result>("rpt_OriginDept", originParameter);
        }
    
        public virtual ObjectResult<rpt_TimeLapse_Result> rpt_TimeLapse(string desde, string hasta)
        {
            var desdeParameter = desde != null ?
                new ObjectParameter("desde", desde) :
                new ObjectParameter("desde", typeof(string));
    
            var hastaParameter = hasta != null ?
                new ObjectParameter("hasta", hasta) :
                new ObjectParameter("hasta", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<rpt_TimeLapse_Result>("rpt_TimeLapse", desdeParameter, hastaParameter);
        }
    
        public virtual ObjectResult<rpt_userDocx_Result> rpt_userDocx(string name)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<rpt_userDocx_Result>("rpt_userDocx", nameParameter);
        }
    }
}