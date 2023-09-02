using System;

namespace LP3_CLASES.Clase1
    {
    public partial class Ejercicio1 : System.Web.UI.Page
        {


        protected void Button1_Click ( object sender, EventArgs e )
            {

            if ( !int.TryParse(TxtNumero.Text, out int numero) )
                {
                ResultadoLabel.Text = "Ingrese un número válido.";
                return; 
                }

            bool centenasChecked = ChkBxCentena.Checked;
            bool decenasChecked = ChkBxDecena.Checked;
            bool unidadesChecked = ChkBxUnidad.Checked;

            if ( !centenasChecked && !decenasChecked && !unidadesChecked )
                {
                ResultadoLabel.Text = "Seleccione al menos una opción a convertir.";
                return; 
                }

            int centenas = numero / 100;
            int decenas = numero / 10;
            int unidades = numero / 1;

            int resultadoCentenas = 0;
            int resultadoDecenas = 0;
            int resultadoUnidades = 0;

            if ( centenasChecked )
                {
                resultadoCentenas = centenas;
                }

            if ( decenasChecked )
                {
                resultadoDecenas = decenas;
                }

            if ( unidadesChecked )
                {
                resultadoUnidades = unidades;
                }

            string resultadoTexto = "Resultado:";

            if ( centenasChecked )
                {
                resultadoTexto += " Centenas: " + resultadoCentenas;
                }
            if ( decenasChecked )
                {
                resultadoTexto += " Decenas: " + resultadoDecenas;
                }
            if ( unidadesChecked )
                {
                resultadoTexto += " Unidades: " + resultadoUnidades;
                }

            ResultadoLabel.Text = resultadoTexto.TrimEnd(' ');
            }

        }


    }