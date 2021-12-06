using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Servicio;
namespace Servicio
{
    public class Pedido_ProductoServicio
    {
        public void agregar(int numeroPedido, int codigoProducto, int nroMesa)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("insert into Pedido_Producto(NroPedido,CodigoProducto,NroMesa) values(@Pedido,@Producto,@Mesa)");
                datos.setearParametro("@Pedido", numeroPedido);
                datos.setearParametro("@Producto", codigoProducto);
                datos.setearParametro("@Mesa",nroMesa);
                datos.ejecutarAccion();

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

        public List<Pedido_Producto> listar()
        {
            AccesoDatos datos = new AccesoDatos();
            List<Pedido_Producto> lista = new List<Pedido_Producto>();
            try
            {
                datos.setearConsulta("select Pro.DescripcionPlato, Pro.Precio from Pedido_Producto as PP INNER JOIN Producto as Pro on Pro.Codigo = PP.CodigoProducto INNER JOIN TipoDeProducto as TP on TP.Id=Pro.IdTipoProducto");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Pedido_Producto aux = new Pedido_Producto();
                    aux.Descripcion = (string)datos.Lector["DescripcionPlato"];
                    aux.Precio = (decimal)datos.Lector["Precio"];
                    lista.Add(aux);
                }
                return lista;
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
