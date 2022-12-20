using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Proyecto_Ing.Software.Clases;

namespace Proyecto_Ing.Software.Pages
{
    public partial class Subida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/Pages/Login.aspx");
            }
            if (!IsPostBack)
            {
                clearfn();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clsUser myUser = (clsUser)Session["Usuario"];
            if (FileUpload1.HasFile)
            {
                try
                {
                    string extension = Path.GetExtension(FileUpload1.FileName);
                    if (extension == ".svg" || extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                    {
                        if (FileUpload1.PostedFile.ContentLength <= 102400)
                        {
                            string fname = Path.GetFileName(FileUpload1.FileName);
                            FileUpload1.SaveAs(Server.MapPath("~/Iconos/Usuarios/") + fname);

                            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
                            {
                                con.Open();
                                SqlCommand cmd = new SqlCommand("insert into Imagenes values('" + myUser.idPersona + "','" + txtIdIcono.Text + "','" + txtNombreIcono.Text + "','" + FileUpload1.FileName + "')", con);
                                int t = cmd.ExecuteNonQuery();
                                if (t > 0)
                                {
                                    Response.Write("<script>alert('El archivo se subio exitosamente!')</script>");
                                    clearfn();
                                }
                            }
                        }
                        else
                        {
                            this.lblMensaje.Text = "Solo se permiten archivos de 100kb como maximo!";
                            lblMensaje.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        this.lblMensaje.Text = "Solo se permiten archivos de tipo svg, jpg, jpeg, png!";
                        lblMensaje.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = "El icono no se pudo subir debido a: " + ex.Message;
                }
            }
        }
        public void clearfn()
        {
            txtIdIcono.Text = "";
            txtNombreIcono.Text = "";
            lblMensaje.Text = "";
        }
    }

}