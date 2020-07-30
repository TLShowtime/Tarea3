<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebCRUDUsuario.aspx.cs" Inherits="WebCRUDUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usuarios</title>
    <style type="text/css">
        .auto-style1 {
            width: 325px;
        }
        .auto-style2 {
            width: 126px;
        }
        .auto-style3 {
            width: 252px;
        }
        .auto-style4 {
            width: 126px;
            height: 23px;
        }
        .auto-style5 {
            width: 325px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Usuarios:<table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Crear:</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">Cambiar:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre de Usuario:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtNomUsuarioCrear" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">Nombre del usuario que desea cambiar:</td>
                    <td>
                        <asp:TextBox ID="txtNombreUsuarioCambiar" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Contraseña:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtContrasennaCrear" runat="server">0</asp:TextBox>
                    </td>
                    <td class="auto-style3">Nuevo nombre de usuario:</td>
                    <td>
                        <asp:TextBox ID="txtNuevoNombreCambiar" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="listaTipoUsuarioCrear" runat="server">
                            <asp:ListItem>Tipo de Usuario</asp:ListItem>
                            <asp:ListItem>cliente</asp:ListItem>
                            <asp:ListItem>administrador</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtContrasennaCambiar" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnCrear" runat="server" OnClick="btnCrear_Click" Text="Crear" Width="115px" />
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" Width="125px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="listaTipoUsuarioCambiar" runat="server">
                            <asp:ListItem>Tipo de Usuario</asp:ListItem>
                            <asp:ListItem>cliente</asp:ListItem>
                            <asp:ListItem>administrador</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCambiar" runat="server" OnClick="btnCambiar_Click" Text="Cambiar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6" colspan="2"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                <asp:BoundField DataField="Contrasenna" HeaderText="Contrasenna" SortExpression="Contrasenna" />
                                <asp:BoundField DataField="TipoUsuario" HeaderText="TipoUsuario" SortExpression="TipoUsuario" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-1V17TIN;Initial Catalog=Ejemplo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Username, Contrasenna, TipoUsuario FROM Usuario WHERE (Activo = 1)"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style6" colspan="2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
