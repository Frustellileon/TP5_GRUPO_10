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
            width: 251px;
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
        .auto-style20 {
            width: 150px;
        }
        .auto-style22 {
            width: 33px;
        }
        .auto-style27 {
            width: 107px;
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
                    <td class="auto-style10">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
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
                    <td class="auto-style20">
                        <asp:TextBox ID="txtIngresarIdSucursal" runat="server" ValidationGroup="grupoEliminarSucursal" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:CustomValidator ID="cvSucursalNumeroNegativo_Cero" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID debe ser un número igual o mayor a 1." ValidationGroup="grupoEliminarSucursal" OnServerValidate="cvSucursalNumeroNegativo_Cero_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cvNumeroFlotante" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID debe ser un número natural." ValidationGroup="grupoEliminarSucursal" OnServerValidate="cvNumeroFlotante_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cvSucursalLetra" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID no puede contener letras." ValidationGroup="grupoEliminarSucursal" OnServerValidate="cvSucursalLetra_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cvCaracteresEspeciales" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID no puede contener caracteres especiales." ValidationGroup="grupoEliminarSucursal" OnServerValidate="cvCaracteresEspeciales_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
                        <asp:CustomValidator ID="cv_IdInexistente" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="El ID ingresado no existe." OnServerValidate="cv_IdInexistente_ServerValidate" ValidationGroup="grupoEliminarSucursal" Display="Dynamic">*</asp:CustomValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" Width="89px" ValidationGroup="grupoEliminarSucursal" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblConfirmacion" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="grupoEliminarSucursal" />
    </form>
</body>
</html>
