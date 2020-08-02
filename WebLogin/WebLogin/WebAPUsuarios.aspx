<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebAPUsuarios.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 218px;
        }
        .auto-style3 {
            height: 23px;
            width: 218px;
        }
        .auto-style4 {
            width: 1096px;
        }
        .auto-style5 {
            height: 23px;
            width: 1096px;
        }
        .auto-style6 {
            height: 135px;
            width: 218px;
        }
        .auto-style7 {
            height: 135px;
            width: 1096px;
        }
        .auto-style8 {
            height: 135px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5">Usuario:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUsuarioNombre" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="724px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                <asp:BoundField DataField="NumeroFinca" HeaderText="NumeroFinca" SortExpression="NumeroFinca" />
                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=Ejemplo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Usuario.Username, Propiedad.NumeroFinca, Propiedad.Direccion, Propiedad.Valor FROM Usuario INNER JOIN UsuarioDePropiedad ON Usuario.Id = UsuarioDePropiedad.UsuarioId INNER JOIN Propiedad ON UsuarioDePropiedad.PropiedadId = Propiedad.Id WHERE (UsuarioDePropiedad.Activo = 1)"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
