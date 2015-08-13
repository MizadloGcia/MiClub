using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub
{
    public partial class ConsultaClubs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Utilitarios ut = new Utilitarios();
            
            ClubsGridView.DataSource = Clubes.Listar("*", "IdUsuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()));
            ClubsGridView.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();
            string Filtro = " 1=1 ";
            
            Filtro += "and Nombre like '%" + FiltroTextBox.Text + "%' and IdUsuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()) ;
            
            ClubsGridView.DataSource = Clubes.Listar("*", Filtro);
            ClubsGridView.DataBind();

            
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Registros/RegistroClubes.aspx");
        }
    }
}