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
    public partial class Perfil : System.Web.UI.Page
    {
       
        LoginN login=new LoginN();
        UsuariosN usuarios = new UsuariosN();
        PerfilE peE = new PerfilE();
        ProfileE profileE = new ProfileE();
        

        protected void Page_Load(object sender, EventArgs e)
        {

            // cargar el genero
            DpGenero.DataSource = usuarios.D_LoadGenero();
            DpGenero.DataTextField = "Genero";
            DpGenero.DataValueField = "ID Genero";
            DpGenero.DataBind();

            //cargar los paises
            DpCodePais.DataSource = usuarios.D_LoadPaises();
            DpCodePais.DataTextField = "NombrePais";
            DpCodePais.DataValueField = "CodePais";
            DpCodePais.DataBind();

            //metodo para obtener el correo.
            peE.Correo = (string)login.ObtenerVariableSesion("Correo");
            //metodo lista para llenar los campos
            List<PerfilE> LPerfil = usuarios.ObtenerPasajero(peE.Correo);

           //*****************************************************
           foreach (PerfilE pe2 in LPerfil)
            {
                peE.IdUsuario = pe2.IdUsuario;
                peE.Nombre = pe2.Nombre;
                peE.Apellido = pe2.Apellido;
                peE.NombrePais = pe2.NombrePais;
                peE.GeneroT = pe2.GeneroT;
                peE.Rol = pe2.Rol;
                peE.Estado = pe2.Estado;
                peE.Contrasena = pe2.Contrasena;
            }
            //*****************************************************

            txtIDusuario.Text = Convert.ToInt32(peE.IdUsuario).ToString();
            txtNombre.Text = peE.Nombre;
            txtApellido.Text = peE.Apellido;
            DpCodePais.Text = peE.NombrePais;
            DpGenero.Text = peE.GeneroT;
            txtCorreo.Text = peE.Correo;

        }
        //*********************************************************************************
        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            profileE.IdUsuario = Convert.ToInt32(txtIDusuario.Text);
            profileE.Nombre = txtNombre.Text;
            profileE.Apellido= txtApellido.Text;
            profileE.Correo=txtCorreo.Text;
            string Pais = DpCodePais.SelectedItem.ToString();
            string genero = DpGenero.SelectedItem.ToString();
            //metodo para buscar el codigo del pais
            int code = usuarios.BuscarCodigoPais(Pais);
            //metodo para buscar el genero.
            int genre = usuarios.BuscarGenero(genero);
            profileE.Contrasena = peE.Contrasena;
            profileE.accion = "2";
            //si esta activo entonces es 1 sino es 0
            if (peE.Estado == "Activo")
                profileE.Estado = true;
            else
                profileE.Estado= false;
            //metodo para actualizar la informacion
            usuarios.actualizarPerfil(profileE); 

        }
        //*********************************************************************************
    }
}