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
using System.Net;
using System.Net.Mail;
using System.Runtime.InteropServices.WindowsRuntime;
namespace CapaNegocio
{
    public class VuelosN
    {
        //******************************************************
        //variables 
        SqlCommand cmdVuelos = new SqlCommand();
        ConexionDB Conexion = new ConexionDB();
        private SqlDataReader readervuelos;
        //******************************************************
        //metodo para obtener los vuelos
        #region Obtenervuelos
        public DataTable ObetenerVuelos()
        {
            // Crear un DataTable para almacenar los datos
            DataTable dataTable = new DataTable();
            //abrir la conexion de la base de datos
            cmdVuelos.Connection = Conexion.AbrirConexion();
            //nombre del procedimiento almacenado
            cmdVuelos.CommandText = "SPVuelosLoadOferta";
            //comando de procedimento almacenado
            cmdVuelos.CommandType = CommandType.StoredProcedure;
            
            readervuelos = cmdVuelos.ExecuteReader();
            //cargar la tabla
            dataTable.Load(readervuelos);
            //cerrar el reader
            readervuelos.Close();
            //cierra conexion
            Conexion.CerrarConexion();
            return dataTable;
        }
        #endregion
    }
}
