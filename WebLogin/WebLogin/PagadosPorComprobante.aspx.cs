﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT Propiedad.NumeroFinca, Recibo.FechaEmision, Recibo.FechaVencimiento, Recibo.Monto, Recibo.Id FROM Recibo INNER JOIN ComprobantePago ON Recibo.ComprobanteId = ComprobantePago.Id INNER JOIN ConceptoCobro ON Recibo.ConceptoCobroId = ConceptoCobro.Id INNER JOIN Propiedad ON Recibo.PropiedadId = Propiedad.Id INNER JOIN UsuarioDePropiedad ON Propiedad.Id = UsuarioDePropiedad.PropiedadId INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id INNER JOIN PropietarioDePropiedad ON Propiedad.Id = PropietarioDePropiedad.PropiedadId INNER JOIN Propietario ON PropietarioDePropiedad.PropietarioId = Propietario.Id WHERE(Recibo.Activo = 1) AND(Recibo.Estado = 1) AND Usuario.Username LIKE '%" + Convert.ToString(Session["UsuarioSesion"]) + "%' AND ComprobantePago.Id = '%" + (int)Session["Comprobante"] + "%' ORDER BY Recibo.FechaEmision";
        SqlDataSource1.DataBind();
        
    }
}