using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Registros
{
    public partial class Configuracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CambMontoCuotaButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroMontoCuota.aspx");
        }

        protected void RegTipoMultaButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroTipoMulta.aspx");
        }
    }
}