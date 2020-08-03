using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class PagarRecibos : System.Web.UI.Page
{
    List<int> recibos;
    List<int> recibosSelect;
    int mayor;
    protected void Page_Load(object sender, EventArgs e)
    {
        recibos= new List<int>();
        recibosSelect= new List<int>();
        mayor= 0;
        SqlDataSource1.SelectCommand = "SELECT  Recibo.Id, Usuario.Username, Propiedad.NumeroFinca, Recibo.FechaEmision, Recibo.FechaVencimiento, Recibo.Monto FROM Propiedad INNER JOIN Recibo ON Propiedad.Id = Recibo.PropiedadId INNER JOIN UsuarioDePropiedad INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id ON Propiedad.Id = UsuarioDePropiedad.PropiedadId WHERE (Recibo.Activo = 1) AND (Recibo.Estado=0) AND Usuario.Username LIKE '%" + Convert.ToString(Session["UsuarioSesion"]) + "%' AND Propiedad.NumeroFinca = " + Convert.ToString((int)Session["NumPropiedad"]) + " ORDER BY Recibo.FechaEmision";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int numero = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text);
            recibos.Add(numero);
            Label1.Text = recibos.Count.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count!=0) {
            for (int i = 0; i < recibos.Count; i++) {
                Label1.Text = "medio sirvo";
                if (recibos[i] == mayor && i == recibosSelect.Count) {
                    Session["ReciboGuia"] = mayor;
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
                    con1.Open();
                    SqlCommand cmd = new SqlCommand("SP_Pago_Seleccion_Web", con1);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@inNumFinca", SqlDbType.Int).Value = (int)Session["NumPropiedad"];
                    cmd.Parameters.Add("@inIdReciboMayor", SqlDbType.Int).Value = mayor;
                    cmd.Parameters.Add("@outMontoAPagar", SqlDbType.Int).Value = (int)Session["PagoTotal"];
                    cmd.ExecuteNonQuery();
                    con1.Close();
                    Response.Redirect("PagoFinal.aspx");

                }
                //Label1.Text = "No puede dejar sin seleccionar un recibo que esté \n entre el último que seleccionó y el más antiguo";
            }
        }
        //Label1.Text = "Usted no tiene recibos pendientes";
    }


    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("WebAdmin.aspx");
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedRow.Cells[1].Text;
        if (recibosSelect.Count != 0)
        {
            for (int i = 0; i < recibosSelect.Count; i++)
            {
                Label1.Text = "medio";
                if (recibosSelect[i] != Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text))
                {
                    recibosSelect.Add(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
                    if (Convert.ToInt64(GridView1.SelectedRow.Cells[1].Text) > mayor)
                    {
                        mayor = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
                        Label1.Text = mayor.ToString();
                    }
                }
            }
        }
        else {
            recibosSelect.Add(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
            if (Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text) > mayor)
            {
                mayor = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
                Label1.Text = "mayor";
            }
        }
    }
}
