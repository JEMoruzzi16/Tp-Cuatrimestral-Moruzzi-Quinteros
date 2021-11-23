<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarTipoProducto.aspx.cs" Inherits="Web.ABM_aspx.Listar.ListarTipoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Lista Tipo de producto</h2>
    <br />
    <div style="display:flex">
        <div>
            <asp:GridView ID="dgvTipoDeProducto" runat="server"></asp:GridView>
        </div>
    </div>
    <br />
    <div>
        <asp:Button ID="btnCancelar" Text="Volver" OnClick="btnCancelar_Click" runat="server" />
    </div>



</asp:Content>
