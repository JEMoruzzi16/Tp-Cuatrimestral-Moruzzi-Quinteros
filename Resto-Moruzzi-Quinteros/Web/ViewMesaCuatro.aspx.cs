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

        private List<Producto> listaProductos = new List<Producto>();

        protected void Page_Load(object sender, EventArgs e)
        {
            dgvProductos.DataSource = listaProductos;
            dgvProductos.DataBind();

            try
            {

                TipoDeProductoServicio tipoServicio = new TipoDeProductoServicio();
                ProductoServicio productoServicio = new ProductoServicio();
                Pedido_ProductoServicio PedProServicio = new Pedido_ProductoServicio();
                PedidoServicio pedido = new PedidoServicio();

                    int nroMesa = 4;
                if (!IsPostBack)
                {
                    List<Producto> listaProducto = productoServicio.listar();
                    Session["listaProducto"] = listaProducto;
                    List<TipoDeProducto> listaTipoProducto = tipoServicio.listar();

                    ddlTipoProducto.DataSource = listaTipoProducto;
                    ddlTipoProducto.DataTextField = "Descripcion";
                    ddlTipoProducto.DataValueField = "IdTipoProducto";
                    ddlTipoProducto.DataBind();
                    
                    int nroPedido = pedido.BuscarNroPedido(nroMesa);
                    List<Pedido_Producto> ListaPedidoProducto = PedProServicio.getLista(nroPedido);
                    List<Producto> listaProductos = productoServicio.listarProductosXPedido(ListaPedidoProducto,nroPedido);
                    dgvProductos.DataSource = listaProductos;
                    dgvProductos.DataBind();
                }
                //else if(IsPostBack)
                //{
                //    int nroPedido = pedido.BuscarNroPedido(nroMesa);
                //    List<Pedido_Producto> ListaPedidoProducto = PedProServicio.getLista(nroPedido);
                //    List<Producto> listaProductos = productoServicio.listarProductosXPedido(ListaPedidoProducto, nroPedido);
                //    dgvProductos.DataSource = listaProductos;
                //    dgvProductos.DataBind();
                //}
                
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
            dgvProductos.DataSource = listaProductos;
            dgvProductos.DataBind();
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
                ProductoServicio productoServicio = new ProductoServicio();
                int nroPedido = (int)Session["mesaCuatro"];
               

                //OBTENGO LA DESCRIPCION DEL PRODUCTO
                string descripcionPro = ddlProducto.SelectedItem.Text.ToString();
                
                //TRAIGO EL PRODUCTO EN UNA VARIABLE
                Producto agregado = new Producto();
                agregado = productoServicio.buscarXDescripcion(descripcionPro);

                //AGREGO EL PRODUCTO A LA TABLA PEDIDOS EN BASE DE DATOS
                servicio.agregar(nroPedido, agregado.Codigo);

                //AGREGO A LA LISTA DE PRODUCTOS EL PRODUCTO ACTUAL y LA CARGO A LA DGV                            
                //listaProductos.Add(agregado);
                //dgvProductos.DataSource = listaProductos;
                //dgvProductos.DataBind();

                // A VER SI FUNCA
                Pedido_ProductoServicio PedProServicio = new Pedido_ProductoServicio();
                PedidoServicio pedido = new PedidoServicio();
                int numeroPedido = pedido.BuscarNroPedido(4);
                List<Pedido_Producto> ListaPedidoProducto = PedProServicio.getLista(nroPedido);
                List<Producto> listaProductos = productoServicio.listarProductosXPedido(ListaPedidoProducto, nroPedido);
                dgvProductos.DataSource = listaProductos;
                dgvProductos.DataBind();

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}