using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using TP5_GRUPO_10;

namespace TP5_GRUPO_10
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {

        private int filasAfectadas;
        private readonly ClaseSQL claseSQL = new ClaseSQL();  // instancia global de la clase para toda la página


        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                CargarProvincias();
            }
        }

        private void CargarProvincias()
        {
            string consulta = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia ORDER BY DescripcionProvincia";

            SqlDataReader reader = claseSQL.EjecutarConsultaLectura(consulta);

            ddlProvincias.DataSource = reader;
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();

            reader.Close(); /// cerramos el data reader primero
            claseSQL.CerrarConexion(); /// Y después la conexión

            ddlProvincias.Items.Insert(0, new ListItem("--Seleccione una provincia--", "0"));
        }


        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //Variables SQL necesarias
            
            string consulta = "Insert into Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('" + txtNombreSucursal.Text + "', '" + txtDescripcion.Text + "', " + ddlProvincias.SelectedValue + ", '" + txtDireccion.Text + "')";
            filasAfectadas = claseSQL.ejecutarConsulta(consulta);

            //Pregunto si se ejecutaron los cambios
            if (filasAfectadas == 1)
            {
                lblMensaje.Text = "Sucursal agregada correctamente";
                LimpiarCampos();

            }
            else
            {
            
            }
        }

        protected void LimpiarCampos()
        {
            txtNombreSucursal.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            ddlProvincias.SelectedIndex = 0;
        }
    }
}