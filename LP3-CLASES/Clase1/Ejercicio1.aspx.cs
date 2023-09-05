using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase1
{
    public partial class Ejercicio11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void eBtnCalcular(object sender, EventArgs e)
        {
            bool EsNumero(string texto)
            {

                return double.TryParse(texto, out _);
            }

            if (!string.IsNullOrEmpty(num1.Text) && !string.IsNullOrEmpty(num2.Text))
            {
                if (EsNumero(num1.Text) && EsNumero(num2.Text))
                {
                    if (!rbSuma.Checked && !rbResta.Checked && !rbMultiplicacion.Checked && !rbDivision.Checked)
                    {
                        lblResultado.Text = "Selecciona una operación.";
                        return;
                    }

                    double numero1 = Convert.ToDouble(num1.Text);
                    double numero2 = Convert.ToDouble(num2.Text);
                    double resultado = 0;

                    if (rbSuma.Checked)
                    {
                        resultado = numero1 + numero2;
                    }
                    else if (rbResta.Checked)
                    {
                        resultado = numero1 - numero2;
                    }
                    else if (rbMultiplicacion.Checked)
                    {
                        resultado = numero1 * numero2;
                    }
                    else if (rbDivision.Checked)
                    {
                        if (numero2 != 0)
                        {
                            resultado = numero1 / numero2;
                        }
                        else
                        {
                            lblResultado.Text = "No se puede dividir por cero";
                            return;
                        }
                    }
                    lblResultado.Text = "El resultado de su operación es: " + resultado.ToString();

                }
                else
                {
                    lblResultado.Text = "Uno de sus arrays contiene un caracter no numérico";
                }
            }
            else
            {
                lblResultado.Text = "Ingresa valores en ambos campos";
            }

        }
    }
}