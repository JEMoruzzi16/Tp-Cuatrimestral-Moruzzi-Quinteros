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
    public partial class HomeMesero1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar");
                Response.Redirect("Error.aspx", false);

            }

            Mesa mesaUno,mesaDos, mesaTres, mesaCuatro = new Mesa();
            MesaServicio mesaServicio = new MesaServicio();
            mesaUno = mesaServicio.dibujarMesa(1);
            mesaDos = mesaServicio.dibujarMesa(2);
            mesaTres = mesaServicio.dibujarMesa(3);
            mesaCuatro = mesaServicio.dibujarMesa(4);
            lblCapacidad.Text = Convert.ToString(mesaUno.MaxCapacidad);
            lblCapacidad2.Text = Convert.ToString(mesaDos.MaxCapacidad);
            lblCapacidad3.Text = Convert.ToString(mesaTres.MaxCapacidad);
            lblCapacidad4.Text = Convert.ToString(mesaCuatro.MaxCapacidad);
            
            if (mesaUno.Estado == true)
            {
                lblmesaUnoEstado.Text = "Abierta";
                btnAbrirUno.Enabled = false;
                btnCerrarUno.Enabled = true;
            }
            else
            {
                lblmesaUnoEstado.Text = "Cerrada";
                btnAbrirUno.Enabled = true;
                btnCerrarUno.Enabled = false;
                btnGestionarUno.Enabled = false;
            }

            if (mesaDos.Estado == true)
            {
                lblMesaDosEstado.Text = "Abierta";
                btnAbrirDos.Enabled = false;
                btnCerrarDos.Enabled = true;
            }
            else
            {
                lblMesaDosEstado.Text = "Cerrada";
                btnAbrirDos.Enabled = true;
                btnCerrarDos.Enabled = false;
                btnGestionarDos.Enabled = false;
            }
            
            if (mesaTres.Estado == true)
            {
                lblMesaTresEstado.Text = "Abierta";
                btnAbrirTres.Enabled = false;
                btnCerrarTres.Enabled = true;
            }
            else
            {
                lblMesaTresEstado.Text = "Cerrada";
                btnAbrirTres.Enabled = true;
                btnCerrarTres.Enabled = false;
                btnGestionarTres.Enabled = false;
            }
            
            if (mesaCuatro.Estado == true)
            {
                lblMesaCuatroEstado.Text = "Abierta";
                btnAbrirCuatro.Enabled = false;
                btnCerrarCuatro.Enabled = true;
            }
            else
            {
                lblMesaCuatroEstado.Text = "Cerrada";
                btnAbrirCuatro.Enabled = true;
                btnCerrarCuatro.Enabled = false;
                btnGestionarCuatro.Enabled = false;
            }

        }

        protected void btnAbrirUno_Click(object sender, EventArgs e)
        {
            MesaServicio mesaServicio = new MesaServicio();
            PedidoServicio pedidosServicio = new PedidoServicio();
            //Cambio De estado de la mesa
            mesaServicio.abrirMesa(1);
            btnGestionarUno.Enabled = true;
            btnCerrarUno.Enabled = true;
            btnAbrirUno.Enabled = false;
            //Tomamos el nombre del usuario que esta logueado
            string usuario = Convert.ToString(((Usuario)Session["usuario"]).NombreUsuario);
            //Mediante el nombre, buscamos el id
            UsuarioServicio usuServicio = new UsuarioServicio();
            Usuario aux = usuServicio.buscarXUsuario(usuario);
            //Mediante el id, insertamos un nuevo pedido
            pedidosServicio.nuevo(aux.Id, 'T');


        }

        protected void btnAbrirDos_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            PedidoServicio pedidosServicio = new PedidoServicio();
            //Cambio De estado de la mesa
            servicio.abrirMesa(2);
            btnGestionarDos.Enabled = true;
            btnCerrarDos.Enabled = true;
            btnAbrirDos.Enabled = false;
            //Tomamos el nombre del usuario que esta logueado
            string usuario = Convert.ToString(((Usuario)Session["usuario"]).NombreUsuario);
            //Mediante el nombre, buscamos el id
            UsuarioServicio usuServicio = new UsuarioServicio();
            Usuario aux = usuServicio.buscarXUsuario(usuario);
            //Mediante el id, insertamos un nuevo pedido
            pedidosServicio.nuevo(aux.Id, 'T');
        }

        protected void btnAbrirTres_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            PedidoServicio pedidosServicio = new PedidoServicio();
            //Cambio De estado de la mesa
            servicio.abrirMesa(3);
            btnGestionarTres.Enabled = true;
            btnCerrarTres.Enabled = true;
            btnAbrirTres.Enabled = false;
            //Tomamos el nombre del usuario que esta logueado
            string usuario = Convert.ToString(((Usuario)Session["usuario"]).NombreUsuario);
            //Mediante el nombre, buscamos el id
            UsuarioServicio usuServicio = new UsuarioServicio();
            Usuario aux = usuServicio.buscarXUsuario(usuario);
            //Mediante el id, insertamos un nuevo pedido
            pedidosServicio.nuevo(aux.Id, 'T');
        }

        protected void btnAbrirCuatro_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            PedidoServicio pedidosServicio = new PedidoServicio();
            //Cambio De estado de la mesa
            servicio.abrirMesa(4);
            btnGestionarCuatro.Enabled = true;
            btnCerrarCuatro.Enabled = true;
            btnAbrirCuatro.Enabled = false;
            //Tomamos el nombre del usuario que esta logueado
            string usuario = Convert.ToString(((Usuario)Session["usuario"]).NombreUsuario);
            //Mediante el nombre, buscamos el id
            UsuarioServicio usuServicio = new UsuarioServicio();
            Usuario aux = usuServicio.buscarXUsuario(usuario);
            //Mediante el id, insertamos un nuevo pedido y obtenemos el numero de pedido
            int numeroPedido=pedidosServicio.nuevo(aux.Id, 'T');
            Session.Add("mesaCuatro",numeroPedido);

        }

        protected void btnCerrarUno_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            servicio.cerrarMesa(1);
            btnGestionarUno.Enabled = false;
            btnCerrarUno.Enabled = false;
            btnAbrirUno.Enabled = true;
        }

        protected void btnCerrarDos_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            servicio.cerrarMesa(2);
            btnGestionarDos.Enabled = false;
            btnCerrarDos.Enabled = false;
            btnAbrirDos.Enabled = true;
        }

        protected void btnCerrarTres_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            servicio.cerrarMesa(3);
            btnGestionarTres.Enabled = false;
            btnCerrarTres.Enabled = false;
            btnAbrirTres.Enabled = true;
        }

        protected void btnCerrarCuatro_Click(object sender, EventArgs e)
        {
            MesaServicio servicio = new MesaServicio();
            servicio.cerrarMesa(4);
            btnGestionarCuatro.Enabled = false;
            btnCerrarCuatro.Enabled = false;
            btnAbrirCuatro.Enabled = true;

        }

        protected void btnGestionarCuatro_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMesaCuatro.aspx");
        }
    }
}