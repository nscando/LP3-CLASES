using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase1
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {

        protected void listaTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void btnAltaProducto_Click(object sender, EventArgs e)
        {
            bool EsNumero(string texto)
            {
                return double.TryParse(texto, out _);
            }
            string nombre = txbNombre.Text;
            string descripcion = txbDescripcion.Text;
            string cantidad = txbCantidad.Text;
            string productosAcumulados = "";

            if (!string.IsNullOrEmpty(txbNombre.Text) && !string.IsNullOrEmpty(txbDescripcion.Text) && !string.IsNullOrEmpty(txbCantidad.Text))
            {

                if (EsNumero(cantidad))
                {
                    if (listaTipo.SelectedItem != null)
                    {
                        string tipoProducto = listaTipo.SelectedItem.ToString();



                        productosAcumulados += nombre + " " + descripcion + " " + cantidad + " " + tipoProducto;

                        lblAlta.Text += "<br / >" + productosAcumulados;
                    }
                    else
                    {
                        lblAlta.Text = "Verifique que los campos esten completos ";
                    }
                }
                else
                {
                    lblAlta.Text = "En CANTIDAD ha ingresado un caracter NO VALIDO " + cantidad;
                }

            }
            else
            {
                lblAlta.Text = "Verifique que los campos esten completos ";
            }
        }
    }
}