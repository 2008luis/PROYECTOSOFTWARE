using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ProyectoSoftware
{
    public partial class FrmInicio : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSQL"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(pass.Text))
            {
                lbERROR.InnerText = "Todos los campos son requeridos";
                return;
            }
            try
            {
                int idRol=- 1;
                SqlCommand Command = new SqlCommand("ValidarUsuarioRol", cnn);
                Command.CommandType = CommandType.StoredProcedure;
                Command.Parameters.AddWithValue("@nombre_usuario", username.Text);
                Command.Parameters.AddWithValue("@clave_usuario", pass.Text);
                Command.Parameters.AddWithValue("@id_rol", idRol);
                cnn.Open();
                int row = Command.ExecuteNonQuery();
                cnn.Close();
                if (row > 0)
                {
                    lbBien.InnerText = "Ingreso con Éxito";
                    return;
                }
                lbERROR.InnerText = "Revise los Usuarios";
            }
            catch (Exception ex)
            {
                lbERROR.InnerText = $"Ha ocurrido una excepción no controlada; {ex.Message}";
            }
        }
    }
    }
