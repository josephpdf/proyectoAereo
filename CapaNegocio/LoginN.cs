using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data.SqlClient;
using System.Data.Sql;
using CapaEntidades;
using System.Reflection.Emit;
using System.Web.SessionState;
using System.Web;
namespace CapaNegocio
{
    public class LoginN
    {
        SqlCommand cmdLogin = new SqlCommand();
        ConexionDB Conexion = new ConexionDB();
        GeneroE genero = new GeneroE();
        UsuarioE usuario = new UsuarioE();
        PaisesE pais = new PaisesE();  
        Roles roles = new Roles();

        //metodo para iniciar sesion
        #region InicioSesion
        public string InicioSesion(LoginE obj) 
        {
           string msj = "";
           cmdLogin.Connection = Conexion.AbrirConexion();
           cmdLogin = new SqlCommand("SP_Loginm", Conexion.Conexion);
           cmdLogin.CommandType = CommandType.StoredProcedure;
           cmdLogin.Parameters.Add(new SqlParameter("@Correo", obj.Email));
           cmdLogin.Parameters.Add(new SqlParameter("@Contrasena", obj.password));
           SqlDataReader sdr = cmdLogin.ExecuteReader();
            if (sdr.Read())
            {
                msj = "";
            }
            else
            {
                msj = "No usuario";
            }
            sdr.Close();
            Conexion.CerrarConexion();


           return msj;
        }
        #endregion
        //**************************************************************************
        #region Buscar el Rol del Usuario
        public string BuscarRol(string email)
        {
            cmdLogin.Connection = Conexion.AbrirConexion();
            cmdLogin = new SqlCommand("SPLoginbyRol", Conexion.Conexion);
            cmdLogin.CommandType = CommandType.StoredProcedure;
            cmdLogin.Parameters.Add(new SqlParameter("@Correo", email));
            SqlDataReader reader = cmdLogin.ExecuteReader();
            if (reader.Read())
            {
                //// Acceder a los datos del país
                usuario.IdUsuario = Convert.ToInt32(reader["IdUsuario"].ToString());
                usuario.Nombre = reader["Nombre"].ToString();
                usuario.Apellido = reader["Apellido"].ToString();
                usuario.Correo = reader["Correo"].ToString();
                pais.NombrePais = reader["Pais"].ToString();
                genero.GeneroT = reader["Genero"].ToString();
                roles.Rol = reader["Rol"].ToString();
                roles.Estado = reader["Estado"].ToString();
            }
            else 
            {
                roles.Rol = "No usuario";
            }
            reader.Close();
            Conexion.CerrarConexion();
            //devuelve el valor del pais.
            return roles.Rol;
        }
        #endregion

        // Método para guardar variables de sesión
        public void GuardarVariableSesion(string email, object valor)
        {
            HttpContext.Current.Session[email] = valor;
        }

        // Método para obtener variables de sesión
        public object ObtenerVariableSesion(string email)
        {
            return HttpContext.Current.Session[email];
        }
    }
}
