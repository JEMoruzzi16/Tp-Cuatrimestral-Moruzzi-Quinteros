﻿using System;
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
        public int nuevo(int id, char metodo,int nroMesa)
        {
            Pedido nuevoPedido = new Pedido();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("INSERT Into Pedido(IdMesero,Fecha,Monto,IdMetodoPago,NroMesa, Estado) VALUES (@IdMesero, @Fecha, @Monto,@IdMetodo,@NroMesa,@Estado)");
                datos.setearParametro("@IdMesero", id);
                datos.setearParametro("@Fecha", DateTime.Now);
                datos.setearParametro("@Monto", "0");
                datos.setearParametro("@IdMetodo", metodo);
                datos.setearParametro("@NroMesa", nroMesa);
                datos.setearParametro("@Estado", 1);
                datos.ejecutarAccion();

                int nroPedido = buscarUltimoNro(nroMesa);
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
        public int buscarUltimoNro(int nroMesa)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                int nroPedido=new int();
                datos.setearConsulta("SELECT top 1 Nro from Pedido WHERE NroMesa = @NroMesa order by Nro DESC  ");
                datos.setearParametro("@NroMesa", nroMesa);
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

        public int BuscarNroPedido(int nroMesa)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                int nroPedido = new int();
                datos.setearConsulta("select Nro from Pedido where NroMesa = @nroMesa and Estado = 1 ");
                datos.setearParametro("@NroMesa", nroMesa);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    nroPedido = (int)datos.Lector["Nro"];
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
