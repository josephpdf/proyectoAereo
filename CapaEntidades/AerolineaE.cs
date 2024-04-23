using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class AerolineaE
    {
        public int IdAerolinea { get; set; }
        public string NombreAerolinea { get; set; }
        public int? CodePais { get; set; } // El signo de interrogación indica que puede ser nulo
        public string CodigoIATA { get; set; }
        public string CodigoICAO { get; set; }
        public DateTime FechaFundacion { get; set; }
    }
}
