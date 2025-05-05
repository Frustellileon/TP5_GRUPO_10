using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Reflection.Emit;

namespace TP5_GRUPO_10
{
    public class ClaseSQL
    {
        ///Atributos de la clase
        private string cadenaConexion = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=True;TrustServerCertificate=True"; 
        private SqlConnection conexion;
        private SqlCommand sqlCommand;
        private SqlDataReader sqlDataReader;
        private SqlDataAdapter sqlDataAdapter;
        private DataSet dataSet;
        private bool estado = false; //Serviria como control para saber si la conexion esta abierta o cerrada
        private int filasAfectadas;

        ///----------------------------------------------------------  Funciones de la clase  --------------------------------------------------------------------------

        //Constructor de la clase
        public ClaseSQL()
        {
            conexion = new SqlConnection(cadenaConexion);
            estado = false;
        }

        public void AbrirConexion()
        {
            conexion.Open();
            estado = true;
        }

        public void CerrarConexion()
        {
            conexion.Close();
            estado = false;
        }

        public DataSet CargarGridView(string consultaSQL)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(consultaSQL, conexion);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            return dataSet;
        }

        public int ejecutarConsulta(string consulta)
        {   
            
            AbrirConexion();

            sqlCommand = new SqlCommand(consulta, conexion);
            filasAfectadas = sqlCommand.ExecuteNonQuery();

            CerrarConexion();

            return filasAfectadas;
            
        }

        public SqlDataReader EjecutarConsultaLectura(string consulta)
        {
            AbrirConexion();
            
            sqlCommand = new SqlCommand(consulta, conexion);
            sqlDataReader = sqlCommand.ExecuteReader();

            return sqlDataReader;
        }


        public DataSet FiltrarSucursalPorId(string consulta, string idSucursal)
        {
            consulta += " WHERE Id_Sucursal = '" + idSucursal + "'";

            AbrirConexion();

            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, conexion);
            DataSet ds = new DataSet();
            
            adaptador.Fill(ds);
            
            CerrarConexion();

            return ds;
        }
    }
}