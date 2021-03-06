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
    public partial class ViewMesa : System.Web.UI.Page
    {
        private List<Producto> listaProductos = new List<Producto>();
        TipoDeProductoServicio tipoServicio = new TipoDeProductoServicio();
        ProductoServicio productoServicio = new ProductoServicio();
        Pedido_ProductoServicio PedProServicio = new Pedido_ProductoServicio();
        PedidoServicio pedido = new PedidoServicio();
        
        decimal monto = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            tituloMesa.Text = Convert.ToString( (int)Session["nroMesa"]);

            dgvProductos.DataSource = listaProductos;
            dgvProductos.DataBind();

            try
            {

                if (!IsPostBack)
                {
                    List<Producto> listaProducto = productoServicio.listar();
                    Session["listaProducto"] = listaProducto;
                    List<TipoDeProducto> listaTipoProducto = tipoServicio.listar();

                    ddlTipoProducto.DataSource = listaTipoProducto;
                    ddlTipoProducto.DataTextField = "Descripcion";
                    ddlTipoProducto.DataValueField = "IdTipoProducto";
                    ddlTipoProducto.DataBind();

                    monto = montoPedido(listaPedido((int)Session["nroMesa"], pedido, PedProServicio, productoServicio));
                    lblMonto.Text = monto.ToString();

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
            listaPedido((int)Session["nroMesa"], pedido, PedProServicio, productoServicio);
            monto = montoPedido(listaPedido((int)Session["nroMesa"], pedido, PedProServicio, productoServicio));
            lblMonto.Text = monto.ToString();
            btnAgregar.Enabled = true;
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
                PedidoServicio pedidoServicio = new PedidoServicio();
                int nroPedido = pedidoServicio.BuscarNroPedido((int)Session["nroMesa"]);


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
                listaPedido((int)Session["nroMesa"], pedido, PedProServicio, productoServicio);
                monto = montoPedido(listaPedido((int)Session["nroMesa"], pedido, PedProServicio, productoServicio));
                lblMonto.Text = monto.ToString();
                
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        protected List<Producto> listaPedido(int nroMesa, PedidoServicio pedido, Pedido_ProductoServicio PedProServicio, ProductoServicio productoServicio)
        {
            int nroPedido = pedido.BuscarNroPedido(nroMesa);
            List<Pedido_Producto> ListaPedidoProducto = PedProServicio.getLista(nroPedido);
            List<Producto> listaProductos = productoServicio.listarProductosXPedido(ListaPedidoProducto, nroPedido);
            dgvProductos.DataSource = listaProductos;
            dgvProductos.DataBind();
            if (listaProductos.Count == 0)
            {
                btnCerrarPedido.Enabled = false;
            }
            else
            {
                btnCerrarPedido.Enabled = true;
            }
            return listaProductos;
        }

        protected void dgvProductos_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Visible = false;
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;

            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[1].Visible = false;
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;

            }
        }

        protected void btnCerrarPedido_Click(object sender, EventArgs e)
        {
            PedidoServicio pedido = new PedidoServicio();

            Session.Add("mesa", (int)Session["nroMesa"]);
            Session.Add("monto", lblMonto.Text);
            Session.Add("nroPedido", pedido.BuscarNroPedido((int)Session["nroMesa"]));

            Response.Redirect("CerrarPedido.aspx", false);
        }
        protected decimal montoPedido(List<Producto> listaProductos)
        {
            decimal montoPedido = 0;

            foreach (Producto item in listaProductos)
            {
                montoPedido += item.Precio;
            }
            return montoPedido;
        }

    }
}