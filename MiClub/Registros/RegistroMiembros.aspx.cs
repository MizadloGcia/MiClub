using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MiClub
{
    public partial class RegistroMiembros : System.Web.UI.Page
    {

        Miembros m = new Miembros();
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios ut = new Utilitarios();

            if (!IsPostBack)
            {
                ClubDropDownList.DataSource = Clubes.Listar("IdClub, Nombre", " 1=1 and IdUsuario = " + ut.ObjectToInt(Session["IdUsuario"].ToString()));
                ClubDropDownList.DataTextField = "Nombre";
                ClubDropDownList.DataValueField = "IdClub";
                ClubDropDownList.DataBind();

                if (Request.QueryString["IdMiembro"] != null)
                {
                    Session["IdMiembro"] = Request.QueryString["IdMiembro"];
                    EliminarButton.Visible = true;
                    Buscar();
                }
            }
        
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            m.Nombres = NombresTextBox.Text;
            m.Apellidos = ApellidosTextBox.Text;
            m.FechaNac = Convert.ToDateTime(FechaNacTextBox.Text);
            m.Direccion = DireccionTextBox.Text;
            m.Email = EmailTextBox.Text;
            m.Telefono = TelefonoTextBox.Text;
            m.Celular = CelularTextBox.Text;
            m.Genero = int.Parse(GeneroDropDownList.SelectedValue);
            m.Cedula = CedulaTextBox.Text;
            m.IdClub = Convert.ToInt32(ClubDropDownList.SelectedValue);

            if (Session["IdMiembro"] == null)
            {
                m.Insertar();
            }
            else
            {
                int id = 0;
                int.TryParse(Session["IdMiembro"].ToString(), out id);
                m.Modificar(id);
            }
            Limpiar();
        }

        public void Buscar()
        {
            int id = 0;
            int.TryParse(Session["IdMiembro"].ToString(), out id);
            Miembros m = new Miembros();
            m.IdMiembro = id;

            if (m.Buscar() == true)
            {
                NombresTextBox.Text = m.Nombres;
                ApellidosTextBox.Text = m.Apellidos;
                FechaNacTextBox.Text = m.FechaNac.ToString("yyyy-MM-dd");
                DireccionTextBox.Text = m.Direccion;
                EmailTextBox.Text = m.Email;
                TelefonoTextBox.Text = m.Telefono;
                CelularTextBox.Text = m.Celular;
                GeneroDropDownList.SelectedIndex = m.Genero;
                CedulaTextBox.Text = m.Cedula;
                ClubDropDownList.SelectedValue = m.IdClub.ToString();
            }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            int id = 0;
            int.TryParse(Session["IdMiembro"].ToString(), out id);
            m.Eliminar(id);
            Limpiar();
        }

        public void Limpiar()
        {
            NombresTextBox.Text = "";
            ApellidosTextBox.Text = "";
            FechaNacTextBox.Text = "";
            DireccionTextBox.Text = "";
            EmailTextBox.Text = "";
            TelefonoTextBox.Text = "";
            CelularTextBox.Text = "";
            GeneroDropDownList.SelectedIndex = 0;
            CedulaTextBox.Text = "";

        }
    }
}