using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT Usuario.Username, Propiedad.NumeroFinca, Propiedad.Direccion, Propiedad.Valor FROM Usuario INNER JOIN UsuarioDePropiedad ON Usuario.Id = UsuarioDePropiedad.UsuarioId INNER JOIN Propiedad ON UsuarioDePropiedad.PropiedadId = Propiedad.Id WHERE(UsuarioDePropiedad.Activo = 1) AND Usuario.Username  LIKE '%" + txtUsuarioNombre.Text + "%'";
        SqlDataSource1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["NumPropiedad"] = Convert.ToInt32(listaFincas.SelectedRow.Cells[2].Text);
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        con1.Open();
        SqlCommand cmd = new SqlCommand("SP_Crear_AP_Web", con1);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@inNumFinca", SqlDbType.Int).Value = (int)Session["NumPropiedad"];
        cmd.Parameters.Add("@outMonto", SqlDbType.Int).Value = 0;
        Session["PagoTotal"] = (Int32)cmd.ExecuteNonQuery();
        cmd.ExecuteNonQuery();
        con1.Close();
        Response.Redirect("WebAP.aspx");
    }
}