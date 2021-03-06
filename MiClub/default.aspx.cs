﻿using System;
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
            if (us.BuscarId(UsuarioTextBox.Text, PassTextBox.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(UsuarioTextBox.Text, true);

                Session["IdUsuario"] = us.IdUsuario;


                //cl.IdUsuario = us.IdUsuario;
                Response.Redirect("/Privado/Principal.aspx");
            }
            else
            {
                Response.Write("Usuario o Password invalido!");
            }
        }

        protected void RegistrarseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RegistroUsuarios.aspx");
        }
    }
}