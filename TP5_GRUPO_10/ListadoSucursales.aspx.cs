using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_10
{
    public partial class ListadoSucursales : System.Web.UI.Page
    { 
        private string consultaSQL = "SELECT * FROM Sucursal";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Creo un objeto de la calse que maneja la conexion
                ClaseSQL claseSQL = new ClaseSQL();

                // Abro la conexion
                claseSQL.AbrirConexion();
                
                // Ejecuto la consulta enviandola al metodo como parametro
                gvSucursales.DataSource = claseSQL.CargarGridView(consultaSQL).Tables[0];
                
                // Muestro la tabla con DataBind
                gvSucursales.DataBind();
                
                // Cierro la conexion
                claseSQL.CerrarConexion();
            }
        }


    }
}