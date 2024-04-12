using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using CapaEntidades;
using CapaNegocio;
namespace Controlador
{
    public partial class Contacto : System.Web.UI.Page
    {
        //******************************************************
        //variables 
        //instancia de contacto
        ContactoE contact = new ContactoE();
        ContactoN cn=new ContactoN();
        string msj = "";
        //******************************************************

        protected void Page_Load(object sender, EventArgs e)
        {
            //desaparece el mensaje
            lblmsj.Visible = false;
        }
        //******************************************************
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            
            //validacion de datos
            try 
            {
                //llamado de las variables 
                contact.Nombre = txtname.Text;
                contact.Asunto =txtAsunto.Text;
                contact.Mensaje = txtmensaje.Text;
                contact.Email = txtemail.Text;
                contact.accion = "1";

                // catalogo de enviar mensaje
                string msj= cn.EnvioCorreo(contact);

                if (msj == "")
                {
                    string msj2 = cn.CatalogoContacto(contact);
                    lblmsj.Visible = true;
                    lblmsj.Text = msj2;
                }
                else 
                {
                    msj = "Error";
                }

                //metodo para limpiar los campos
                limpiaCampos();
            }
            catch(Exception ex) 
            {
                Console.WriteLine(ex.ToString());    
            }
        }
        //******************************************************
        //metodo para limpiar los campos
        public void limpiaCampos()
        {
            txtAsunto.Text = "";
            txtemail.Text = "";
            txtname.Text = "";
            txtmensaje.Text = "";
        }
        //******************************************************
    }
}