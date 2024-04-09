using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class ConexionDB
    {
        //***********************************************************
        // string de conexion de la base de datos 
        static private string CadenaConexion = @"Data Source=tiusr12pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Initial Catalog=ControladorAereoG8;User ID=controladorG8;Password=G8-1234cuc";
        public SqlConnection Conexion = new SqlConnection(CadenaConexion);
        
        //conexion para poder abrir la base de datos 
        public SqlConnection AbrirConexion()
        {
            if (Conexion.State == ConnectionState.Closed)
                Conexion.Open();
            return Conexion;
        }
        //***********************************************************
        // cierre de la conrxion de la base de datos 
        public SqlConnection CerrarConexion()
        {
            if (Conexion.State == ConnectionState.Open)
                Conexion.Close();
            return Conexion;
        }
        //***********************************************************
    }
}
