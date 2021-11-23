<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarTipoProducto.aspx.cs" Inherits="Web.AgregarTipoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />  
    <h2>Agregar nuevo Tipo de Producto</h2>
    <br />  
    <div>
        <asp:GridView ID="dgvTipoDeProducto" runat="server" autoPostBack="true"></asp:GridView>
    </div>
    <br />
    <div>
        <asp:Label ID="lvbNombre" runat="server" Text="Nombre del tipo de producto:"></asp:Label>
        <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblMensaje" runat="server" ></asp:Label>
    
    </div>
    <br />  
    <div style="display:flex">
        <div style="padding-right:40px">
            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click"  />
        </div>
        <div>
            <asp:Button ID="btnCancelar" Text="Cancelar" OnClick="btnCancelar_Click" runat="server" />
        </div>
    
    </div>



</asp:Content>
