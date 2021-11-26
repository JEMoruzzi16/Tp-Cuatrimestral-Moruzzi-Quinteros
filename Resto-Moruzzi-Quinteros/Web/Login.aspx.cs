using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Servicio;

namespace Web
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            /*
             * 
             * DESACTIVADO, EN PRINCIPIO TRABAJANDO EN LOGUEO.
             * SI LOGUEO FUNCIONA, ANALIZAR SI ESTE CODIGO SE QUEDA O SE VA.
             * 
             * 
             * 
            Usuario usuario;
            UsuarioServicio servicio = new UsuarioServicio();

            try
            {
                usuario = new Usuario(txtUsuario.Text, txtContrasena.Text, false);

                if (servicio.Loguear(usuario))
                {
                    if (usuario.Tipo == TipoUsuario.GERENTE )
                    {
                        Response.Redirect("HomeGerente.aspx",false);
                    }
                    else if(usuario.Tipo == TipoUsuario.MESERO)
                    {
                        Response.Redirect("HomeMesero.aspx", false);
                    }
                }else
                {
                    Session.Add("error", "user o pass incorrectos");
                    Response.Redirect("Error.aspx", false);
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
               
            }
            */
        }

    }
}