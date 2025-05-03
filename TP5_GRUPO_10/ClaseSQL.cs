using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace TP5_GRUPO_10
{
    public class ClaseSQL
    {
        ///Atributos de la clase
        private string cadenaConexion = "Data Source=DELL-NAHUEL\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=True;TrustServerCertificate=True"; private SqlConnection conexion;
        private SqlCommand sqlCommand;
        private SqlDataReader sqlDataReader;
        private SqlDataAdapter sqlDataAdapter;
        private DataSet dataSet;
        private bool estado = false; //Serviria como control para saber si la conexion esta abierta o cerrada

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

    }
}