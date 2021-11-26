﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Servicio;

namespace Web
{
    public partial class Logueo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btInitSession_Click(object sender, EventArgs e)
        {
            Usuario usuario;
            UsuarioServicio usuarioServicio = new UsuarioServicio();

            try
            {
                usuario = new Usuario(txtUsuario.Text,txtPass.Text,false);
                if(usuarioServicio.Loguear(usuario)==1){
                    Session.Add("usuario", usuario);
                    Response.Redirect("HomeMesero.aspx",false);
                }else if(usuarioServicio.Loguear(usuario) == 2){
                    Session.Add("usuario", usuario);
                    Response.Redirect("HomeGerente.aspx",false);
                }else{
                    Session.Add("error", "User o pass incorrectos");
                    Response.Redirect("error.aspx",false);
                }

            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }


        }
    }
}