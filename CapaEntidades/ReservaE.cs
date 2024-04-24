using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class ReservaE
    {
        public int idAerolinea { get; set; }

        public string IdVuelo { get; set; }
        public int IdPasajero { get; set; }
        public string nombre { get; set; }
        public int CantidadMaletas { get; set; }
        public string Asiento { get; set; }
        public int  CantidadPersonas { get; set; }
        public double  PrecioMaletas { get; set; }
        public double  Total { get; set; }

        public string Maleta { get; set; }
        public string accion { get; set; }
    }
}
