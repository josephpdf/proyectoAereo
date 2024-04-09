using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controlador
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnregistrarse_Click(object sender, EventArgs e)
        {
			try
			{
				// dirigirse a la pagina de registrarse
                Response.Redirect("Registrarse.aspx");

            }
			catch (Exception ex) 
			{
				Console.WriteLine(ex.ToString());
                Response.Redirect("Registrarse.aspx");
            }
        }
    }
}