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

namespace CapaNegocio
{
    public class UsuariosN
    {
        //variables
        SqlCommand cmdGenero = new SqlCommand();
        SqlCommand cmdPaises = new SqlCommand();
        SqlCommand cmdUsaurio = new SqlCommand();

        ConexionDB Conexion = new ConexionDB();
        
        GeneroE ge=new GeneroE();
        //*****************************************************************
        //metodos
        //metodo para cargar el genero
        #region "MostrarGenero"
        public DataTable D_LoadGenero()
        {
            cmdGenero.Connection = Conexion.AbrirConexion();
            cmdGenero.CommandText = "SPGenero";
            cmdGenero.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmdGenero);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Conexion.CerrarConexion();
            return dt;
        }
        #endregion
        //*****************************************************************
        //metodo para cargar los paises
        #region "MostrarPaises"
        public DataTable D_LoadPaises()
        {
            cmdGenero.Connection = Conexion.AbrirConexion();
            cmdGenero.CommandText = "SPPaises";
            cmdGenero.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmdGenero);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Conexion.CerrarConexion();
            return dt;
        }
        #endregion


        public int BuscarCodigoPais(string Pais)
        {
            return 0;
        }


        public int BuscarGenero(string Genero)
        {
            return 0;
        }
        //*****************************************************************
        //metodo para catalogo de usuarios
        // insertar - borrar y actualizar
        #region CatalogoUsuarios
        public String D_CatalogoUsuarios(UsuarioE obje)
        {
            String accion = "";
            cmdUsaurio.Connection = Conexion.AbrirConexion();
            cmdUsaurio = new SqlCommand("SPMantenimientoUsuarios", Conexion.Conexion);
            cmdUsaurio.CommandType = CommandType.StoredProcedure;
            cmdUsaurio.Parameters.Add(new SqlParameter("@IdUsuario", obje.IdUsuario));
            cmdUsaurio.Parameters.Add(new SqlParameter("@Nombre", obje.Nombre));
            cmdUsaurio.Parameters.Add(new SqlParameter("@Apellido", obje.Apellido));
            cmdUsaurio.Parameters.Add(new SqlParameter("@CodePais", obje.CodePais));
            cmdUsaurio.Parameters.Add(new SqlParameter("@Correo", obje.Correo));
            cmdUsaurio.Parameters.Add(new SqlParameter("@idRol", obje.idRol));
            cmdUsaurio.Parameters.Add(new SqlParameter("@Contrasena", obje.Contrasena));
            cmdUsaurio.Parameters.Add(new SqlParameter("@idGenero", ge.IdGenero));
            cmdUsaurio.Parameters.Add("@accion", SqlDbType.VarChar, 50).Value = obje.accion;
            cmdUsaurio.Parameters["@accion"].Direction = ParameterDirection.InputOutput;
            if (Conexion.Conexion.State == ConnectionState.Open) Conexion.CerrarConexion();
            Conexion.AbrirConexion();
            cmdUsaurio.ExecuteNonQuery();
            accion = cmdUsaurio.Parameters["@accion"].Value.ToString();
            Conexion.CerrarConexion();
            return accion;
        }
        #endregion
    }
}
