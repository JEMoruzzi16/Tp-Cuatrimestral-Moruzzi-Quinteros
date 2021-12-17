<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/HomeMesero.Master" AutoEventWireup="true" CodeBehind="CerrarPedido.aspx.cs" Inherits="Web.CerrarPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="color:black">

        <div>
            <asp:Label ID="lblPedido" runat="server" Text="Numero de Pedido"></asp:Label>
            <asp:Label ID="lblNroPedido" runat="server" Text="$500" ></asp:Label>
        </div>

        <div>
            <asp:Label ID="lblMontoPedido" runat="server" Text="Monto"></asp:Label>
            <asp:Label ID="lblMonto" runat="server" Text="$500" ></asp:Label>
        </div>
        <div>
            <asp:Label Text="Metodo de Pago" runat="server" />
            <asp:DropDownList ID="ddlMetodoPago" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" class="btn" OnClick="btnCancelar_Click"/>
            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" class="btn" OnClick="btnAceptar_Click"/>
        </div>

    </div>

</asp:Content>
