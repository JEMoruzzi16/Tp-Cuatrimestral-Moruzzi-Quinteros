<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarProducto.aspx.cs" Inherits="Web.ModificarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <p class="h2" style="text-align:center">Modificar Plato</p>
    </div>

    <div class="container" style="width:30%">
        <br />

        <div class="input-group mb-3">
         <label class="input-group-text" for="inputGroupSelect01">Categoría</label>
            <asp:DropDownList id="ddlTipoProducto" AutoPostBack="true" class="form-select" 
             OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged"  runat="server" ></asp:DropDownList>
        </div>
        
        <div class="input-group mb-3">
            <label class="input-group-text" for="inputGroupSelect01">Plato</label>
            <asp:DropDownList ID="ddlProducto" class="form-select" runat="server" ></asp:DropDownList>
        </div>

        <div class="input-group mb-3">
            <asp:TextBox ID="txbPrecio" class="form-control" placeholder="Precio"
                aria-label="Recipient's producto" aria-describedby="basic-addon2" runat="server" />
        </div>

        <div class="input-group mb-3">
            <asp:TextBox ID="txtStock" class="form-control" placeholder="Stcok"
              aria-label="Recipient's producto" aria-describedby="basic-addon2" runat="server" />
        </div>

        <div class="input-group mb-3">
            <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" 
               aria-label="Recipient's producto" aria-describedby="basic-addon2" runat="server" />
        </div>
        <div style="display:flex">
            <div style="margin-right:130px">
            <asp:Button Id="btnAceptar" Text="Aceptar" class="btn btn-outline-secondary"  OnClick="btnAceptar_Click" runat="server" />
            </div>
            <div>
                <asp:Button Id="btnCancelar" Text="Cancelar" class="btn btn-outline-secondary"  OnClick="btnCancelar_Click" runat="server" />
            </div>
        </div>
    </div>        
</asp:Content>
