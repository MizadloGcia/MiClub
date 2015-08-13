using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Privado.Consultas
{
    public partial class ConsultaCxC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios utilitarios = new Utilitarios();

            if (!IsPostBack)
            {
                ClubDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", "1=1 and IdUsuario = " + utilitarios.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubDropDownList.DataTextField = "Nombre";
                ClubDropDownList.DataValueField = "IdClub";
                ClubDropDownList.DataBind();
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Registros/RegistroCxC.aspx");
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            CxCGridView.DataSource = CxC.Listar("*", "IdClub =" + ClubDropDownList.SelectedValue);
            CxCGridView.DataBind();
        }
    }
}