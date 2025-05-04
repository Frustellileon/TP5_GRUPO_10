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
<<<<<<< HEAD
        private const string consultaSQL = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Id_ProvinciaSucursal = Id_Provincia";
        private readonly ClaseSQL claseSQL = new ClaseSQL();
        
=======
        private string consultaSQL = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Id_ProvinciaSucursal = Id_Provincia";
<<<<<<< HEAD
        ClaseSQL claseSQL = new ClaseSQL();
=======
        ClaseSQL cc = new ClaseSQL();
>>>>>>> Validaciones Ejercicio 2 (Es numerico e ID existente) - Se incorpora en la ClaseSQL el metodo para validar existencia de ID .
>>>>>>> Validaciones Ejercicio 2 (Es numerico e ID existente) - Se incorpora en la ClaseSQL el metodo para validar existencia de ID .
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
<<<<<<< HEAD
=======
                // Abro la conexion
                claseSQL.AbrirConexion();
                
>>>>>>> Validaciones Ejercicio 2 (Es numerico e ID existente) - Se incorpora en la ClaseSQL el metodo para validar existencia de ID .
                // Ejecuto la consulta enviandola al metodo como parametro
                gvSucursales.DataSource = claseSQL.CargarGridView(consultaSQL).Tables[0];
                
                // Muestro la tabla con DataBind
                gvSucursales.DataBind();
            }
        }

        //Evento click boton filtrado
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string idSucursal = txtIdSucursal.Text;

            gvSucursales.DataSource = claseSQL.FiltrarSucursalPorId(consultaSQL, idSucursal).Tables[0];
            gvSucursales.DataBind();
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            gvSucursales.DataSource = claseSQL.CargarGridView(consultaSQL).Tables[0];
            gvSucursales.DataBind();
        }

        protected System.Void cv_IsInexistente_ServerValidate(System.Object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (rev_VNumerico.IsValid)
            {

                if (!claseSQL.IdSucursal_Existe(Convert.ToInt32(txtIdSucursal.Text)))
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}