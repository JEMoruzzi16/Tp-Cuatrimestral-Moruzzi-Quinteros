<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarProducto.aspx.cs" Inherits="Web.ModificarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h2>Modificar producto existente</h2>
    <br />
    <asp:Label Text="Seleccione una categoria:" runat="server" />
    <br />
    <div>
        <asp:DropDownList runat="server" id="ddlTipoProducto" AutoPostBack="true" 
            OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged" ></asp:DropDownList>
    </div>
    <br />
    <asp:Label Text="Seleccione el Plato:" runat="server" />
    <div>
        <asp:DropDownList runat="server" ID="ddlProducto"></asp:DropDownList>
    </div>
    <br />
    <asp:Label Text="Ingrese un precio:" runat="server" />
    <div>
        <asp:TextBox ID="txbPrecio" runat="server" />
    </div>
    <br />
    <asp:Label Text="Ingrese el stock:" runat="server" />
    <div>
        <asp:TextBox ID="txtStock" runat="server" />
    </div>
    <br />
    <asp:Label Text="Ingrese un nuevo nombre:" runat="server" />
    <div>
        <asp:TextBox ID="txtNombre" runat="server" />
    </div>
    <br />
    
    <asp:Button Id="btnAceptar" Text="Aceptar" OnClick="btnAceptar_Click" runat="server" />
    <asp:Button Id="btnCancelar" Text="Cancelar" OnClick="btnCancelar_Click" runat="server" />
   </asp:Content>
