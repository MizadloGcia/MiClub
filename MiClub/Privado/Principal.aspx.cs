using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiClub
{
    public partial class Principal1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InicioButton_Click(object sender, EventArgs e)
        {
            if (!ClientScript.IsClientScriptBlockRegistered("script"))
                ClientScript.RegisterStartupScript(this.GetType(), "script", "alert('El IdCategoria No Puede Estar Vacio Para Eliminar')", true);
        }

        protected void ClubsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consultas/ConsultaClubs.aspx");
        }

        protected void MiembrosButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consultas/ConsultaMiembros.aspx");
        }

        protected void CobrosButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registros/RegistroCobros.aspx");
        }

        protected void CxCButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registros/RegistroCxC.aspx");
        }

        protected void ConfButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registros/Configuracion.aspx");
        }
    }
}