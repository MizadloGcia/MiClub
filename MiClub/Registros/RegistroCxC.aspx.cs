using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub.Registros
{
    public partial class RegistroCxC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();

            if (!IsPostBack)
            {
                ClubDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", "1=1 and IdUsuario = "+ ut.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubDropDownList.DataTextField = "Nombre";
                ClubDropDownList.DataValueField = "IdClub";
                ClubDropDownList.DataBind();

                CargarMiembros();

                TipoDropDownList.DataSource = TipoDocumentos.Listar("1=1", "IdTipoDocumento, Descripcion");
                TipoDropDownList.DataTextField = "Descripcion";
                TipoDropDownList.DataValueField = "IdTipoDocumento";
                TipoDropDownList.DataBind();

                if (TipoDropDownList.SelectedIndex == 0)
                {
                    BuscarMontoCuota();
                }
            }

        }

        protected void RegistrarButton_Click(object sender, EventArgs e)
        {
            CxC cxc = new CxC();

            cxc.IdTipoDocumento = Convert.ToInt32(TipoDropDownList.SelectedValue);
            cxc.IdMiembro = Convert.ToInt32(MiembroDropDownList.SelectedValue);
            cxc.Fecha = Convert.ToDateTime(FechaTextBox.Text);
            cxc.IdClub = Convert.ToInt32(ClubDropDownList.SelectedValue);
            cxc.Monto = Convert.ToDouble(MontoTextBox.Text);

            if (TipoMultaDropDownList.Visible == true)
            {
                cxc.IdTipoMulta = Convert.ToInt32(TipoMultaDropDownList.SelectedValue);
                cxc.Insertar();
            }
            else
            {
                cxc.InsertarNull();
            }

            
        }

        public void CargarMiembros()
        {
            MiembroDropDownList.DataSource = Miembros.Listar("IdClub = " + ClubDropDownList.SelectedValue, "IdMiembro, Nombres");
            MiembroDropDownList.DataTextField = "Nombres";
            MiembroDropDownList.DataValueField = "IdMiembro";
            MiembroDropDownList.DataBind();
        }

        public void Refresh()
        {
            if (TipoDropDownList.SelectedIndex == 1)
            {
                TipoMultaLabel.Visible = true;
                TipoMultaDropDownList.Visible = true;

                TipoMultaDropDownList.DataSource = TipoMultas.Listar("IdClub = " + ClubDropDownList.SelectedValue, "IdTipoMulta, Descripcion");
                TipoMultaDropDownList.DataTextField = "Descripcion";
                TipoMultaDropDownList.DataValueField = "IdTipoMulta";
                TipoMultaDropDownList.DataBind();

                BuscarMonto();
            }
            else if (TipoDropDownList.SelectedIndex == 0)
            {
                TipoMultaLabel.Visible = false;
                TipoMultaDropDownList.Visible = false;
                BuscarMontoCuota();

            }
        }

        protected void TipoDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Refresh();
        }

        public void BuscarMonto()
        {
            TipoMultas tm = new TipoMultas();

            if (TipoMultaDropDownList.SelectedValue != "")
            {
                if (tm.BuscarMonto(TipoMultaDropDownList.SelectedValue) == true)
                {
                    MontoTextBox.Text = tm.Monto.ToString();
                }
            }
            else
            {
                Response.Write(" Debe introducir una Tipo de Multa! ");
                TipoDropDownList.SelectedIndex = 0;
                TipoMultaDropDownList.Visible = false;
                TipoMultaLabel.Visible = false;
            }

        }

        public void BuscarMontoCuota()
        {
            Configuraciones con = new Configuraciones();

                if(con.BuscarMontoCuota(Convert.ToInt32(ClubDropDownList.SelectedValue)) == true)
                {
                    MontoTextBox.Text = con.Monto.ToString();
                }
            
        }

        protected void ClubDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarMiembros();
            TipoDropDownList.SelectedIndex = 0;
            TipoMultaLabel.Visible = false;
            TipoMultaDropDownList.Visible = false;
            MontoTextBox.Text = "";
        }

        protected void TipoMultaDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            BuscarMonto();
        }


    }
}