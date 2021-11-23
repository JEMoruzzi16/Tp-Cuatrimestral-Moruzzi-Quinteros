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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //------------------Producto------------------
        protected void btnListar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Listar/ListarProductos");
        }


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Agregar/AgregarProducto.aspx");
        }

        protected void btnModificarProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Modificar/ModificarProducto.aspx");
        }

        protected void btnEliminarProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Eliminar/EliminarProducto.aspx");
        }

        //------------------Tipo Producto------------------
        protected void btnListarTipo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Listar/ListarTipoProducto.aspx");
        }

        protected void btnAgregarTipo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Agregar/AgregarTipoProducto.aspx");
        }

        protected void btnModificarTipo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Modificar/ModificarTipoProducto.aspx");
        }

        protected void btnEliminarTipo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM%20aspx/Eliminar/EliminarTipoProducto.aspx");                
        }
    }
}