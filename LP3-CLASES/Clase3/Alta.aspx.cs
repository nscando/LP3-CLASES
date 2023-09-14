using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase3
{
    public partial class Alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String bdAlumnos = System.Configuration.ConfigurationManager.ConnectionStrings["alumnos"].ConnectionString;

            SqlConnection conexion = new SqlConnection(bdAlumnos);

            conexion.Open();

            SqlCommand querySql = new SqlCommand("INSERT INTO alumnos (Dni, Nombre, Apellido, Provincia) " +
                "VALUES ('" + this.txbDni.Text + "','"
                + this.txbNombre.Text + "','"
                + this.txbApellido.Text + "','"
                + this.txbProvincia.Text + "')",
                conexion);

            querySql.ExecuteNonQuery();
            this.mensajeAlerta.Text = "El usuario ha sido insertado de manera correcta";
            conexion.Close();


        }
    }
}