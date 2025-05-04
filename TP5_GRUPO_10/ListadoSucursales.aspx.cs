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
        private string consultaSQL = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Id_ProvinciaSucursal = Id_Provincia";

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

        //Evento click boton filtrado
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            //Cuando este hecho metan el metodo de filtrado aca.
        }
    }
}