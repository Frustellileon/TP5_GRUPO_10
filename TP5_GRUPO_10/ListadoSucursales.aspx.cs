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
        private const string consultaSQL = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Id_ProvinciaSucursal = Id_Provincia";
        private readonly ClaseSQL claseSQL = new ClaseSQL();

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
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
            string idSucursal = txtIdSucursal.Text;

            if (Page.IsValid)
            {
                gvSucursales.DataSource = claseSQL.FiltrarSucursalPorId(consultaSQL, idSucursal).Tables[0];
                gvSucursales.DataBind();

                if (gvSucursales.Rows.Count == 0)
                {
                    lblMensaje.Text = "No fue posible aplicar el filtro de busqueda.";
                }
                else
                {
                    lblMensaje.Text = "El filtro de busqueda pudo aplicarse correctamente.";
                }

            }
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            if (txtIdSucursal.Text != string.Empty)
            {
                lblMensaje.Text = "Vacie el campo de busqueda y vuelva a intentarlo.";
            }
            else if (gvSucursales.Rows.Count != 0 && gvSucursales.Rows.Count != 1)
            {
                lblMensaje.Text = "Ya se estan mostrando todos los registros dentro de la base.";

            }

            else
            {

                gvSucursales.DataSource = claseSQL.CargarGridView(consultaSQL).Tables[0];
                gvSucursales.DataBind();

                if (gvSucursales.Rows.Count == 0)
                {
                    lblMensaje.Text = "No fue posible acceder a los registros de la base de datos.";
                }
                else
                {
                    lblMensaje.Text = "Se pudo acceder a los registros de la base de datos con éxito.";
                }
            }

        }

        protected void  cv_IsInexistente_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Validacion.IDExistente(Page, source, args, txtIdSucursal.Text, claseSQL);
        }

        //void LimpiarCampos()
        //{
          //  txtIdSucursal.Text = string.Empty;
        //}
    }
}
