using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Registros
{
    public partial class RegistroMontoCuota : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();

            if (!IsPostBack)
            {
                ClubCuotaDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", " 1=1 and IdUsuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubCuotaDropDownList.DataTextField = "Nombre";
                ClubCuotaDropDownList.DataValueField = "IdClub";
                ClubCuotaDropDownList.DataBind();
            }
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Configuraciones conf = new Configuraciones();

            conf.Monto = Convert.ToDouble(MontoTextBox.Text);
            conf.IdClub = Convert.ToInt32(ClubCuotaDropDownList.SelectedValue);

            if (conf.ModificarMontoCuota())
            {
                Limpiar();
            }
        }

        public void Limpiar()
        {
            MontoTextBox.Text = "";
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}