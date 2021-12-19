<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Site.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Web.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>
        function validar() {
            var valido = true;
            var nombre = document.getElementById("txtNombre").value;
            var apellido = document.getElementById("txtApellido").value;
            var usuario = document.getElementById("txtUsuario").value;
            var contrasena = document.getElementById("txtContrasena").value;
            var fechaNac = document.getElementById("txtFechaNac").value;

            if (nombre === "") {
                $("#txtNombre").removeClass("is-valid");
                $("#txtNombre").addClass("is-invalid");
                valido = false;
            } else {
                $("#txtNombre").removeClass("is-invalid");
                $("#txtNombre").addClass("is-valid");
            }

            if (apellido === "") {
                $("#txtApellido").removeClass("is-valid");
                $("#txtApellido").addClass("is-invalid");
                valido = false;
            } else {
                $("#txtApellido").removeClass("is-invalid");
                $("#txtApellido").addClass("is-valid");
            }

            if (usuario === "") {
                $("#txtUsuario").removeClass("is-valid");
                $("#txtUsuario").addClass("is-invalid");
                valido = false;
            } else {
                $("#txtUsuario").removeClass("is-invalid");
                $("#txtUsuario").addClass("is-valid");
            }

            if (contrasena === "") {
                $("#txtContrasena").removeClass("is-valid");
                $("#txtContrasena").addClass("is-invalid");
                valido = false;
            } else {
                $("#txtContrasena").removeClass("is-invalid");
                $("#txtContrasena").addClass("is-valid");
            }

            if (fechaNac === "") {
                $("#txtFechaNac").removeClass("is-valid");
                $("#txtFechaNac").addClass("is-invalid");
                valido = false;
            } else {
                $("#txtFechaNac").removeClass("is-invalid");
                $("#txtFechaNac").addClass("is-valid");
            }

            if (!valido) {
                return valido;
            }

            return valido;
        }
    </script>  
    
    
    <br />
    <div>
        <p class="h2" style="text-align:center">Agregar Nuevo Usuario</p>
    </div>
    <div class="container" style="width:60%" >
        <br />

        <div class="input-group mb-3">            
            <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Nombre" aria-label="Recipient's username" aria-describedby="basic-addon2"></asp:TextBox>  
        </div>

        <div class="input-group mb-3">
            <asp:TextBox ID="txtApellido" runat="server" class="form-control" placeholder="Apellido" aria-label="Recipient's username" aria-describedby="basic-addon2"></asp:TextBox> 
        </div>

        <div class="input-group mb-3">          
            <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>  
        </div>


        <div class="input-group mb-3">
            <asp:TextBox type="Password" ID="txtContrasena" placeholder="Contraseña"  runat="server" class="form-control" ></asp:TextBox>
        </div>

        <div class="input-group mb-3">          
            <asp:TextBox ID="txtFechaNac" runat="server" class="form-control" placeholder="dd/mm/aaaa" aria-label="Recipient's username" aria-describedby="basic-addon2"></asp:TextBox>
        </div>

        <div class="input-group mb-3">
          <label class="input-group-text" for="inputGroupSelect01">Tipo</label>
          
            <asp:DropDownList runat="server" id="ddlTipo" class="form-select" >
                <asp:ListItem Text="Gerente" />
                <asp:ListItem Text="Mesero" />
            </asp:DropDownList>
        </div>       

        <div style="display:flex">
            <div style="margin-right:100px">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" class="btn btn-outline-secondary" OnClick="btnAceptar_Click"/>
            </div>
            <div>
                <asp:Button ID="btnCancealar" runat="server" Text="Cancelar" class="btn btn-outline-secondary" OnClick="btnCancealar_Click2"  /> 
            </div>
        </div>
    </div>

</asp:Content>
