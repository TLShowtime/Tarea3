<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Municipalidad</title>
    <style type="text/css">
        .auto-style1 {
            width: 86px;
        }
        .auto-style2 {
            width: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br /><br />  
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>  
                        </td>
                        <td class="auto-style2">  
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">  
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>  
                        </td>
                        <td class="auto-style2">  
                <asp:TextBox ID="txtContra" runat="server"></asp:TextBox></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">   
                <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="Button1_Click" Width="127px" />
                        </td>
                        <td>
                            <asp:Label ID="lblLogin" runat="server"></asp:Label>
                        </td>
                    </tr>
            </table>
            <br /><br />   
        </div>
    </form>
</body>
</html>
