using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using CapaEntidades;
using CapaNegocio;


namespace Controlador
{
    public partial class Registrarse : System.Web.UI.Page
    {
        UsuarioE ue= new UsuarioE();
        UsuariosN personasN = new UsuariosN();
        GeneroE ge=new GeneroE();

        protected void Page_Load(object sender, EventArgs e)
        {

            // cargar el genero
            DPGenero.DataSource = personasN.D_LoadGenero();
            DPGenero.DataTextField = "Genero";
            DPGenero.DataValueField = "ID Genero";
            DPGenero.DataBind();

            //cargar los paises
            DpPaises.DataSource = personasN.D_LoadPaises();
            DpPaises.DataTextField = "NombrePais";
            DpPaises.DataValueField = "CodePais";
            DpPaises.DataBind();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //validacion de datos
            try 
            {
                string Pais = DpPaises.SelectedItem.ToString();
                string genero = DPGenero.SelectedItem.ToString();

                //asigancion de variables
                ue.Nombre = txtname.Text;
                ue.Apellido = txtApellido.Text;
                ue.Correo = txtEmail.Text;
                ue.Contrasena=txtContraseña.Text;
                ue.idRol = 0;
                ue.IdUsuario = 0;
                //metodo para traer el codigo del pais
                ue.CodePais= personasN.BuscarCodigoPais(Pais);

                ge.IdGenero= personasN.BuscarGenero(genero);
                ue.accion = "1";

                string msj = personasN.D_CatalogoUsuarios(ue);
            }
            catch (Exception ex) 
            {
                
            
            }
        }
    }
}