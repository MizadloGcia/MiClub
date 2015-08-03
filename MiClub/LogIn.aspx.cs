using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Web.Security;

namespace MiClub
{
    public partial class LogIn1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarButton_Click(object sender, EventArgs e)
        {
            Usuarios us = new Usuarios();
            if(us.BuscarId(UsuarioTextBox.Text, PassTextBox.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(UsuarioTextBox.Text, true);

                Session["IdUsuario"]=us.IdUsuario;
                
                
                //cl.IdUsuario = us.IdUsuario;
                Response.Redirect("Principal.aspx");
            }
            else
            {
                Response.Write("Usuario o Password invalido!");
            }
        }

        protected override void InitializeCulture()
        {
            if(Session["Lang"] != null)
            {
                this.UICulture = Session["Lang"].ToString();
            }
            else
            {
                Session["Lang"] = this.UICulture.Substring(0, 2);
            }
            base.InitializeCulture();
        }

        protected void EnButton_Click(object sender, EventArgs e)
        {
            Session["Lang"] = "EN";
            Response.Redirect(Request.RawUrl);
        }

        protected void EsButton2_Click(object sender, EventArgs e)
        {
            Session["Lang"] = "ES";
            Response.Redirect(Request.RawUrl);
        }

        protected void RegistrarseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroUsuarios.aspx");
        }
    }
}