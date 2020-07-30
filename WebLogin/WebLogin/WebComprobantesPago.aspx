<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebComprobantesPago.aspx.cs" Inherits="WebComprobantesPago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Comprobantes de Pago</title>
    <style type="text/css">
        .auto-style1 {
            width: 131px;
        }
        .auto-style2 {
            width: 390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">COMPROBANTES DE PAGO:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:GridView ID="listaComprobantes" runat="server" AutoGenerateColumns="False" DataKeyNames="Numero" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="listaComprobantes_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="Numero" HeaderText="Numero" InsertVisible="False" ReadOnly="True" SortExpression="Numero" />
                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                <asp:BoundField DataField="TotalPagado" HeaderText="TotalPagado" SortExpression="TotalPagado" />
                                <asp:CommandField SelectText="Detalle" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=Ejemplo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT ComprobantePago.Id AS Numero, ComprobantePago.Fecha, ComprobantePago.TotalPagado FROM ConceptoCobro INNER JOIN Recibo ON ConceptoCobro.Id = Recibo.ConceptoCobroId INNER JOIN ComprobantePago ON Recibo.ComprobanteId = ComprobantePago.Id INNER JOIN Propiedad ON Recibo.PropiedadId = Propiedad.Id INNER JOIN UsuarioDePropiedad ON Propiedad.Id = UsuarioDePropiedad.PropiedadId INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id WHERE (ComprobantePago.Activo = 1) ORDER BY ComprobantePago.Fecha DESC"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
