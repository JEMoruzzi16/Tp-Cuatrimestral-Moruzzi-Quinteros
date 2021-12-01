<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/HomeMesero.Master" AutoEventWireup="true" CodeBehind="HomeMesero.aspx.cs" Inherits="Web.HomeMesero1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="color:#000">

    <p class="h2" style="text-align:center"> Bienvenido al menu mesero! </p>
    <p class="h3" style="text-align:center">  </p>
    
    <p class="h2" style="text-align:center">MESAS</p>
    
    </div>

    <script>    
        
    </script>



    <div class="cards-container" style="display:flex">
        <div class="mesa">
            <div class="card text-white <%if (lblmesaUnoEstado.Text == "Abierta")
                {%>bg-success mb-3<%}
                else
                {%> bg-danger<%} %>"  style="width: 18rem; text-align:center;">
              <div class="card-body">
                <h5 class="card-title" >Mesa 1</h5>
                  <asp:Label Text="Estado:" ID="label"  runat="server" />
                  <asp:Label  id="lblmesaUnoEstado"  runat="server" ></asp:Label>        
                  <br />
                  <asp:Label Text="Capacidad:" runat="server" />
                  <asp:Label ID="lblCapacidad" runat="server" />
                  <br />
                  <br />
                  <asp:Button Text="Gestionar Pedido" class="btn-info" ID="btnGestionarUno" runat="server" />
                  <br />
                  <br />
                  <asp:Button Text="Abrir Mesa" ID="btnAbrirUno" class="btn-primary" OnClick="btnAbrirUno_Click" runat="server" />
                  <asp:Button Text="Cerrar Mesa" ID="btnCerrarUno" class="btn-primary" OnClick="btnCerrarUno_Click" runat="server" />  
              </div>
            </div>
        </div>

        <div class="mesa">
            <div class="card text-white <%if (lblMesaDosEstado.Text == "Abierta")
                {%> bg-success mb-3<%}
                else
                {%> bg-danger mb-3<%} %>" style="width: 18rem;text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 2</h5>
                  <asp:Label Text="Estado:" ID="label2"  runat="server" />
                  <asp:Label  id="lblMesaDosEstado"  runat="server" ></asp:Label>        
                  <br />
                  <asp:Label Text="Capacidad:" runat="server" />
                  <asp:Label ID="lblCapacidad2" runat="server" />
                  <br />
                  <br />
                  <asp:Button Text="Gestionar Pedido" class="btn-info" ID="btnGestionarDos" runat="server" />
                  <br />
                  <br />
                  <asp:Button Text="Abrir Mesa" ID="btnAbrirDos" OnClick="btnAbrirDos_Click" class="btn-primary" runat="server" />
                  <asp:Button Text="Cerrar Mesa" ID="btnCerrarDos" OnClick="btnCerrarDos_Click" class="btn-primary" runat="server" />  

               </div>
            </div>
        </div>

        <div class="mesa">
            <div class="card text-white <%if (lblMesaTresEstado.Text == "Abierta")
                {%>bg-success<%}
                else
                { %> bg-danger mb-3<%} %> " style="width: 18rem;text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 3</h5>
                <asp:Label Text="Estado:" ID="label1"  runat="server" />
                <asp:Label  id="lblMesaTresEstado"  runat="server" ></asp:Label>        
                <br />
                <asp:Label Text="Capacidad:" runat="server" />
                <asp:Label ID="lblCapacidad3" runat="server" />
                <br />
                <br />
                <asp:Button Text="Gestionar Pedido" class="btn-info" ID="btnGestionarTres"  runat="server" />
                <br />
                <br />
                <asp:Button Text="Abrir Mesa" ID="btnAbrirTres" OnClick="btnAbrirTres_Click" class="btn-primary" runat="server" />
                <asp:Button Text="Cerrar Mesa" ID="btnCerrarTres" OnClick="btnCerrarTres_Click" class="btn-primary" runat="server" />

              </div>
            </div>
        </div>

        <div class="mesa">
            <div class="card text-white <%if (lblMesaCuatroEstado.Text == "Abierta")
                {%> bg-success mb-3<%}
                else
                {%> bg-danger<%}%> " style="width: 18rem;text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 4</h5>
                <asp:Label Text="Estado:" ID="label3"  runat="server" />
                <asp:Label  id="lblMesaCuatroEstado"  runat="server" ></asp:Label>        
                <br />
                <asp:Label Text="Capacidad:" runat="server" />
                <asp:Label ID="lblCapacidad4" runat="server" />
                <br />
                <br />
                <asp:Button Text="Gestionar Pedido" class="btn-info" OnClick="btnGestionarCuatro_Click" ID="btnGestionarCuatro" runat="server" />
                <br />
                <br />
                <asp:Button Text="Abrir Mesa" ID="btnAbrirCuatro" OnClick="btnAbrirCuatro_Click" class="btn-primary" runat="server" />
                <asp:Button Text="Cerrar Mesa" ID="btnCerrarCuatro" OnClick="btnCerrarCuatro_Click" class="btn-primary" runat="server" />
 
              </div>
            </div>
        </div>
    </div>

</asp:Content>