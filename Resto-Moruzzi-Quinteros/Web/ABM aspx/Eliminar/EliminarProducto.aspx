<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarProducto.aspx.cs" Inherits="Web.EliminarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h2>Elimar Producto</h2>
    <br />
    <div>
        <div>
            <asp:Label Text="Seleccione una categoria:" runat="server" />
        </div>
        <div>
            <asp:DropDownList ID="ddlTipoProducto" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div>
        <div>
            <asp:Label Text="Seleccione el nombre del plato:" runat="server" />
        </div>
        <div>
            <asp:DropDownList runat="server" ID="ddlProducto"></asp:DropDownList>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div style="display: flex">
        <div style="margin-right:40px">
            <asp:Button ID="btnAceptar" Text="Aceptar" OnClick="btnAceptar_Click" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnCancelar" Text="Cancelar" OnClick="btnCancelar_Click" runat="server" />
        </div>
    </div>
    

</asp:Content>
