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
            DeudaDropDownList.DataSource = CxC.Listar("IdCxC, Concat('Fecha: ', Fecha,' Monto: ',Monto) as Deuda", "IdMiembro = " + MiembroDropDownList.SelectedValue + " and IdTipoDocumento = " + TipoDropDownList.SelectedValue + " and Estado = 0");
            DeudaDropDownList.DataTextField = "Deuda";
            DeudaDropDownList.DataValueField = "IdCxC";
            DeudaDropDownList.DataBind();

            BuscarValor();
        }

        public void BuscarValor()
        {
            Cobros cob = new Cobros();
            if (DeudaDropDownList.SelectedValue != "")
            {
                if (cob.BuscarValor(Convert.ToInt32(DeudaDropDownList.SelectedValue)) == true)
                {
                    MontoTextBox.Text = cob.Valor.ToString();
                }
            }
        }

        double Monto = 0;

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            DataTable data;

            if (Session["data"] == null)
            {
                data = new DataTable();

                data.Columns.Add(new DataColumn("IdCxC"));
                data.Columns.Add(new DataColumn("Valor"));
            }
            else
            {
                data = Session["data"] as DataTable;
            }

            DataRow row = data.NewRow();
            row["IdCxC"] = DeudaDropDownList.SelectedValue;
            row["Valor"] = MontoTextBox.Text;
            data.Rows.Add(row);

            Session["data"] = data;

            CobrosGridView.DataSource = data;
            CobrosGridView.DataBind();

            //Monto += Convert.ToDouble(MontoTextBox.Text);
            //TotalTextBox.Text = Monto.ToString();
        }

        protected void MiembroDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDeudas();
        }

        protected void TipoDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDeudas();
        }

        protected void CobrarButton_Click(object sender, EventArgs e)
        {
            Cobros cob = new Cobros();
            CxC cxc = new CxC();

            cob.Total = Convert.ToDouble(TotalTextBox.Text);
            cob.Fecha = Convert.ToDateTime(FechaTextBox.Text);

            if(Session["IdCobro"] == null)
            {
                if(cob.Insertar())
                {
                    if (cob.BuscarIdCob())
                    {
                        IdCobroTextBox.Text = cob.IdCobro.ToString();
                    }

                    DataTable data = Session["data"] as DataTable;

                    foreach (DataRow row in data.Rows)
                    {
                        cob.IdCxC = int.Parse(row["IdCxC"].ToString());
                        cob.Valor = Convert.ToDouble(row["Valor"].ToString());

                        cxc.ActualizarEstado(int.Parse(row["IdCxC"].ToString()));

                        cob.InsertarDet();
                    }
                }
            }
        }

        protected void DeudaDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            BuscarValor();
        }

        
    }
}