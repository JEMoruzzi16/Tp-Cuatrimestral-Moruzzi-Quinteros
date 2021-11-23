<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Web.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
    <h2><%: Title %></h2> 
    <br />
    <asp:Button ID="btnListarProducto"  Text="Listar"  OnClick="btnListar_Click"  runat="server" />
    <asp:Button ID="btnAgregarProducto" Text="Agregar" OnClick="btnAgregar_Click" runat="server" />
    <asp:Button ID="btnModificarProducto" Text="Modificar" OnClick="btnModificarProducto_Click" runat="server" />
    <asp:Button ID="btnEliminarProducto" Text="Eliminar" OnClick="btnEliminarProducto_Click" runat="server" />
    </div>  
    <br /> 
    <div>
        <h2>Tipo de producto</h2>
        <asp:Button ID="btnListarTipo" runat="server" Text="Listar" OnClick="btnListarTipo_Click"/>
        <asp:Button ID="btnAgregarTipo" runat="server" Text="Agregar" OnClick="btnAgregarTipo_Click" />
        <asp:Button ID="btnModificarTipo" runat="server" Text="Modificar" OnClick="btnModificarTipo_Click" />
        <asp:Button ID="btnEliminarTipo" runat="server" Text="Eliminar" OnClick="btnEliminarTipo_Click" />
    
    </div>
</asp:Content>
