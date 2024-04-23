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
        SqlCommand cmdPefil = new SqlCommand();

        ConexionDB Conexion = new ConexionDB();
        // clases
        PerfilE perfil = new PerfilE();
        GeneroE ge=new GeneroE();
        PaisesE pe= new PaisesE();

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
        //*****************************************************************
        //metodo para buscar el pais
        #region BuscarCodigoPais
        public int BuscarCodigoPais(string Pais)
        {

            cmdPaises.Connection = Conexion.AbrirConexion();
            cmdPaises = new SqlCommand("SPPaisXNombre", Conexion.Conexion);
            cmdPaises.CommandType = CommandType.StoredProcedure;
            cmdPaises.Parameters.Add(new SqlParameter("@CodigoPais", Pais));
            SqlDataReader reader = cmdPaises.ExecuteReader();
            while (reader.Read())
            {
                // Acceder a los datos del país
                pe.CodePais = Convert.ToInt32(reader["CodePais"].ToString());

                pe.IdPais = Convert.ToInt32(reader["IdPais"]);

                pe.Cod_ISO_3166 = reader["Cod_ISO_3166"].ToString();

                pe.Cod_ISO = reader["Cod_ISO"].ToString();

                pe.NombrePais = reader["NombrePais"].ToString();

                //Console.WriteLine($"CodePais: {pe.CodePais}, IdPais: {pe.IdPais}, Cod_ISO_3166: {pe.Cod_ISO_3166}, Cod_ISO: {pe.Cod_ISO}, NombrePais: {pe.NombrePais}");
            }
            reader.Close();
            Conexion.CerrarConexion();
            //devuelve el valor del pais.
            return pe.CodePais;
        }
        #endregion
        //*****************************************************************
        //metodo para buscar genero
        #region BuscarGenero
        public int BuscarGenero(string Genero)
        {
            cmdPaises.Connection = Conexion.AbrirConexion();
            cmdPaises = new SqlCommand("SP_GeneroXNombre", Conexion.Conexion);
            cmdPaises.CommandType = CommandType.StoredProcedure;
            cmdPaises.Parameters.Add(new SqlParameter("@TGenero", Genero));
            SqlDataReader reader = cmdPaises.ExecuteReader();
            while (reader.Read())
            {

                // Acceder a los datos del género
                ge.IdGenero = Convert.ToInt32(reader["idGenero"]);
                ge.GeneroT = reader["TGenero"].ToString();
            }
            reader.Close();
            Conexion.CerrarConexion();

            //devuelve el valor del pais.
            return ge.IdGenero;
        }
        #endregion
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
        //******************************************************************************
        #region Pasajeros
        public List<PerfilE> ObtenerPasajero(string email)
        {
            List<PerfilE> LPefil = new List<PerfilE>();
            cmdPefil.Connection = Conexion.AbrirConexion();
            cmdPefil = new SqlCommand("SPPerfil", Conexion.Conexion);
            cmdPefil.CommandType = CommandType.StoredProcedure;
            cmdPefil.Parameters.Add(new SqlParameter("@Correo", email));
            SqlDataReader reader = cmdPefil.ExecuteReader();
            if (reader.Read())
            {
                perfil.IdUsuario = Convert.ToInt32(reader["IdUsuario"].ToString());
                perfil.Nombre = reader["Nombre"].ToString();
                perfil.Apellido = reader["Apellido"].ToString();
                perfil.Correo = reader["Correo"].ToString();
                perfil.NombrePais = reader["Pais"].ToString();
                perfil.GeneroT = reader["Genero"].ToString();
                perfil.Rol = reader["Rol"].ToString();
                perfil.Estado = reader["Estado"].ToString();
                perfil.Contrasena = reader["Contrasena"].ToString();
                LPefil.Add(perfil);
            }
            else
            {
                LPefil = null;
            }
            reader.Close();
            Conexion.CerrarConexion();
            //devuelve el valor del pais.
            return LPefil.ToList();

        }
        #endregion
        //******************************************************************************
        #region "Catalogo de Contacto"
        public String actualizarPerfil(ProfileE obje)
        {
            String accion = "";

            try
            {
                cmdUsaurio.Connection = Conexion.AbrirConexion();
                cmdUsaurio = new SqlCommand("SPPerfilActualizar", Conexion.Conexion);
                cmdUsaurio.CommandType = CommandType.StoredProcedure;
                cmdUsaurio.Parameters.Add(new SqlParameter("@IdUsuario", obje.IdUsuario));
                cmdUsaurio.Parameters.Add(new SqlParameter("@Nombre", obje.Nombre));
                cmdUsaurio.Parameters.Add(new SqlParameter("@Apellido", obje.Apellido));
                cmdUsaurio.Parameters.Add(new SqlParameter("@CodePais", obje.NombrePais));
                cmdUsaurio.Parameters.Add(new SqlParameter("@idRol", obje.Rol));
                cmdUsaurio.Parameters.Add(new SqlParameter("@Contrasena", obje.Contrasena));
                cmdUsaurio.Parameters.Add(new SqlParameter("@Activo", obje.Estado));
                cmdUsaurio.Parameters.Add(new SqlParameter("@idGenero", obje.GeneroT));
                cmdUsaurio.Parameters.Add("@accion", SqlDbType.VarChar, 50).Value = obje.accion;
                cmdUsaurio.Parameters["@accion"].Direction = ParameterDirection.InputOutput;
                if (Conexion.Conexion.State == ConnectionState.Open) Conexion.CerrarConexion();
                Conexion.AbrirConexion();
                cmdUsaurio.ExecuteNonQuery();
                accion = cmdUsaurio.Parameters["@accion"].Value.ToString();
                Conexion.CerrarConexion();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message.ToString());
            }
            return accion;
        }
        #endregion
    }
}
