using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Consultas
{
    public partial class ConsultaMiembros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();

            if (!IsPostBack)
            {
                ClubDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", "1=1 and IdUsuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubDropDownList.DataTextField = "Nombre";
                ClubDropDownList.DataValueField = "IdClub";
                ClubDropDownList.DataBind();
            }
            //string Filtro = "1=1";
            //MiembrosGridView.DataSource = Miembros.Listar(Filtro, "*");
            //MiembrosGridView.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            string Filtro = "1=1";
            if (FiltroDropDownList.SelectedIndex == 1)
                Filtro += "and Nombres like '%" + FiltroTextBox.Text + "%'";
            else if (FiltroDropDownList.SelectedIndex == 2)
                Filtro += "and Apellidos like '%" + FiltroTextBox.Text + "%'";
            Filtro += " and IdClub = " + Convert.ToInt32(ClubDropDownList.SelectedValue);
            MiembrosGridView.DataSource = Miembros.Listar(Filtro, "*");
            MiembrosGridView.DataBind();
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Registros/RegistroMiembros.aspx");
        }

        
    }
}