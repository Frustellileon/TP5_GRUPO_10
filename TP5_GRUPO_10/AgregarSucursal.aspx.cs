using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5_GRUPO_10
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        int filasAfectadas;

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
            string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

            string query = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia ORDER BY DescripcionProvincia";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                ddlProvincias.DataSource = reader;
                ddlProvincias.DataTextField = "DescripcionProvincia"; // lo que se muestra en pantalla
                ddlProvincias.DataValueField = "Id_Provincia";        // el ID que se guarda
                ddlProvincias.DataBind();

                con.Close();
            }
            
            // Agregamos la opción inicial
            ddlProvincias.Items.Insert(0, new ListItem("--Seleccione una provincia--", "0"));
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //Variables SQL necesarias
            ClaseSQL conexion = new ClaseSQL();
            string consulta = "Insert into Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('" + txtNombreSucursal.Text + "', '" + txtDescripcion.Text + "', " + ddlProvincias.SelectedValue + ", '" + txtDireccion.Text + "')";
            filasAfectadas = conexion.ejecutarConsulta(consulta);

            //Pregunto si se ejecutaron los cambios
            if (filasAfectadas == 1)
            {
                lblMensaje.Text = "Sucursal agregada correctamente";
            }
        }
    }
}