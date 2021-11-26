<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;600&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

        <div >      
                   <center>
                  
                      <div class="mb-3">
                          <asp:Label ID="lblUsuario" runat="server" Text="Nombre de Usuario" class="form-label"></asp:Label>
                          <asp:TextBox ID="txtUsuario" runat="server" class="form-control"></asp:TextBox>
                      </div>
                      <div class="mb-3">
                          <asp:Label ID="Label1" runat="server" Text="Contraseña" class="form-label"></asp:Label>
                          <asp:TextBox ID="txtContrasena" runat="server" class="form-control"></asp:TextBox>
                      </div>

                      <asp:Button ID="btnIngresar" runat="server" Text="Ingresar"  OnClick="btnIngresar_Click" class="btn btn-primary"/>
            </center>
        </div>
    </div>
</asp:Content>
