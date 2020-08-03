<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebRecibosPendientes.aspx.cs" Inherits="WebRecibosPagados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 110px;
        }
        .auto-style2 {
            width: 488px;
        }
        .auto-style3 {
            width: 110px;
            height: 23px;
        }
        .auto-style4 {
            width: 488px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">RECIBOS PENDIENTES:</td>
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
                        <asp:ListView ID="listaPendientes" runat="server" DataSourceID="SqlDataSource1" Enabled="False">
                            <AlternatingItemTemplate>
                                <li style="background-color: #FFF8DC;">NumeroFinca:
                                    <asp:Label ID="NumeroFincaLabel" runat="server" Text='<%# Eval("NumeroFinca") %>' />
                                    <br />
                                    FechaEmision:
                                    <asp:Label ID="FechaEmisionLabel" runat="server" Text='<%# Eval("FechaEmision") %>' />
                                    <br />
                                    FechaVencimiento:
                                    <asp:Label ID="FechaVencimientoLabel" runat="server" Text='<%# Eval("FechaVencimiento") %>' />
                                    <br />
                                    Monto:
                                    <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                                    <br />
                                </li>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <li style="background-color: #008A8C;color: #FFFFFF;">NumeroFinca:
                                    <asp:TextBox ID="NumeroFincaTextBox" runat="server" Text='<%# Bind("NumeroFinca") %>' />
                                    <br />
                                    FechaEmision:
                                    <asp:TextBox ID="FechaEmisionTextBox" runat="server" Text='<%# Bind("FechaEmision") %>' />
                                    <br />
                                    FechaVencimiento:
                                    <asp:TextBox ID="FechaVencimientoTextBox" runat="server" Text='<%# Bind("FechaVencimiento") %>' />
                                    <br />
                                    Monto:
                                    <asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                </li>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                No se han devuelto datos.
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <li style="">NumeroFinca:
                                    <asp:TextBox ID="NumeroFincaTextBox" runat="server" Text='<%# Bind("NumeroFinca") %>' />
                                    <br />
                                    FechaEmision:
                                    <asp:TextBox ID="FechaEmisionTextBox" runat="server" Text='<%# Bind("FechaEmision") %>' />
                                    <br />
                                    FechaVencimiento:
                                    <asp:TextBox ID="FechaVencimientoTextBox" runat="server" Text='<%# Bind("FechaVencimiento") %>' />
                                    <br />
                                    Monto:
                                    <asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                </li>
                            </InsertItemTemplate>
                            <ItemSeparatorTemplate>
                                <br />
                            </ItemSeparatorTemplate>
                            <ItemTemplate>
                                <li style="background-color: #DCDCDC;color: #000000;">NumeroFinca:
                                    <asp:Label ID="NumeroFincaLabel" runat="server" Text='<%# Eval("NumeroFinca") %>' />
                                    <br />
                                    FechaEmision:
                                    <asp:Label ID="FechaEmisionLabel" runat="server" Text='<%# Eval("FechaEmision") %>' />
                                    <br />
                                    FechaVencimiento:
                                    <asp:Label ID="FechaVencimientoLabel" runat="server" Text='<%# Eval("FechaVencimiento") %>' />
                                    <br />
                                    Monto:
                                    <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                                    <br />
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">NumeroFinca:
                                    <asp:Label ID="NumeroFincaLabel" runat="server" Text='<%# Eval("NumeroFinca") %>' />
                                    <br />
                                    FechaEmision:
                                    <asp:Label ID="FechaEmisionLabel" runat="server" Text='<%# Eval("FechaEmision") %>' />
                                    <br />
                                    FechaVencimiento:
                                    <asp:Label ID="FechaVencimientoLabel" runat="server" Text='<%# Eval("FechaVencimiento") %>' />
                                    <br />
                                    Monto:
                                    <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                                    <br />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=Ejemplo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Propiedad.NumeroFinca, Recibo.FechaEmision, Recibo.FechaVencimiento, Recibo.Monto FROM Propiedad INNER JOIN Recibo ON Propiedad.Id = Recibo.PropiedadId INNER JOIN UsuarioDePropiedad INNER JOIN Usuario ON UsuarioDePropiedad.UsuarioId = Usuario.Id ON Propiedad.Id = UsuarioDePropiedad.PropiedadId WHERE (Recibo.Activo = 1) AND (Recibo.Estado = 0) ORDER BY Recibo.FechaEmision"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
