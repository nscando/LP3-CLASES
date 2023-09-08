using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase2
    {
    public partial class Ejercicio12 : System.Web.UI.Page
        {
        protected void Page_Load ( object sender, EventArgs e )
            {
            if ( !IsPostBack )

                {
                // Verifica si la página se está cargando por primera vez
                // (para evitar cargar las opciones cada vez que se realiza un postback)

                DropDownList2.Items.Add(new ListItem("Ficción"));
                DropDownList2.Items.Add(new ListItem("No ficción"));
                DropDownList2.Items.Add(new ListItem("Misterio"));
                DropDownList2.Items.Add(new ListItem("Fantasía"));
                }
            }

        protected void Button2_Click ( object sender, EventArgs e )
            {

            string generoSeleccionado = DropDownList2.SelectedValue;

            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/archivo.txt", true);
            streamWriter.WriteLine(TextBox1.Text);
            streamWriter.WriteLine(TextBox2.Text);
            streamWriter.WriteLine("Género: " + generoSeleccionado); // Guardar el género seleccionado
            streamWriter.Close();

            LabelResultado.Text = $"Libro cargado correctamente, ruta de archivo.txt {Server.MapPath(".")}.";
        
                
            }
        }
    }