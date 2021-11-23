<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarTipoProducto.aspx.cs" Inherits="Web.ABM_aspx.Modificar.ModificarTipoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Modificar tipo de producto</h2>
    <br />
    <div >
    <asp:Label Text="Seleccione el tipo de producto a elegir:" runat="server" />
    </div>
    <br />
    <div>
    <asp:DropDownList ID="ddlTipos"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged"></asp:DropDownList>
    </div>
    <br />
    <asp:Label Text="Ingrese el nuevo nombre para el Tipo de Producto seleccionado:" runat="server" />
    <br />
    <br />
    <div>
        <div>
            <asp:Label ID="lblNombre" Text="Nombre" runat="server" />
            <asp:TextBox Id="txtNombre" runat="server" />
        </div>
    </div>
    
    <br />
    <div style="display: flex" >
        <div style="padding-right: 40px">
        <asp:Button Id="btnAceptar" Text="Aceptar" OnClick="btnAceptar_Click" runat="server" />
        </div>
        <div>   
            <asp:Button ID="btnCancelar" Text="Cancelar" OnClick="btnCancelar_Click" runat="server" />
        </div>
    </div>





</asp:Content>
