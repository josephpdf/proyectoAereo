using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class VuelosE
    {
        public int IdAerolinea { get; set; }
        public string NombreAerolinea { get; set; }
        public string CodePais { get; set; }
        public string HoraSalida { get; set; }
        public string Horallegada { get; set; }
        public string Cod_ISO_3166 { get; set; }
        public string PuertaEmbarque { get; set; }
    }
}
