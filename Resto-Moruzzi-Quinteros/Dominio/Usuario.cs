using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public enum TipoUsuario
    {
        MESERO=1,
        GERENTE=2
    }
    public class Usuario
    {
        public String NombreUsuario { get; set; }
        public String Contrasena { get; set; }
        public Boolean Estado { get; set; }
        public TipoUsuario Tipo { get; set; }

        public Usuario() { }

        public Usuario(string user, string pass, bool admin)
        {
            this.NombreUsuario = user;
            this.Contrasena = pass;
            Tipo = admin ? TipoUsuario.GERENTE : TipoUsuario.MESERO;
        }

    }
}
