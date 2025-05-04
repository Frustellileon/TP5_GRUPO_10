<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5_GRUPO_10.ListadoSucursales" %>

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
            height: 23px;
        }
        .auto-style3 {
            width: 260px;
        }
        .auto-style4 {
            height: 23px;
            width: 260px;
        }
        .auto-style5 {
            width: 150px;
        }
        .auto-style6 {
            height: 23px;
            width: 150px;
        }
        .auto-style7 {
            width: 10px;
        }
        .auto-style8 {
            height: 23px;
            width: 10px;
        }
        .auto-style9 {
            width: 85px;
        }
        .auto-style10 {
            height: 23px;
            width: 85px;
        }
        .auto-style11 {
            width: 170px;
        }
        .auto-style12 {
            width: 260px;
            height: 30px;
        }
        .auto-style13 {
            width: 150px;
            height: 30px;
        }
        .auto-style14 {
            width: 10px;
            height: 30px;
        }
        .auto-style15 {
            width: 85px;
            height: 30px;
        }
        .auto-style16 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="20pt" Text="Listado de sucursales"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="Filtro" />
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Búsqueda ingrese ID sucursal:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtIdSucursal" runat="server" ValidationGroup="Filtro"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvIdSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Para usar el filtro debe añadir un valor al campo ID sucursal." ValidationGroup="Filtro">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" ValidationGroup="Filtro" Width="69px" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar todos" />
                    </td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="gvSucursales" runat="server" >
        </asp:GridView>
    </form>
</body>
</html>
