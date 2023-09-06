using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase2
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/contadorVisitas.txt"))
            {
                StreamReader leer1 = new StreamReader(this.Server.MapPath(".") + "/contadorVisitas.txt");

                String valor = leer1.ReadToEnd();

                int contador = int.Parse(valor);

                contador++;

                leer1.Close();

                StreamWriter escribirContador = new StreamWriter(this.Server.MapPath(".") + "/contadorVisitas.txt");

                escribirContador.WriteLine(contador.ToString());

                escribirContador.Close();

                this.lblContador.Text = contador.ToString();
            }
            else
            {
                StreamWriter contador1 = new StreamWriter(this.Server.MapPath(".") + "/contadorVisitas.txt");
                contador1.WriteLine("1");
                contador1.Close();
                this.lblContador.Text = "1";
            }
        }
    }
}