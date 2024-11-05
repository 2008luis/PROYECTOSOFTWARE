using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ProyectoSoftware
{
  public partial class NewRegisterUser : System.Web.UI.Page
  {
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSQL"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnGuardar_Click(object sender, EventArgs e)
    {
            if (string.IsNullOrEmpty(txtnombre.Text) || string.IsNullOrEmpty(txtMail.Text) || string.IsNullOrEmpty(txtTelefono.Text) || string.IsNullOrEmpty(txtContraseña.Text));
      {
        lbERROR.InnerText = "Todos los campos son requeridos";
        return;
      }
      try
      {
        SqlCommand Command = new SqlCommand("InsertarUsuario", cnn);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.AddWithValue("@nombre", txtnombre.Text);
        Command.Parameters.AddWithValue("@correo", txtMail.Text);
        Command.Parameters.AddWithValue("@Clave", txtContraseña.Text);
        Command.Parameters.AddWithValue("@Telefono", txtTelefono.Text);
        Command.Parameters.AddWithValue("@Tipo", "I");
        cnn.Open();
        int row = Command.ExecuteNonQuery();
        cnn.Close();

        if(row > 0)
        {
          lbBien.InnerText = "Datos Guardados Con Exito";
          return;
        }
        lbERROR.InnerText = "Algo salio mal, por favor vuelva a intentar";
      }
      catch (Exception ex)
      {
        lbERROR.InnerText = $"Ha ocurrido una excepción no controlada; {ex.Message}";
      }
    }
  }
}
