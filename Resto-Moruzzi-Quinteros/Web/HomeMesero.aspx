<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/HomeMesero.Master" AutoEventWireup="true" CodeBehind="HomeMesero.aspx.cs" Inherits="Web.HomeMesero1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="color:#000">

    <p class="h2" style="text-align:center"> Bienvenido al menu mesero! </p>
    <p class="h3" style="text-align:center">  </p>

    <h2>MESAS</h2>
    </div>

    <div class="cards-container" style="display:flex">
        <div class="mesa">
            <div class="card text-white bg-success mb-3"  style="width: 18rem; text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 1</h5>
                <a href="#" class="btn btn-primary">Ver</a>
               </div>
            </div>
        </div>

        <div class="mesa">
            <div class="card text-white bg-success mb-3" style="width: 18rem;text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 2</h5>
                <a href="#" class="btn btn-primary">Ver</a>
               </div>
            </div>
        </div>

        <div class="mesa">
            <div class="card text-white bg-success mb-3 " style="width: 18rem;text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 3</h5>
                <a href="#" class="btn btn-primary">Ver</a>
               </div>
            </div>
        </div>

        <div class="mesa">
            <div class="card text-white bg-success mb-3" style="width: 18rem;text-align:center;">
              <div class="card-body">
                <h5 class="card-title">Mesa 4</h5>
                <a href="#" class="btn btn-primary">Ver</a>
               </div>
            </div>
        </div>
    </div>

</asp:Content>