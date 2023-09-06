using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase2
{
    public partial class CargarDatosCv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string otrosComentarios = txaOtrosComentarios.Value;
            /*Cuando se presiona el botón confirmar creamos un objeto de la clase StreamWriter y le
pasamos en el constructor el path y nombre del archivo a abrir o crear según sea el caso.
Para obtener el directorio actual utilizamos el método MapPath del objeto Server*/
            StreamWriter datosCv = new StreamWriter(this.Server.MapPath(".") + "/datos.txt", true);

            datosCv.WriteLine("Nombre: " + this.txbNombre.Text + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("Apellido: " + this.txbApellido.Text + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("Dni: " + this.txbDni.Text + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("Email: " + this.txbEmail.Text + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("Ciudad: " + this.txbCiudad.Text + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("Area para la que se postula: " + this.txbArea.Text + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("Otros Comentarios: " + otrosComentarios  + "\n");
            datosCv.WriteLine("<br>");
            datosCv.WriteLine("<hr>");
            datosCv.Close();
            this.lblMensaje.Text = "¡Datos Cargados Correctamente!";






        }
    }
}