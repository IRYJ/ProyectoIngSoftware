using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Ing.Software
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                btnSubirIconos.Visible = false;
            }
        }

        protected void btnSubirIconos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Subida.aspx");
        }
    }
}