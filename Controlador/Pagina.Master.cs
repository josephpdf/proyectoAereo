﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace Controlador
{
	public partial class Pagina : System.Web.UI.MasterPage
	{
		VuelosN v=new VuelosN();
		protected void Page_Load(object sender, EventArgs e)
		{
			//carga de vuelos
			gdvuelos.DataSource= v.ObetenerVuelos();
			gdvuelos.DataBind();
		}

        protected void btnInicioSesion_Click(object sender, EventArgs e)
        {
			//validacion de datos 
			try 
			{
				Response.Redirect("Login.aspx");
			}
			catch (Exception ex) 
			{
				//error de mensaje que esta lanzando el sistema
				Console.WriteLine(ex.Message);

				Response.Redirect("Error.aspx");
			
			}
        }

        protected void dgVuelos_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void gdvuelos_SelectedIndexChanged(object sender, EventArgs e)
        {
			int indexSeleccionado = gdvuelos.SelectedIndex+1;
			v.variableCodigoVuelo("ID", indexSeleccionado);
			Response.Redirect("Reservas.aspx");
        }
    }
}