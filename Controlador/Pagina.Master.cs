using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controlador
{
	public partial class Pagina : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

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
    }
}