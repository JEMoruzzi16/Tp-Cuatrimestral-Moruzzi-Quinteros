using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Servicio;

namespace Servicio
{
    public class PedidoServicio
    {
        public int nuevo(int id, char metodo)
        {
            Pedido nuevoPedido = new Pedido();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("INSERT Into Pedido(IdMesero,Fecha,Monto,IdMetodoPago) VALUES (@IdMesero, @Fecha, @Monto,@IdMetodo)");
                datos.setearParametro("@IdMesero", id);
                datos.setearParametro("@Fecha", DateTime.Now);
                datos.setearParametro("@Monto", "0");
                datos.setearParametro("@IdMetodo", metodo);
                datos.ejecutarAccion();

                int nroPedido = buscarUltimoNro();
                return nroPedido;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public int buscarUltimoNro()
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                int nroPedido=new int();
                datos.setearConsulta("SELECT top 1 Nro from Pedido order by Nro DESC ");
                datos.ejecutarLectura();
                while(datos.Lector.Read())
                { 
                    nroPedido= (int)datos.Lector["Nro"];
                }
                return nroPedido;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
    }
}
