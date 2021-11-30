using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Pedido
    {
        public int NumeroPedido { get; set; }
        public string UsuarioMesero { get; set; }
        public DateTime Fecha { get; set; }
        public Decimal Monto { get; set; }
        public int IdMetodoPago { get; set; }
        public Boolean Estado { get; set; }

        void agregarPlato()
        {


        }

    }
}
