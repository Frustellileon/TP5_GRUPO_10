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
        .auto-style3 {
            width: 224px;
        }
        .auto-style4 {
            width: 47px;
        }
        .auto-style6 {
            width: 269px;
        }
        .auto-style8 {
            width: 151px;
        }
        .auto-style11 {
            width: 22px;
            height: 19px;
        }
        .auto-style12 {
            width: 224px;
            height: 19px;
        }
        .auto-style13 {
            width: 151px;
            height: 19px;
        }
        .auto-style14 {
            width: 45px;
            height: 19px;
        }
        .auto-style15 {
            height: 19px;
        }
        .auto-style16 {
            width: 45px;
        }
        .auto-style17 {
            width: 237px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">AgregarSucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="hlListarSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">ListarSucursales</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="20pt" Text="Eliminar Sucursal"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtIngresarIdSucursal" runat="server" Width="162px" ValidationGroup="grupoEliminarSucursal" Height="22px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:CustomValidator ID="cvSucursalNumeroNegativo_Cero" runat="server" ControlToValidate="txtIngresarIdSucursal" OnServerValidate="cvSucursalNumeroNegativo_Cero_ServerValidate" ValidationGroup="grupoEliminarSucursal" ErrorMessage="El ID debe ser un número igual o mayor a 1.">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cvNumeroFlotante" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID debe ser un número natural." OnServerValidate="cvNumeroFlotante_ServerValidate" ValidationGroup="grupoEliminarSucursal">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cvSucursalLetra" runat="server" ControlToValidate="txtIngresarIdSucursal" OnServerValidate="cvSucursalLetra_ServerValidate" ValidationGroup="grupoEliminarSucursal" ErrorMessage="El ID no puede contener letras.">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cvCaracteresEspeciales" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID no puede contener caracteres especiales." OnServerValidate="cvCaracteresEspeciales_ServerValidate" ValidationGroup="grupoEliminarSucursal">*</asp:CustomValidator>
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" ValidationGroup="grupoEliminarSucursal" Width="90px" />
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="vsEliminarSucursal" runat="server" ShowMessageBox="True" ValidationGroup="grupoEliminarSucursal" />
    </form>
</body>
</html>
