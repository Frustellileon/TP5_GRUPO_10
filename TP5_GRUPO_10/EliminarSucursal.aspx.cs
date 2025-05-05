using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_10
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        private readonly ClaseSQL claseSQL = new ClaseSQL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            


            // Limpio el textbox
            //txtIngresarIdSucursal.Text = "";
        }

        protected void cvSucursalLetra_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string ingreso = txtIngresarIdSucursal.Text;

            if (Validacion.contieneLetras(ingreso))
                args.IsValid = false;

            else
                args.IsValid = true;

        }

        protected void cvSucursalNumeroNegativo_Cero_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string ingreso = txtIngresarIdSucursal.Text;
            int resultado = Validacion.esNumeroNegativo_Cero(ingreso);

            if (resultado == -1)
                args.IsValid = false;

            else
                args.IsValid = true;
        }

        protected void cvNumeroFlotante_ServerValidate(object source, ServerValidateEventArgs args)
        {

            string ingreso = txtIngresarIdSucursal.Text;

            if (Validacion.esNumeroFlotante(ingreso))
                args.IsValid = false;

            else
                args.IsValid = true;
        }

        protected void cvCaracteresEspeciales_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string ingreso = txtIngresarIdSucursal.Text;
            if (Validacion.contieneCaracteresEspeciales(ingreso))
                args.IsValid = false;

            else
                args.IsValid = true;

        }

        
    }
}