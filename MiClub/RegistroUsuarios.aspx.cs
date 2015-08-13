using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace MiClub.Registros
{
    public partial class RegistroUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Usuarios user = new Usuarios();

            user.Usuario = UsuarioTextBox.Text;
            user.Pass = PassTextBox.Text;
            user.Nombres = NombresTextBox.Text;
            user.Apellidos = ApellidosTextBox.Text;
            user.FechaNac = Convert.ToDateTime(FechaNacTextBox.Text);
            user.Direccion = DireccionTextBox.Text;
            user.Email = EmailTextBox.Text;
            user.Telefono = TelefonoTextBox.Text;
            user.Celular = CelularTextBox.Text;
            user.Genero = int.Parse(GeneroDropDownList.SelectedValue);

            user.Insertar();
            Limpiar();
        }

        public void Limpiar()
        {
            UsuarioTextBox.Text = "";
            PassTextBox.Text = "";
            NombresTextBox.Text = "";
            ApellidosTextBox.Text = "";
            FechaNacTextBox.Text = "";
            DireccionTextBox.Text = "";
            DireccionTextBox.Text = "";
            EmailTextBox.Text = "";
            TelefonoTextBox.Text = "";
            CelularTextBox.Text = "";
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}