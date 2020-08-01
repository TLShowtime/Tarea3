<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Municipalidad</title>
    <style type="text/css">
        .auto-style4 {
            width: 1572px;
            height: 980px;
        }
        .auto-style6 {
            width: 760px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 75%;
        }
        .auto-style10 {
            width: 10px;
            height: 26px;
        }
        .auto-style11 {
            width: 10px;
        }
        .auto-style12 {
            width: 760px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4" style="background-position: center; background-image: url('Fondo2.jpg'); background-repeat: no-repeat; background-attachment: fixed; font-family: Arial; font-size: 12px; font-weight: normal; font-style: normal; font-variant: normal; color: #000000; width: auto; height: 960px;">
            <br /><br />  
                <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br /><br />   
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
                <table style="font-family: Arial; font-size: medium; font-weight: normal; font-style: normal;" class="auto-style8">
                    <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style12">  
                            &nbsp;</td>
                        <td>
                            Inicio de Sesión:</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style12">  
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style12">  
                            &nbsp;</td>
                        <td>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>  
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style10">  
                        </td>
                        <td class="auto-style6">  
                        </td>
                        <td class="auto-style7">  
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>  
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:TextBox ID="txtContra" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">   
                            &nbsp;</td>
                        <td>
                <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="Button1_Click" Width="127px" />
                            <asp:Label ID="lblLogin" runat="server"></asp:Label>
                        </td>
                    </tr>
            </table>
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
        </div>
    </form>
</body>
</html>
