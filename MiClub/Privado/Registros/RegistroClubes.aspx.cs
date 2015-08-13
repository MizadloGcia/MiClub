using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub
{
    public partial class RegistroClubes : System.Web.UI.Page
    {   

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if (Request.QueryString["IdClub"] != null)
                {
                    Session["IdClub"] = Request.QueryString["IdClub"];
                    Buscar();
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Clubes cl = new Clubes();
            cl.Nombre = NombreTextBox.Text;

            int id = 0;
            int.TryParse(Session["IdUsuario"].ToString(), out id);
            cl.IdUsuario = id;

            if (Session["IdClub"] == null)
            {
                if (cl.Insertar())
                {
                    CambiarVisibilidad();

                    Limpiar();
                }
            }
            else
            {
                int idc = 0;
                int.TryParse(Session["IdClub"].ToString(), out idc);
                cl.Modificar(idc);
                Limpiar();
            }
        }

        public void Buscar() 
        {
            int id = 0;
            int.TryParse(Session["IdClub"].ToString(), out id);
            Clubes cl = new Clubes();
            cl.IdClub = id;

            if (cl.Buscar() == true)
            {
                NombreTextBox.Text = cl.Nombre;
            }
        }

        protected void VolverButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Consultas/ConsultaClubs.aspx");
        }

        protected void GuardarMontoButton_Click(object sender, EventArgs e)
        {
            Configuraciones conf = new Configuraciones();

            if(conf.BuscarIdClub() == true)
            {
                IdClubTextBox.Text = conf.IdClub.ToString();
            }
            conf.Monto = Convert.ToDouble(MontoCuotaTextBox.Text);
            conf.IdClub = Convert.ToInt32(IdClubTextBox.Text);

            conf.InsertarMontoCuota();

            MontoCuotaTextBox.Text = "";
            Response.Redirect("../Principal.aspx");
        }

        public void CambiarVisibilidad()
        {
            AsignarLabel.Visible = true;
            MontoLabel.Visible = true;
            MontoCuotaTextBox.Visible = true;
            GuardarMontoButton.Visible = true;

            RegistroLabel.Visible = false;
            NombreLabel.Visible = false;
            NombreTextBox.Visible = false;
            GuardarButton.Visible = false;

            ClubValidationSummary.Enabled = false;
            ClubValidationSummary.Visible = false;
            NomClubRegularExpressionValidator.Enabled = false;
            NomClubRegularExpressionValidator.Visible = false;
            NomClubRequiredFieldValidator.Enabled = false;
            NomClubRequiredFieldValidator.Enabled = false;

            MontoCuotaValidationSummary.Enabled = true;
            MontoCuotaValidationSummary.Visible = true;
            MontoClubRequiredFieldValidator.Enabled = true;
            MontoClubRequiredFieldValidator.Visible = true;
            MontoClubRegularExpressionValidator.Enabled = true;
            MontoClubRegularExpressionValidator.Visible = true;
        }

        public void Limpiar()
        {
            NombreTextBox.Text = "";
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            Clubes clubes = new Clubes();

            
                if (Session["IdClub"] != null)
                { 
                    int idc = 0;
                    int.TryParse(Session["IdClub"].ToString(), out idc);
                    clubes.EliminarCuota(idc);
                    clubes.EliminarMiembros(idc);
                    clubes.Eliminar(idc);
                    Limpiar();
                }
                else
                {
                    if (!ClientScript.IsClientScriptBlockRegistered("script"))
                        ClientScript.RegisterStartupScript(this.GetType(), "script", "alert('Debe seleccionar un Club en Consulta')", true);
                }
            
        }

    }
}