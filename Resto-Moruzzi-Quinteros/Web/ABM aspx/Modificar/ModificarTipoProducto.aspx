<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarTipoProducto.aspx.cs" Inherits="Web.ABM_aspx.Modificar.ModificarTipoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <div>
        <p class="h2" style="text-align:center"> Modificar Categoría</p>
    </div>
    <div class="container" style="width:30%">
        <br />
        <div class="input-group mb-3">
            <label class="input-group-text" for="inputGroupSelect01">Categoria</label>
            <asp:DropDownList ID="ddlTipos" AutoPostBack="true" class="form-select"
                OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged" runat="server"></asp:DropDownList>
        </div>
        <div class="input-group mb-3">
            <asp:TextBox Id="txtNombre" class="form-control" placeholder="Nombre"
              aria-label="Recipient's producto" aria-describedby="basic-addon2" runat="server" />
        </div>
    
        <div style="display: flex" >
            <div style="margin-right: 140px">
            <asp:Button Id="btnAceptar" Text="Aceptar" class="btn btn-outline-secondary"  OnClick="btnAceptar_Click" runat="server" />
            </div>
            <div>   
                <asp:Button ID="btnCancelar" Text="Cancelar" class="btn btn-outline-secondary"  OnClick="btnCancelar_Click" runat="server" />
            </div>
        </div>




    </div>
</asp:Content>
