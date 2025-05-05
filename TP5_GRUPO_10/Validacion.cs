using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace TP5_GRUPO_10
{
    public static class Validacion
    {
        public static bool contieneLetras(string ingreso)
        {
            foreach (char caracter in ingreso)
            {
                if (char.IsLetter(caracter))
                    return true;
            }

            return false;
        }

        public static int esNumeroNegativo_Cero(string ingreso)
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

        public static bool esNumeroFlotante(string ingreso)
        {
            bool esFlotante = false;

            if (decimal.TryParse(ingreso, out decimal numero))
            {
                foreach (char caracter in ingreso)
                {
                    if (caracter == '.')
                        esFlotante = true;
                }
            }

            if (esFlotante)
                return true;

            else
                return false;

        }
        public static bool contieneCaracteresEspeciales(string ingreso)
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