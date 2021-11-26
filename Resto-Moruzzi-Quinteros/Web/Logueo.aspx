﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Login.Master" AutoEventWireup="true" CodeBehind="Logueo.aspx.cs" Inherits="Web.Logueo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="row g-0">
            <div class="col-lg-7 d-none d-lg-block">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item img-1 min-vh-100 active">
                            <div class="carousel-caption d-none d-md-block">
                                <h5 class="font-weight-bold">La app más potente del mercado</h5>
                                <a class="text-muted text-decoration-none">Tu resto al siguiente nivel</a>
                            </div>
                        </div>
                        <div class="carousel-item img-2 min-vh-100">
                            <div class="carousel-caption d-none d-md-block">
                                <h5 class="font-weight-bold">Descubre la nueva generación de Tecnología del Managment</h5>
                                <a class="text-muted text-decoration-none">Tu resto al siguiente nivel</a>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col-lg-5 bg-dark d-flex flex-column align-items-end min-vh-100">
                <div class="px-lg-5 pt-lg-4 pb-lg-3 p-4 mb-auto w-100">
                    <img src="img/Logo.svg.png" class="img-fluid" />
                </div>
                <div class="align-self-center w-100 px-lg-5 py-lg-4 p-4">
                    <h1 class="font-weight-bold mb-4">Bienvenido de vuelta</h1>
                    <div class="mb-5">
                        <div class="mb-4">
                            <asp:Label Text="Usuario" runat="server" class="form-label font-weight-bold"/>
                            <asp:TextBox ID="txtUsuario" runat="server" class="form-control bg-dark-x border-0" placeholder="Ingresa tu usuario" aria-describedby="UserHelp"></asp:TextBox>
                        </div>
                        <div class="mb-4">                            
                            <asp:Label ID="lblPassword" runat="server" Text="Contraseña" class="form-label font-weight-bold"></asp:Label>
                            <asp:TextBox ID="exampleInputPassword1" runat="server" class="form-control bg-dark-x border-0 mb-2" Placeholder="Ingresa tu contraseña"></asp:TextBox>
                            <a href="#" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado tu contraseña?</a>
                        </div>
                        <asp:Button ID="btnSubmit" runat="server" Text="Iniciar sesión" class="btn btn-primary w-100"/>
                    </div>
                    <!-- 
                <p class="font-weight-bold text-center text-muted">O inicia sesión con</p>
                <div class="d-flex justify-content-around">
                    <button type="button" class="btn btn-outline-light flex-grow-1 mr-2"><i class="fab fa-google lead mr-2"></i> Google</button>
                    <button type="button" class="btn btn-outline-light flex-grow-1 ml-2"><i class="fab fa-facebook-f lead mr-2"></i> Facebook</button>
                </div>
                </div>
                <div class="text-center px-lg-5 pt-lg-3 pb-lg-4 p-4 mt-auto w-100">
                    <p class="d-inline-block mb-0">¿Todavia no tienes una cuenta?</p> <a href="" class="text-light font-weight-bold text-decoration-none">Crea una ahora</a>
                </div>-->
                </div>
            </div>
         </div>
    </section>
</asp:Content>
