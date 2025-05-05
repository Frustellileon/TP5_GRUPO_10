using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_10
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {



            // Limpio el textbox
            //txtIngresarIdSucursal.Text = "";
        }

        protected void cvSucursalLetra_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string ingreso = txtIngresarIdSucursal.Text;

            if (contieneLetras(ingreso))
                args.IsValid = false;
                            
            else           
                args.IsValid = true;                                           
            
        }

        protected void cvSucursalNumeroNegativo_Cero_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string ingreso = txtIngresarIdSucursal.Text;
            int resultado = esNumeroNegativo_Cero(ingreso);

            if (resultado == -1)
                args.IsValid = false;

            else
                args.IsValid = true;
        }

        protected void cvNumeroFlotante_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            string ingreso = txtIngresarIdSucursal.Text;

            if (esNumeroFlotante(ingreso))
                args.IsValid = false;

            else
                args.IsValid = true;
        }

        protected void cvCaracteresEspeciales_ServerValidate(object source, ServerValidateEventArgs args)
        {            
            string ingreso = txtIngresarIdSucursal.Text;
            if (contieneCaracteresEspeciales(ingreso))
                args.IsValid = false;

            else
                args.IsValid = true;

        }

        private bool contieneLetras(string ingreso)
        {
            foreach (char caracter in ingreso)
            {
                if (char.IsLetter(caracter))
                    return true;
            }

            return false;
        }

        private int esNumeroNegativo_Cero(string ingreso)
        {           

            if (decimal.TryParse(ingreso, NumberStyles.Any, CultureInfo.InvariantCulture, out decimal numero))
            {                  
                if (numero < 1.0m)
                
                    return -1;
                
                else
                    return (int)numero;                                                                  
            }
            
            else
                return 0;
        }        

        private bool esNumeroFlotante(string ingreso)
        {
            bool esFlotante = false;

            if(decimal.TryParse(ingreso, out decimal numero))
            {
                foreach (char caracter in ingreso)
                {   
                    if(caracter == '.')
                    esFlotante = true;
                }
            }

            if (esFlotante)
                return true;
            
            else
                return false;

        }
        private bool contieneCaracteresEspeciales(string ingreso)
        {
            int resultado = esNumeroNegativo_Cero(ingreso);
            
            if (resultado == -1)
                return false;


            int cantidadCaracteres = ingreso.Length;
            bool caracterEspecial = false;
            
            for (int i = 0; i < cantidadCaracteres; i++)
            {   
               if (i >= 1 && i < cantidadCaracteres - 1)
                {
                    if (!char.IsLetterOrDigit(ingreso[i]) &&
                    ingreso[i] != '.')
                    {
                        caracterEspecial = true;
                        break;
                    }
                }
               
                else if (!char.IsLetterOrDigit(ingreso[i]))
                {
                    caracterEspecial = true;
                    break;
                }                                                    
            }

            if (caracterEspecial)
                return true;
            
            else
                return false;

          
        }
    }
}