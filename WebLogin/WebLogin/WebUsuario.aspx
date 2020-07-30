<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebUsuario.aspx.cs" Inherits="WebUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 184px;
        }
        .auto-style3 {
            width: 262px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>USUARIO</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Ver:</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style5">
                                    <asp:Button ID="btnRecibosPen" runat="server" Text="Recibos Pendientes" OnClick="btnRecibosPen_Click" />
                                </td>
                                <td class="auto-style3">
                                    <asp:Button ID="btnComprPago" runat="server" Text="Comprobante de Pago" OnClick="btnComprPago_Click" />
                                </td>
                                <td class="auto-style1">
                                    <asp:Button ID="btnRecibosPag" runat="server" Text="Recibos Pagados" OnClick="btnRecibosPag_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pagar Recibos pendientes" />
                                </td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
