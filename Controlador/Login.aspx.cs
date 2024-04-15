using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;
using System.Runtime.InteropServices;
using Controlador.Admin;
using System.EnterpriseServices;

namespace Controlador
{
    public partial class Login : System.Web.UI.Page
    {
        LoginE le =new LoginE();
        LoginN LoginN = new LoginN();   


        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsj.Visible = false;
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //validacion de datos 
            try
            {
                //variables asignadas
                le.Email = txtEmail.Text;
                le.password= txtpass.Text;
                string msj,msj2;
                //******************************************
                //metodo para iniciar sesion
                msj = LoginN.InicioSesion(le);
                
                if (msj == "") 
                {
                    //metodo para buscar el rol del usuario
                    msj2 = LoginN.BuscarRol(le.Email);

                    // en caso de que no se encuentre en el sistema muestra un mensaje de error
                    if(msj2== "No usuario")
                    {
                        Limpiar();
                        lblmsj.Visible = true;
                        lblmsj.Text = "El usuario no esta registrado";
                    }
                    else 
                    {
                        if (msj2 == "Administrador")
                        {
                            lblmsj.Visible = false;
                            Response.Redirect("Admin.aspx");
                            //Response.Redirect("Admin.aspx");
                        }
                        else if (msj2 != "Administrador" && msj2 != "")
                        {
                            lblmsj.Visible = false;
                            Response.Redirect("AdminUsuario.aspx");
                        }
                        else
                        {
                            lblmsj.Visible = false;
                            Response.Redirect("AdminPasajero.aspx");

                        }
                    }
                }
                else 
                {
                    Limpiar();
                    //muestra el mensaje en caso de que el usuario no este
                    lblmsj.Visible= true;
                    lblmsj.Text = "El usuario no esta registrado";
                }

            }
            catch(Exception ex)
            {
                Limpiar();
                Console.WriteLine (ex.ToString());
            }
        }

        private void Limpiar()
        {
            txtEmail.Text = "";
            txtpass.Text = "";
        
        }
    }
}