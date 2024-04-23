using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class ProfileE
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Correo { get; set; }
        public int NombrePais { get; set; }
        public int GeneroT { get; set; }
        public int Rol { get; set; }
        public bool Estado { get; set; }
        public string Contrasena { get; set; }
        public string accion { get; set; }
    }
}
