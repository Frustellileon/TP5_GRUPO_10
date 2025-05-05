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
        .auto-style4 {
            height: 23px;
            width: 290px;
        }
        .auto-style5 {
            width: 259px;
        }
        .auto-style6 {
            height: 23px;
            width: 259px;
        }
        .auto-style7 {
            width: 53px;
        }
        .auto-style8 {
            height: 23px;
            width: 53px;
        }
        .auto-style9 {
            width: 80px;
        }
        .auto-style10 {
            height: 23px;
            width: 80px;
        }
        .auto-style11 {
            width: 230px;
        }
        .auto-style12 {
            width: 290px;
            height: 30px;
        }
        .auto-style13 {
            width: 259px;
            height: 30px;
        }
        .auto-style15 {
            width: 53px;
            height: 30px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            width: 290px;
        }
        .auto-style18 {
            height: 30px;
            width: 80px;
        }
        .auto-style19 {
            width: 170px;
        }
        .auto-style20 {
            width: 202px;
        }
        .auto-style21 {
            width: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="20pt" Text="Listado de sucursales"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Búsqueda ingrese ID sucursal:&nbsp; </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtIdSucursal" runat="server" ValidationGroup="Filtro"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvIdSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Para usar el filtro debe añadir un valor al campo ID sucursal." ValidationGroup="Filtro">*</asp:RequiredFieldValidator>
                    &nbsp;<asp:CustomValidator ID="cv_IdInexistente" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="El ID ingresado no existe." OnServerValidate="cv_IsInexistente_ServerValidate" ValidationGroup="Filtro">*</asp:CustomValidator>
&nbsp;<asp:RegularExpressionValidator ID="rev_VNumerico" runat="server" ControlToValidate="txtIdSucursal" ValidationExpression="^[0-9]+$" ValidationGroup="Filtro" ErrorMessage="El ID deve ser numerico.">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style15">
                        &nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style18">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" ValidationGroup="Filtro" Width="69px" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar todos" />
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Filtro" style="margin-left: 0px" Width="229px" />
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
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
