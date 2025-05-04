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
        .auto-style19 {
            width: 88px;
            height: 23px;
        }
        .auto-style20 {
            width: 244px;
            height: 23px;
        }
        .auto-style21 {
            height: 23px;
        }
        .auto-style22 {
            width: 88px;
            height: 30px;
        }
        .auto-style23 {
            width: 244px;
            height: 30px;
        }
        .auto-style24 {
            height: 30px;
        }
        .auto-style25 {
            width: 88px;
            height: 75px;
        }
        .auto-style26 {
            width: 244px;
            height: 75px;
        }
        .auto-style27 {
            height: 75px;
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
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
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
                        <asp:TextBox ID="txtNombreSucursal" runat="server" ValidationGroup="GrupoA"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" Display="Dynamic" ErrorMessage="Ingrese un nombre de sucursal." ValidationGroup="GrupoA">*</asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revNombreS_valido" runat="server" ControlToValidate="txtNombreSucursal" Display="Dynamic" ErrorMessage="El nombre de sucursal ingresado contiene caracteres invalidos." ValidationExpression="^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑüÜ '.\-]+$" ValidationGroup="GrupoA">*</asp:RegularExpressionValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="revNombreS_largo" runat="server" ControlToValidate="txtNombreSucursal" Display="Dynamic" ErrorMessage="El nombre de sucursal ingresado es demaciado corto/largo." ValidationExpression="^[\s\S]{5,50}$" ValidationGroup="GrupoA">*</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Descripcion:</td>
                    <td>
                        <asp:TextBox ID="txtDescripcion" runat="server" Height="33px" TextMode="MultiLine" Width="128px" ValidationGroup="GrupoA"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" ErrorMessage="Ingrese una descripcion." ValidationGroup="GrupoA">*</asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revDescripcion_valido" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" ErrorMessage="La descripcion ingresada contiene caracteres invalidos." ValidationExpression="^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑüÜ .,;'\-()]+$" ValidationGroup="GrupoA">*</asp:RegularExpressionValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="revDescripcion_largo" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" ErrorMessage="La descripcion ingresada es demaciado corta/larga." ValidationExpression="^[\s\S]{10,200}$" ValidationGroup="GrupoA">*</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23">Provincia:</td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlProvincias" runat="server" ValidationGroup="GrupoA">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDdlProvincia" runat="server" ControlToValidate="ddlProvincias" ErrorMessage="Elija una opcion de provincia." InitialValue="0" Display="Dynamic" ValidationGroup="GrupoA">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Direccion:</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" ValidationGroup="GrupoA"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" Display="Dynamic" ErrorMessage="Ingrese una direccion." ValidationGroup="GrupoA">*</asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revDireccion_valida" runat="server" ControlToValidate="txtDireccion" Display="Dynamic" ErrorMessage="La dirección ingresada solo puede contener letras, números, espacios, comas, puntos o guiones, y debe incluir al menos un número." ValidationExpression="^(?=.*\d)[a-zA-Z0-9\s,.-]+$" ValidationGroup="GrupoA">*</asp:RegularExpressionValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="revDireccion_largo" runat="server" ControlToValidate="txtDireccion" Display="Dynamic" ErrorMessage="La direccion ingresada es demacioado corta/larga." ValidationExpression="^[\s\S]{10,100}$" ValidationGroup="GrupoA">*</asp:RegularExpressionValidator>
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
                    <td class="auto-style25"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">
                        <asp:Button ID="btnAceptar" runat="server" Height="29px" Width="86px" Text="Aceptar" OnClick="btnAceptar_Click" ValidationGroup="GrupoA" />
                    </td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="GrupoA" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style21"></td>
                    <td class="auto-style21"></td>
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
