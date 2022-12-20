using Proyecto_Ing.Software.Clases;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Ing.Software.Pages
{
    public partial class Iconos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/Pages/Login.aspx");
            }
            DLBind();
        }
        protected void DLBind()
        {
            clsUser myUser = (clsUser)Session["Usuario"];
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Imagenes where idPersona = '"+ myUser.idPersona+"'",con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows==true)
                {
                    DataList1.DataSource=dr;
                    DataList1.DataBind();
                }
            }
        }
    }
}