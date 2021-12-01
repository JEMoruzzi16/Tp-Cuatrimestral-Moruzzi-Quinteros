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
    public partial class ViewMesaCuatro : System.Web.UI.Page
    {
        private List<Pedido_Producto> listaPedido_Producto;
        protected void Page_Load(object sender, EventArgs e)
        {
            Pedido_ProductoServicio Pedido_ProductoServicio = new Pedido_ProductoServicio();
            listaPedido_Producto = Pedido_ProductoServicio.listar();
            dgvProductos.DataSource = listaPedido_Producto;
            dgvProductos.DataBind();
            try
            {

                TipoDeProductoServicio tipoServicio = new TipoDeProductoServicio();
                ProductoServicio productoServicio = new ProductoServicio();
                if (!IsPostBack)
                {
                    List<Producto> listaProducto = productoServicio.listar();
                    Session["listaProducto"] = listaProducto;
                    List<TipoDeProducto> listaTipoProducto = tipoServicio.listar();

                    ddlTipoProducto.DataSource = listaTipoProducto;
                    ddlTipoProducto.DataTextField = "Descripcion";
                    ddlTipoProducto.DataValueField = "IdTipoProducto";
                    ddlTipoProducto.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        protected void ddlTipoProducto_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ddlTipoProducto.SelectedItem.Value);
            ddlProducto.DataSource = ((List<Producto>)Session["listaProducto"]).FindAll(x => x.IdTipoProducto == id);
            ddlProducto.DataTextField = "DescripcionPlato";
            ddlProducto.DataValueField = "IdTipoProducto";
            ddlProducto.DataBind();
        }
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeMesero.aspx", false);
        }
        

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                Pedido_Producto nuevo = new Pedido_Producto();
                Pedido_ProductoServicio servicio = new Pedido_ProductoServicio();
                int nroPedido=(int)Session["mesaCuatro"];
                int codigoPro = int.Parse(ddlProducto.SelectedItem.Value);
                int codigoTipoProducto = int.Parse(ddlTipoProducto.SelectedItem.Value);
                servicio.agregar(nroPedido,codigoPro,codigoTipoProducto, 4);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}