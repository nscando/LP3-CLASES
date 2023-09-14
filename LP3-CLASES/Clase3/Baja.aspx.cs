using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_CLASES.Clase3
{
    public partial class Baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String bdAlumnos = System.Configuration.ConfigurationManager.ConnectionStrings["alumnos"].ConnectionString;

            SqlConnection conexion = new SqlConnection(bdAlumnos);

            conexion.Open();

            SqlCommand querySql = new SqlCommand("DELETE FROM alumnos WHERE Dni='" + this.txbDni.Text + "'", conexion);

            int cantidad = querySql.ExecuteNonQuery();

           

            if ( cantidad == 1 )
            {
                
                this.mensajeAlerta.Text = "Usuario Borrado Con Exito.";
            }
            else
            {
                this.mensajeAlerta.Text = "El usuario que intenta eliminar no ha sido encontrado.";

                conexion.Close();

            }

        }
    }
}