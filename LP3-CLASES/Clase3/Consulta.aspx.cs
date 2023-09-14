using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase3
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            string bdAlumnos = System.Configuration.ConfigurationManager.ConnectionStrings["alumnos"].ConnectionString;

            SqlConnection conexion = new SqlConnection(bdAlumnos);

            conexion.Open();

            SqlCommand querySql = new SqlCommand("select * from alumnos " + " where Dni='" + this.txbDni.Text + "'",conexion);

            SqlDataReader lectura = querySql.ExecuteReader();

            if (lectura.Read())
            {
                this.mensajeAlerta.Text = "Nombre: " + lectura["Nombre"] + "<br>" +
                                          "Apellido: " + lectura["Apellido"] + "<br>" +
                                          "Provincia: " + lectura["Provincia"];
            }
            else
                this.mensajeAlerta.Text = "Usuario No registrado, Debe darlo de alta primero";
                conexion.Close();
          }
    }
}