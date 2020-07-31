using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagoFinal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT Recibo.Id, Usuario.Username, Propiedad.NumeroFinca, Recibo.FechaVencimiento, Recibo.FechaEmision, Recibo.Monto, Recibo.Activo FROM Propiedad INNER JOIN ComprobantePago INNER JOIN Recibo ON ComprobantePago.Id = Recibo.ComprobanteId INNER JOIN ConceptoCobro ON Recibo.ConceptoCobroId = ConceptoCobro.Id ON Propiedad.Id = Recibo.PropiedadId INNER JOIN UsuarioDePropiedad INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id ON Propiedad.Id = UsuarioDePropiedad.PropiedadId WHERE (Recibo.Activo = 1) AND (Recibo.Estado = 0) AND Propiedad.NumeroFinca LIKE '%" + (int)Session["NumPropiedad"] + "%' AND  Recibo.Id MINU '%" + (int)Session["ReciboGuia"] + "%' ORDER BY Recibo.FechaEmision";
        SqlDataSource1.DataBind();
    }
}