<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarTipoProducto.aspx.cs" Inherits="Web.ABM_aspx.Eliminar.EliminarTipoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Eliminar producto</h2>
    <br />
    <div>
        <div>
            <asp:Label Text="Seleccionar el Nombre del Tipo de Producto a eliminar:" runat="server" />
        </div>
        <br />
        <div>
            <asp:DropDownList Id="ddlTipo" AutoPostBack="false" runat="server"> </asp:DropDownList>
        </div>
        <br />

        <div style="display:flex">
            <div style="margin-right:40px">
                <asp:Button id="btnEliminar" OnClick="btnEliminar_Click" Text="Eliminar" runat="server" />
            </div>
            <div>
                <asp:Button Text="Cancelar" ID="btnCancelar" OnClick="btnCancelar_Click" runat="server" />
            </div>
        </div>





    </div>

</asp:Content>
