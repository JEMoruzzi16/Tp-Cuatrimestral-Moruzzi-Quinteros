<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Login.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Web.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ups..Hubo un problema</h1>
    <asp:Label Text="text" ID="lblMensaje" runat="server" />
</asp:Content>
