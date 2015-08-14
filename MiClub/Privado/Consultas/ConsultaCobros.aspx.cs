using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Privado.Consultas
{
    public partial class ConsultaCobros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CobrosGridView.DataSource = Cobros.Listar("*","1=1");
            CobrosGridView.DataBind();
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Registros/RegistroCobros.aspx");
        }
    }
}