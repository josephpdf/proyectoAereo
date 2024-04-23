using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace Controlador
{
    
    public partial class Reservas : System.Web.UI.Page
    {
        VuelosE vE=new VuelosE();
        ReservaE r=new ReservaE();
        VuelosN v=new VuelosN();
        int value;
        protected void Page_Load(object sender, EventArgs e)
        {
            value = (int)v.ObtenerVariableSesion("ID");
            List<VuelosE> LVuelos = v.ObtenerVuelos(value);

            dpMaletas.DataSource = v.D_LoadMaleta();
            dpMaletas.DataTextField = "TipoMaleta";
            dpMaletas.DataValueField = "idTipoMaleta";
            dpMaletas.DataBind();
            //*****************************************************
            foreach (VuelosE pe2 in LVuelos)
            {               
                vE.IdAerolinea = pe2.IdAerolinea;
                vE.NombreAerolinea = pe2.NombreAerolinea;
                vE.CodePais = pe2.CodePais;
                vE.Horallegada = pe2.Horallegada;
                vE.Cod_ISO_3166 = pe2.Cod_ISO_3166;
                vE.HoraSalida = pe2.HoraSalida;
                vE.PuertaEmbarque = pe2.PuertaEmbarque;
            }
            //*****************************************************

            txtAerolinea.Text = vE.NombreAerolinea;
            txtIda.Text = vE.CodePais;
            txtDestino.Text= vE.Cod_ISO_3166;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //metodo para obtener un vuelo
            r.IdVuelo = v.GenerarNumeroVuelo();
            //obtener el numero de asiento
            r.Asiento = v.ObtenerAsiento();
            r.IdPasajero = 0;
            r.CantidadMaletas = Convert.ToInt32(txtcantidad.Text);
            //variable de sesion
            r.idAerolinea = (int)v.ObtenerVariableSesion("ID");
            r.Maleta = dpMaletas.SelectedItem.ToString();
            //metodo para obtener los precios
            double precio = v.Precios(r.Maleta);
            //calculo de precio de maletas
            r.PrecioMaletas = (r.CantidadMaletas * precio);
            r.nombre = txtnombre.Text;

            //catalogo para reservas
            string value2 = v.CatalogoReserva(r);
            
            
        }
    }
}