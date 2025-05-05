<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_10.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 22px;
        }
        .auto-style7 {
            width: 170px;
        }
        .auto-style8 {
            width: 230px;
        }
        .auto-style9 {
            width: 202px;
        }
        .auto-style10 {
            width: 173px;
        }
        .auto-style11 {
            width: 214px;
        }
        .auto-style19 {
            width: 10px;
        }
        .auto-style20 {
            width: 150px;
        }
        .auto-style21 {
            width: 127px;
        }
        .auto-style22 {
            width: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlListarSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="20pt" Text="Eliminar Sucursal"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Label ID="lblIngresarID" runat="server" Text="Ingresar ID Sucursal:"></asp:Label>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
