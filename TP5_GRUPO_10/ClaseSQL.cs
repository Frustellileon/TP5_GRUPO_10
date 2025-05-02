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
        private string cadenaConexion = "";
        private SqlConnection conexion;
        private SqlCommand sqlCommand;
        private SqlDataReader sqlDataReader;
        private SqlDataAdapter sqlDataAdapter;
        private DataSet dataSet;
        private bool estado = false; //Serviria como control para saber si la conexion esta abierta o cerrada

        ///----------------------------------------------------------  Funciones de la clase  --------------------------------------------------------------------------

        //Constructor de la clase
        public ClaseSQL(string cadena)
        {
            //Remplaza la url de la coneccion
            cadenaConexion = cadena;

            //Seteo por las dudas el estado inicial en desconectado
            estado = false;
        }
    }
}