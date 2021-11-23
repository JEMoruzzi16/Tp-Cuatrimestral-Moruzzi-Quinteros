using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Servicio;

namespace Servicio
{
    class MetodoDePagoServicio
    {
        public List<MetodoPago> listar()
        {
            List<MetodoPago> lista = new List<MetodoPago>();
            AccesoDatos datos = new AccesoDatos();         

            try
            {
                datos.setearConsulta("SELECT Mp.Id, Mp.Descripcion FROM MetodoPago as MP");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    MetodoPago aux = new MetodoPago();
                    aux.Id = (Char)datos.Lector["Id"];
                    aux.Descripcion = (String)datos.Lector["Descripcion"];
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
