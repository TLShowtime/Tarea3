using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagarRecibos : System.Web.UI.Page
{
    int ultimoRecibo=-1;
    List<int> recibos;
    List<int> recibosSelect;
    int mayor=0;
    int ultimoSelect;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT Recibo.Id, Usuario.Username, Propiedad.NumeroFinca, Recibo.FechaVencimiento, Recibo.FechaEmision, Recibo.Monto, Recibo.Activo FROM Propiedad INNER JOIN ComprobantePago INNER JOIN Recibo ON ComprobantePago.Id = Recibo.ComprobanteId INNER JOIN ConceptoCobro ON Recibo.ConceptoCobroId = ConceptoCobro.Id ON Propiedad.Id = Recibo.PropiedadId INNER JOIN UsuarioDePropiedad INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id ON Propiedad.Id = UsuarioDePropiedad.PropiedadId WHERE (Recibo.Activo = 1) AND (Recibo.Estado = 0) AND Propiedad.NumeroFinca LIKE '%" + (int)Session["NumPropiedad"] + "%' ORDER BY Recibo.FechaEmision";
        SqlDataSource1.DataBind();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int numero = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text);
            recibos.Add(numero);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (recibosSelect.Count != 0)
        {
            for (int i = 0; i < recibosSelect.Count; i++)
            {
                if (recibosSelect[i] != Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text))
                {
                    recibosSelect.Add(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
                    if (Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text)>mayor) {
                        mayor = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
                    }
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count!=0) {
            for (int i = 0; i < recibos.Count; i++) {
                if (recibos[i] == mayor && i == recibosSelect.Count) {
                    Session["ReciboGuia"] = mayor;
                    Label1.Text = Convert.ToString(Session["ReciboGuia"]);
                }
                Label1.Text = "No puede dejar sin seleccionar un recibo que esté \n entre el último que seleccionó y el más antiguo";
            }
        }
        Label1.Text = "Usted no tiene recibos pendientes";
    }
   
    }
