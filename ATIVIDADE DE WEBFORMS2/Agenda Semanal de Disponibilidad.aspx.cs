using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATIVIDADE_DE_WEBFORMS2
{
    public partial class Agenda_Semanal_de_Disponibilidad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (CheckBoxList1.Items.Count == 0)
                {
                    CheckBoxList1.Items.Add(new ListItem("Segunda-Feira", "Segunda"));
                    CheckBoxList1.Items.Add(new ListItem("Terça-Feira", "Terça"));
                    CheckBoxList1.Items.Add(new ListItem("Quarta-Feira", "Quarta"));
                    CheckBoxList1.Items.Add(new ListItem("Quinta-Feira", "Quinta"));
                    CheckBoxList1.Items.Add(new ListItem("Sexta-Feira", "Sexta"));
                }
                
            }

        }

        protected void btnSelecionar_Dias(object sender, EventArgs e)
        {
            resultadoLabel.Text = "Dias da semana disponível para trabalhar: <br />";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    resultadoLabel.Text += item.Text + "<br />";
                }
            }
        }
    }
}