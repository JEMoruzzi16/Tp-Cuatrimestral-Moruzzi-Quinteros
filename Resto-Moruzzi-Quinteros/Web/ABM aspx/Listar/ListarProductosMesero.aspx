<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/HomeMesero.Master" AutoEventWireup="true" CodeBehind="ListarProductosMesero.aspx.cs" Inherits="Web.ABM_aspx.Listar.ListarProductoMesero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <p class="h2" style="text-align:center">Lista de Platos disponibles</p>
    </div>
    <div class="container" style="width:30%">
        <br />
        <div class="input-group mb-3">
           <label class="input-group-text" for="inputGroupSelect01">Categoría</label>            
            <asp:DropDownList ID="ddlTipoProducto" class="form-select" OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged" runat="server" AutoPostBack="true"></asp:DropDownList>    
        </div>

        <div style="display:flex">
            <div >   
            <asp:GridView ID="dgvProductos" runat="server" class="form-select" OnRowDataBound="dgvProductos_RowDataBound"></asp:GridView> 
            </div>
        </div>
        <br />
        <div style="display:flex" >
            <div style="margin-left:115px">
                <asp:Button Text="Volver" ID="btnVolver" class="btn btn-outline-secondary" runat="server" OnClick="btnVolver_Click" />
            </div>
            
        </div>
    </div>
</asp:Content>
