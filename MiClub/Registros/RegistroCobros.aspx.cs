using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Registros
{
    public partial class RegistroCobros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();

            if (!IsPostBack)
            {
                ClubDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", "1=1 and Idusuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubDropDownList.DataTextField = "Nombre";
                ClubDropDownList.DataValueField = "IdClub";
                ClubDropDownList.DataBind();

                CargarMiembros();

                TipoDropDownList.DataSource = TipoDocumentos.Listar("1=1", "IdTipoDocumento, Descripcion");
                TipoDropDownList.DataTextField = "Descripcion";
                TipoDropDownList.DataValueField = "IdTipoDocumento";
                TipoDropDownList.DataBind();

                CargarDeudas();
            }
        }

        public void CargarMiembros()
        {
            MiembroDropDownList.DataSource = Miembros.Listar("IdClub = " + ClubDropDownList.SelectedValue, "IdMiembro, Nombres");
            MiembroDropDownList.DataTextField = "Nombres";
            MiembroDropDownList.DataValueField = "IdMiembro";
            MiembroDropDownList.DataBind();
        }

        protected void ClubDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarMiembros();
            TipoDropDownList.SelectedIndex = 0;
        }

        public void CargarDeudas()
        {
            DeudaDropDownList.DataSource = CxC.Listar("IdCxC, Concat('Fecha: ', Fecha,' Monto: ',Monto) as Deuda", "IdMiembro = " + MiembroDropDownList.SelectedValue + " and IdTipoDocumento = " + TipoDropDownList.SelectedValue);
            DeudaDropDownList.DataTextField = "Deuda";
            DeudaDropDownList.DataValueField = "IdCxC";
            DeudaDropDownList.DataBind();
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {

        }

        protected void MiembroDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDeudas();
        }

        protected void TipoDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDeudas();
        }
    }
}