﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Pedido
    {
        public int NumeroPedido { get; set; }
        public string UsuarioMesero { get; set; }
        public DateTime Fecha { get; set; }
        public Decimal Monto { get; set; }
        public char IdMetodoPago { get; set; }
        
    }
}
