using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace Controlador
{
    public partial class AdminPasajero : System.Web.UI.Page
    {
        VuelosN v = new VuelosN();
        protected void Page_Load(object sender, EventArgs e)
        {
            //carga de vuelos
            gdvuelos.DataSource = v.ObetenerVuelos();
            gdvuelos.DataBind();
        }
    }
}