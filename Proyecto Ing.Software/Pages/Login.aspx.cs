using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Ing.Software.Clases;
using Proyecto_Ing.Software.Data;


namespace Proyecto_Ing.Software.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var user = db.spLogin(txtEmail.Text, txtPassword.Text).ToList();
                    if (user.Count > 0)
                    {
                        clsUser myUser = new clsUser();
                        myUser.idPersona = user[0].idPersona;
                        myUser.nombreCompleto = user[0].nombreCompleto;
                        myUser.fechaNacimiento = DateTime.Parse(user[0].fechaNacimiento.ToString());
                        myUser.numeroTelefono = user[0].numeroTelefono;
                        myUser.email = user[0].email;
                        myUser.Pais = user[0].pais;
                        myUser.Ciudad = user[0].ciudad;
                        myUser.codigoPostal = user[0].codigoPostal;
                        myUser.Direccion = user[0].direccion;
                        myUser.usuario = user[0].usuario;
                        myUser.clave = user[0].clave;
                        myUser.estado = user[0].estado;
                        myUser.empleado = Convert.ToBoolean(Int32.Parse(user[0].empleado.ToString()));
                        Session["Usuario"] = myUser;
                        Session["idPersona"] = user[0].idPersona;

                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Ese fue un correo electrónico o contraseña no válidos. ¡Vuelve a intentarlo!')</script>");
                    }
                }

            }


        }
    }
}