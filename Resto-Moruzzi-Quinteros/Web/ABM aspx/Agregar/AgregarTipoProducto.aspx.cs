using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Servicio;
using Dominio;

namespace Web
{
    public partial class AgregarTipoProducto : System.Web.UI.Page
    {
        private List<TipoDeProducto> listaTipoDeProductos;
        protected void Page_Load(object sender, EventArgs e)
        {
            TipoDeProductoServicio tipoDeProductoServicio = new TipoDeProductoServicio();
            listaTipoDeProductos = tipoDeProductoServicio.listar();
            dgvTipoDeProducto.DataSource = listaTipoDeProductos;
            dgvTipoDeProducto.DataBind();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            TipoDeProducto tipo = new TipoDeProducto();
            TipoDeProductoServicio serviciotipo = new TipoDeProductoServicio();
            try
            {
                tipo.Descripcion = txbNombre.Text;
                serviciotipo.agregar(tipo);
                lblMensaje.Text = "Tipo de producto agregado exitosamente";

            }
            catch (Exception ex)
            {

                throw ex;
                lblMensaje.Text = "Error al intertar agregar un nuevo Tipo de producto";

            }

            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../Contact");
        }
    }
}