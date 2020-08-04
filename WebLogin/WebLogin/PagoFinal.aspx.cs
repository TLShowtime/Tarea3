using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagoFinal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT  Recibo.Id, Usuario.Username, Propiedad.NumeroFinca, Recibo.FechaEmision, Recibo.FechaVencimiento, Recibo.Monto FROM Propiedad INNER JOIN Recibo ON Propiedad.Id = Recibo.PropiedadId INNER JOIN UsuarioDePropiedad INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id ON Propiedad.Id = UsuarioDePropiedad.PropiedadId WHERE (Recibo.Activo = 1) AND (Recibo.Estado=0) AND Usuario.Username LIKE '%" + Convert.ToString(Session["UsuarioSesion"]) + "%' AND Propiedad.NumeroFinca  = " + Convert.ToString((int)Session["NumPropiedad"]) + " AND  Recibo.Id  <= " + Convert.ToString((int)Session["ReciboGuia"]) + " ORDER BY Recibo.FechaEmision";
        lblTotalPagar.Text = Convert.ToString(Session["PagoTotal"]);
        SqlDataSource1.DataBind();
    }

    protected void btnPagar_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        con1.Open();
        SqlCommand cmd = new SqlCommand("SP_Pago_Confirmado_Web", con1);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@inNumFinca", SqlDbType.Int).Value = (int)Session["NumPropiedad"];
        cmd.Parameters.Add("@inIdReciboMayor", SqlDbType.Int).Value = (int)Session["ReciboGuia"];
        cmd.Parameters.Add("@inMontoTotal", SqlDbType.Int).Value = (int)Session["PagoTotal"];
        cmd.ExecuteNonQuery();
        con1.Close();
        Response.Redirect("WebAdmin.aspx");

    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        con1.Open();
        SqlCommand cmd = new SqlCommand("SP_Pago_Cancelado_Web", con1);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
        con1.Close();
        Response.Redirect("WebUsuario.aspx");
    }
}