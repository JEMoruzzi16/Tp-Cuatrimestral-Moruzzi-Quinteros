﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/HomeMesero.Master" AutoEventWireup="true" CodeBehind="ViewMesa.aspx.cs" Inherits="Web.ViewMesa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <br />
    <div style="color: black;text-align:center;" class="h2">
        <asp:Label Text="Mesa " runat="server" />
        <asp:Label id="tituloMesa" runat="server" />
        

    </div>
  
     <div class="container" style="width:30%">
        <br />

        <div class="input-group mb-3">
         <label class="input-group-text" for="inputGroupSelect01">Categoría</label>
            <asp:DropDownList id="ddlTipoProducto"  AutoPostBack="true" class="form-select" 
             OnSelectedIndexChanged="ddlTipoProducto_SelectedIndexChanged"  runat="server" ></asp:DropDownList>
        </div>
        
        <div class="input-group mb-3">
            <label class="input-group-text" for="inputGroupSelect01">Plato</label>
            <asp:DropDownList ID="ddlProducto" class="form-select" runat="server" ></asp:DropDownList>
        </div>

          <div style="display:flex">
            <div style="margin-right:130px">
            <asp:Button Id="btnAgregar" Text="Agregar" class="btn btn-outline-secondary" OnClick="btnAgregar_Click" runat="server" />
            </div>
            <div>
                <asp:Button Id="btnVolver" Text="Volver" class="btn btn-outline-secondary"  OnClick="btnVolver_Click" runat="server" />
            </div>
        </div>
         <br /> 
         <div>
             <p class="h3" style="color:black">Productos Agregados:</p>
         </div>
         <div>
             <asp:GridView ID="dgvProductos" runat="server" class="form-select" OnRowDataBound="dgvProductos_RowDataBound"></asp:GridView>
         </div>

         <div style="color:black;text-align:center" class="Lead" >
             <asp:Label Text="Monto: $" runat="server" />
             <asp:Label Id="lblMonto" runat="server" />
         </div>
         <br />
         <div style="text-align:center">
             <asp:Button ID="btnCerrarPedido" runat="server" Text="Cerrar Pedido" class="btn-primary" OnClick="btnCerrarPedido_Click"/>
         </div>
    </div>






</asp:Content>
