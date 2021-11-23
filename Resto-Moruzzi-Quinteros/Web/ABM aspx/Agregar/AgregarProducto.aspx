<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Web.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <p class="h2" style="text-align:center">Agregar Nuevo Plato:</p>
    </div>
    <div class="container" style="width:30%">
        <br />        
        <div class="input-group mb-3">
            <label class="input-group-text" for="inputGroupSelect01">Categoría</label>
            <asp:DropDownList ID="ddlTipoProducto" class="form-select" AutoPostBack="true" runat="server" 
                OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged" ></asp:DropDownList>
        </div>

            <%/* %>
        <div>
            <asp:DropDownList ID="ddlProducto" AutoPostBack="false" runat="server"></asp:DropDownList>
        </div><%*/ %>
        <div class="input-group mb-3">
            <asp:TextBox ID="txtPrecio" runat="server" class="form-control" placeholder="Precio" aria-label="Recipient's producto" aria-describedby="basic-addon2" ></asp:TextBox>
        </div>

        <div class="input-group mb-3">
            <asp:TextBox ID="txtStock" runat="server" class="form-control" placeholder="Stock"
                aria-label="Recipient's producto" aria-describedby="basic-addon2" ></asp:TextBox>
        </div>
 
        <div>
            <asp:TextBox ID="txtNombrePlato" runat="server" class="form-control" placeholder="Plato" aria-label="Recipient's producto" aria-describedby="basic-addon2"></asp:TextBox>
        </div>
        
        <br />

        <div style="display:flex">
            <div style="margin-right:100px">
            <asp:Button ID="btnAceptar" Text="Aceptar" OnClick="btnAceptar_Click" class="btn btn-outline-secondary" runat="server" />
            </div>
            <div>
            <asp:Button ID="btnCancelar" Text="Cancelar" OnClick="btnCancelar_Click" class="btn btn-outline-secondary" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
