<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Web.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h2>Agregar nuevo Plato:</h2>
    <br />
    <div>
        <asp:Label ID="lblIdTipoProduco" runat="server" Text="Categorias:"></asp:Label>
        <asp:DropDownList ID="ddlTipoProducto" AutoPostBack="true" runat="server"  OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged" ></asp:DropDownList>
    </div>
        <%/* %>
    <br />
    <div>
        <asp:Label Text="Plato:" runat="server" />
        <asp:DropDownList ID="ddlProducto" AutoPostBack="false" runat="server"></asp:DropDownList>
    </div><%*/ %>
    <br />
    <div>
        <asp:Label ID="lblPrecio" runat="server" Text="Precio:"></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>

    </div>
    <br />
    <div>
        <asp:Label ID="lblStock" runat="server" Text="Stock:"></asp:Label>
        <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
    </div>
    <br />
    <div>
        <asp:Label ID="lblNombrePlato" runat="server" Text="Nombre del plato:" ></asp:Label>
        <asp:TextBox ID="txtNombrePlato" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="display:flex">
        <div style="margin-right:40px">
        <asp:Button ID="btnAceptar" OnClick="btnAceptar_Click" runat="server" Text="Aceptar" />
        </div>
        <div>
        <asp:Button ID="btnCancelar" Text="Cancelar"  OnClick="btnCancelar_Click" runat="server" />
        </div>
    </div>

</asp:Content>
