using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Ing.Software.Clases
{
    public class clsUser
    {
        public int idPersona { get; set; }
        public string nombreCompleto { get; set; }
        public DateTime fechaNacimiento { get; set; }
        public string numeroTelefono { get; set; }
        public string email { get; set; }
        public string Pais { get; set; }
        public string Ciudad { get; set; }
        public string codigoPostal { get; set; }
        public string Direccion { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
        public string estado { get; set; }
        public bool empleado { get; set; }
    }
}