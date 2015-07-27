﻿using System;
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
                    ButtonEliminar.Visible = true;
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
                cl.Insertar();
            else
            {
                int idc = 0;
                int.TryParse(Session["IdClub"].ToString(), out idc);
                cl.Modificar(idc);
            }
            NombreTextBox.Text = "";
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

    }
}