﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebAdmin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrador</title>
    <style type="text/css">
        .auto-style1 {
            width: 461px;
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            width: 257px;
        }
        .auto-style4 {
            width: 120px;
            height: 4px;
        }
        .auto-style5 {
            width: 257px;
            height: 4px;
        }
        .auto-style6 {
            height: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">ADMINISTRADOR</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Opciones:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Crear, leer, actualizar y borrar :</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="btnPropietarios" runat="server" OnClick="btnPropietarios_Click" Text="Propietarios" Width="110px" />
                            </td>
                            <td class="auto-style3">
                                <asp:Button ID="btnPvsP" runat="server" OnClick="btnPvsP_Click" Text="Propietarios vs Propiedades" Width="242px" />
                            </td>
                            <td>
                                <asp:Button ID="btnPvsCC" runat="server" OnClick="btnPvsCC_Click" Text="Propiedades vs Concepto Cobro" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style5"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="btnPropiedades" runat="server" OnClick="btnPropiedades_Click" Text="Propiedades" />
                            </td>
                            <td class="auto-style3">
                                <asp:Button ID="btnUvsP" runat="server" OnClick="btnUvsP_Click" Text="Usuarios vs Propiedades" Width="241px" />
                            </td>
                            <td>
                                <asp:Button ID="btnUsuarioCRUD" runat="server" OnClick="Button1_Click" Text="Usuario" Width="276px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    Bitácora de cambios:<br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Bitácora" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>