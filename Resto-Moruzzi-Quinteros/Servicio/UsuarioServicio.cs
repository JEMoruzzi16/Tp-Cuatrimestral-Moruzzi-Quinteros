using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Servicio
{
    public class UsuarioServicio
    {
        public void agregar(Usuario nuevo)
        {
            AccesoDatos data = new AccesoDatos();
            try
            {
                data.setearConsulta("INSERT INTO Usuarios(Usuario,Contrasena,Tipo) values (@Usuario,@Contrasena,@Tipo)");
                data.setearParametro("@Usuario", nuevo.NombreUsuario);
                data.setearParametro("@Contrasena", nuevo.Contrasena);
                data.setearParametro("@Tipo", nuevo.Tipo);
                data.ejecutarAccion();

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                data.cerrarConexion();
            }
        }

        public List<Usuario> listar()
        {
            List<Usuario> lista = new List<Usuario>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT Usr.Usuario, Usr.Contrasena, Usr.Tipo, Usr.Estado FROM Usuarios as Usr where Usr.Estado = 1");
                datos.ejecutarLectura();


                while (datos.Lector.Read())
                {
                    Usuario aux = new Usuario();
                    aux.NombreUsuario = datos.Lector["Usuario"].ToString();
                    aux.Contrasena = datos.Lector["Contrasena"].ToString();
                    aux.Tipo = (byte)datos.Lector["Tipo"];
                    aux.Estado = (bool)datos.Lector["Estado"];
                    
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

        public Usuario buscarXUsuario(string objetivo)
        {
            AccesoDatos data = new AccesoDatos();
            Usuario aux= new Usuario();
            try
            {
                data.setearConsulta("SELECT us.Usuario, us.Contrasena, us.Tipo, us.Estado FROM Usuarios as us where us.Usuario = @Usuario");
                data.setearParametro("@Usuario", objetivo);
                data.ejecutarLectura();

                while (data.Lector.Read())
                {
                    aux.NombreUsuario = (string)data.Lector["Usuario"];
                    aux.Contrasena = (string)data.Lector["Contrasena"];
                    aux.Tipo = (Byte)data.Lector["Tipo"];
                }

                return aux; 
            }
            catch (Exception Ex)
            {

                throw Ex;
            }
            finally
            {
                data.cerrarConexion();
            }
        }

    }
}
