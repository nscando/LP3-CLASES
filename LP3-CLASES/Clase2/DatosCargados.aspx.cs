using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase2
{
    public partial class DatosCargados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader leerDatos = new StreamReader(this.Server.MapPath(".") + "/datos.txt");

            this.datosCargados.Text = leerDatos.ReadToEnd();

            leerDatos.Close();
        }
    }
}