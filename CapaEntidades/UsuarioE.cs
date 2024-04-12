using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public  class UsuarioE
    {
        public int IdUsuario  { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int CodePais { get; set; }
        public string Correo { get; set; }
        public int idRol { get; set; }
        public string Contrasena { get; set; }
        public string accion { get; set; }
    }
}
