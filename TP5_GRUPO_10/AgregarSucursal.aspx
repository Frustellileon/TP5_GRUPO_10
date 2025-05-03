<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_10.AgregarSucursal" %>

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
            width: 244px;
        }
        .auto-style3 {
            width: 88px;
        }
        .auto-style9 {
            width: 88px;
            height: 40px;
        }
        .auto-style10 {
            width: 244px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style13 {
            width: 340px;
        }
        .auto-style14 {
            width: 234px;
        }
        .auto-style15 {
            width: 169px;
        }
        .auto-style16 {
            width: 88px;
            height: 26px;
        }
        .auto-style17 {
            width: 244px;
            height: 26px;
        }
        .auto-style18 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">AgregarSucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListadoDeSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Label ID="lblGrupo" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="GRUPO Nº 10"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblAgregarSucursal" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Agregar Sucursal"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Nombre Sucursal:</td>
                    <td>
                        <asp:TextBox ID="txtNombreSucursal" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal">Ingrese un nombre de sucursal</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Descripcion:</td>
                    <td>
                        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion">Ingrese una descripcion</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Provincia:</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Direccion:</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion">Ingrese una direccion</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnACeptar" runat="server" Height="29px" Text="Aceptar" Width="86px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
