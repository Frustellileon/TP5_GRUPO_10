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
        private const string cadenaConexion = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=True;TrustServerCertificate=True"; 
        private readonly SqlConnection conexion;
        private SqlCommand sqlCommand;
        private SqlDataReader sqlDataReader;
        private readonly SqlDataAdapter sqlDataAdapter;
        private readonly DataSet dataSet;
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

        public int EliminarDato(string idSucursal)
        {
            int resultado = 0;
            //Abro coneccion
            AbrirConexion();
            //Mando el comando que quiero que ejecute (borrar con el dato recibido)
            sqlCommand = new SqlCommand("DELETE FROM Sucursal WHERE Id_Sucursal = " + idSucursal.Trim(), conexion);
            //Ejecuto la consulta
            resultado = sqlCommand.ExecuteNonQuery();
            //Cierro coneccion
            CerrarConexion();
            return resultado;
        }


        public bool IdSucursal_Existe(int ID)
        {
            bool existe = false;
            string consultaSQL = "Select id_Sucursal From Sucursal Where id_Sucursal = @ID";
            sqlCommand = new SqlCommand(consultaSQL, conexion);
            sqlCommand.Parameters.AddWithValue("@ID", ID);
            AbrirConexion();
            sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.HasRows)
            {
                existe = true;
            }
            sqlDataReader.Close();
            CerrarConexion();
            return existe;
        }
    }
}