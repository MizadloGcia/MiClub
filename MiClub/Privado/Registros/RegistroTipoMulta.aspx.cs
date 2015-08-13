using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Registros
{
    public partial class RegistroTipoMulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();

            if (!IsPostBack)
            {
                ClubMultaDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", " 1=1 and IdUsuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubMultaDropDownList.DataTextField = "Nombre";
                ClubMultaDropDownList.DataValueField = "IdClub";
                ClubMultaDropDownList.DataBind();
            }
        }

        protected void RegistrarButton_Click(object sender, EventArgs e)
        {
            TipoMultas tm = new TipoMultas();

            tm.Descripcion = DescripcionTextBox.Text;
            tm.Monto = Convert.ToDouble(MontoMultaTextBox.Text);
            tm.IdClub = Convert.ToInt32(ClubMultaDropDownList.SelectedValue);

            tm.Insertar();
        }

        public void Limpiar()
        {
            MontoMultaTextBox.Text = "";
            DescripcionTextBox.Text = "";
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}