using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Pedido_Producto
    {
        public int nroPedido{ get; set; }
        public int codigoProducto { get; set; }
        public int codigoTipo { get; set; }
        public int nroMesa { get; set; }
        public string Descripcion{ get; set; }
        public decimal Precio{ get; set; }
    }

}
