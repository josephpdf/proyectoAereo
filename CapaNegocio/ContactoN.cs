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
    public class ContactoN
    {
        //*********************************************************
        //variables
        SqlCommand cmdContacto = new SqlCommand();
        ConexionDB Conexion = new ConexionDB();

        //********************************************************************************************
        //catalogo de Contacto
        #region "Catalogo de Contacto"
        public String CatalogoContacto(ContactoE obje)
        {
            String accion = "";

            try
            {
                cmdContacto.Connection = Conexion.AbrirConexion();
                cmdContacto = new SqlCommand("SPMantenimientoContacto", Conexion.Conexion);
                cmdContacto.CommandType = CommandType.StoredProcedure;
                cmdContacto.Parameters.Add(new SqlParameter("@Nombre", obje.Nombre));
                cmdContacto.Parameters.Add(new SqlParameter("@Email", obje.Email));
                cmdContacto.Parameters.Add(new SqlParameter("@Asunto", obje.Asunto));
                cmdContacto.Parameters.Add(new SqlParameter("@Mensaje", obje.Mensaje));
                cmdContacto.Parameters.Add("@accion", SqlDbType.VarChar, 50).Value = obje.accion;
                cmdContacto.Parameters["@accion"].Direction = ParameterDirection.InputOutput;
                if (Conexion.Conexion.State == ConnectionState.Open) Conexion.CerrarConexion();
                Conexion.AbrirConexion();
                cmdContacto.ExecuteNonQuery();
                accion = cmdContacto.Parameters["@accion"].Value.ToString();
                Conexion.CerrarConexion();
            }
            catch (Exception e) 
            {
                Console.WriteLine(e.Message.ToString());
            }
            return accion;
        }
        #endregion
        //********************************************************************************************
        //metodo para enviar correos electronicos
        #region Envio de Correos de Soporte
        public string  EnvioCorreo(ContactoE cE)
        {
            string msj = "";
            // Configuración del servidor SMTP y credenciales
            string smtpServer = "smtp.gmail.com";
            int port = 587; // Puerto para TLS
            string senderEmail = "skyguardiang@gmail.com";
            string password = "pyjr vvub eama bwcu";

            // Dirección de correo electrónico del destinatario
            string recipientEmail = cE.Email;

            // Crear un objeto de mensaje
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(senderEmail);
            mail.To.Add(new MailAddress(recipientEmail));
            mail.Subject = cE.Asunto;
            mail.Body = cE.Mensaje;

            // Configurar el cliente SMTP
            SmtpClient smtpClient = new SmtpClient(smtpServer);
            smtpClient.Port = port;
            smtpClient.Credentials = new NetworkCredential(senderEmail, password);
            smtpClient.EnableSsl = true; // Habilitar SSL/TLS

            //validacion de datos 
            try
            {
                // Enviar el correo electrónico
                smtpClient.Send(mail);
                msj="";
            }
            catch (Exception ex)
            {
                msj= "Error";
            }
            
            return msj;
        }
        #endregion
        //********************************************************************************************
    }
}
