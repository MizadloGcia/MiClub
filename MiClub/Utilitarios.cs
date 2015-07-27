using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiClub
{
    public class Utilitarios
    {
        public int ObjectToInt(Object dato)
        {
            int id = 0;
            int.TryParse(dato.ToString(), out id);

            return id;
        }
    }
}