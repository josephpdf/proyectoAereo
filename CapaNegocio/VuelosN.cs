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
using System.Web;
namespace CapaNegocio
{
    public class VuelosN
    {
        //******************************************************
        //variables 
        SqlCommand cmdVuelos = new SqlCommand();
        SqlCommand cmdMaletas = new SqlCommand();
        ConexionDB Conexion = new ConexionDB();
        private SqlDataReader readervuelos;
        private SqlDataReader readervuelos1;
        VuelosE vuelo = new VuelosE();
        AerolineaE aerolinea=new AerolineaE();
        private Random rnd = new Random();
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

        private List<string> asientosOcupados = new List<string>();

        //metodo para generar los asientos de los vuelos 
        public string ObtenerAsiento()
        {
            // Genera un asiento aleatorio
            Random rnd = new Random();
            int fila = rnd.Next(1, 11); // Supongamos que hay 10 filas
            char columna = (char)rnd.Next('A', 'F'); // Supongamos que hay 6 columnas

            // Concatena fila y columna para formar el asiento
            string nuevoAsiento = fila.ToString() + columna;

            // Verifica si el asiento generado ya está ocupado
            if (!asientosOcupados.Contains(nuevoAsiento))
            {
                // Si no está ocupado, agrega el asiento a la lista de asientos ocupados
                asientosOcupados.Add(nuevoAsiento);
                return nuevoAsiento;
            }
            else
            {
                // Si está ocupado, llama recursivamente al método para obtener otro asiento
                return ObtenerAsiento();
            }
        }
        //***********************************************************
        //terminal aleatorio
        public string ObtenerTerminalAleatoria()
        {
            Random rnd = new Random();

            // Generar una letra aleatoria (A-Z)
            char letra = (char)rnd.Next('A', 'Z' + 1);

            // Generar un número aleatorio (1-9)
            int numero = rnd.Next(1, 10);

            // Combinar la letra y el número para formar la terminal
            string terminal = letra.ToString() + numero.ToString();

            return terminal;
        }
        //***********************************************************
        // Método para guardar variables de sesión
        public void variableCodigoVuelo(string vuelo, object valor)
        {
            HttpContext.Current.Session[vuelo] = valor;
        }
        //***********************************************************
        // Método para obtener variables de sesión
        public object ObtenerVariableSesion(string vuelo)
        {
            return HttpContext.Current.Session[vuelo];
        }
        //***********************************************************
        public List<VuelosE> ObtenerVuelos(int ID)
        {
            List<VuelosE> LPefil = new List<VuelosE>();
            cmdVuelos.Connection = Conexion.AbrirConexion();
            cmdVuelos = new SqlCommand("SPReserva", Conexion.Conexion);
            cmdVuelos.CommandType = CommandType.StoredProcedure;
            cmdVuelos.Parameters.Add(new SqlParameter("@ID", ID));
            SqlDataReader reader = cmdVuelos.ExecuteReader();
            if (reader.Read())
            {
                vuelo.IdAerolinea = Convert.ToInt32(reader["Id Aerolinea"].ToString());
                vuelo.NombreAerolinea = reader["Aerolinea"].ToString();
                vuelo.CodePais = reader["Ida"].ToString();
                vuelo.Horallegada = reader["Hora de llegada"].ToString();
                vuelo.Cod_ISO_3166= reader["Destino"].ToString();
                vuelo.HoraSalida= reader["Hora de salida"].ToString();
                vuelo.PuertaEmbarque= reader["Puerta de Embarque"].ToString();
                LPefil.Add(vuelo);
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
        //******************************************************************************
        //vuelos en aerolinea
        public string SPVueloAerolinea(int ID)
        {
            List<VuelosE> LPefil = new List<VuelosE>();
            cmdVuelos.Connection = Conexion.AbrirConexion();
            cmdVuelos = new SqlCommand("SPVueloAerolinea", Conexion.Conexion);
            cmdVuelos.CommandType = CommandType.StoredProcedure;
            cmdVuelos.Parameters.Add(new SqlParameter("@ID", ID));
            SqlDataReader reader = cmdVuelos.ExecuteReader();
            if (reader.Read())
            {
                aerolinea.IdAerolinea = Convert.ToInt32(reader["Id"].ToString());
                aerolinea.NombreAerolinea = reader["aerolinea"].ToString();                
            }
            else
            {
                return "";
            }
            reader.Close();
            Conexion.CerrarConexion();
            //devuelve el valor del pais.
            return aerolinea.NombreAerolinea;
        }
        //************************************************************************************
        public string GenerarNumeroVuelo()
        {
            
            // Generar un número de vuelo aleatorio
            string numeroVuelo = "FL" + rnd.Next(1000, 10000).ToString();
            return numeroVuelo;
        }
        //************************************************************************************
        //metodo para obtene'r los vuelos
        #region Obtenervuelos
        public DataTable D_LoadMaleta()
        {
            cmdMaletas.Connection = Conexion.AbrirConexion();
            cmdMaletas.CommandText = "SPMaletas";
            cmdMaletas.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmdMaletas);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Conexion.CerrarConexion();
            return dt;
        }
        #endregion
        //************************************************************************************
        public double Precios(string ID)
        {
            List<VuelosE> LPefil = new List<VuelosE>();
            cmdVuelos.Connection = Conexion.AbrirConexion();
            cmdVuelos = new SqlCommand("SPMaletasPrecio", Conexion.Conexion);
            cmdVuelos.CommandType = CommandType.StoredProcedure;
            cmdVuelos.Parameters.Add(new SqlParameter("@Id", ID));
            double precio=0;
            SqlDataReader reader = cmdVuelos.ExecuteReader();
            if (reader.Read())
            {
                precio= Convert.ToDouble(reader["PrecioMaleta"].ToString());
            }
            else
            {
                return precio;
            }
            reader.Close();
            Conexion.CerrarConexion();
            //devuelve el valor del pais.
            return precio;
        }

        public String CatalogoReserva(ReservaE obje)
        {
            String accion = "";

            try
            {
                cmdVuelos.Connection = Conexion.AbrirConexion();
                cmdVuelos = new SqlCommand("SPReservar", Conexion.Conexion);
                cmdVuelos.CommandType = CommandType.StoredProcedure;
                cmdVuelos.Parameters.Add(new SqlParameter("@IdVuelo", obje.IdVuelo));
                cmdVuelos.Parameters.Add(new SqlParameter("@IdPasajero", obje.IdPasajero));
                cmdVuelos.Parameters.Add(new SqlParameter("@Pasajero", obje.nombre));
                cmdVuelos.Parameters.Add(new SqlParameter("@CantidadMaletas", obje.CantidadMaletas));
                cmdVuelos.Parameters.Add(new SqlParameter("@IdAsiento", obje.Asiento));
                cmdVuelos.Parameters.Add(new SqlParameter("@CostoTotalVuelo", obje.Total));
                cmdVuelos.Parameters.Add(new SqlParameter("@CantidadPersonas", obje.CantidadPersonas));
                cmdVuelos.Parameters.Add(new SqlParameter("@IdAerolinea", obje.idAerolinea));
                cmdVuelos.Parameters.Add("@accion", SqlDbType.VarChar, 50).Value = obje.accion;
                cmdVuelos.Parameters["@accion"].Direction = ParameterDirection.InputOutput;
                if (Conexion.Conexion.State == ConnectionState.Open) Conexion.CerrarConexion();
                Conexion.AbrirConexion();
                cmdVuelos.ExecuteNonQuery();
                accion = cmdVuelos.Parameters["@accion"].Value.ToString();
                Conexion.CerrarConexion();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message.ToString());
            }
            return accion;
        }
    }
}
