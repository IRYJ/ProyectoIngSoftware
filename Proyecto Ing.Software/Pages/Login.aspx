<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="~/CSS/Login.css"/>
    <title>Iniciar sesion</title>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center pt-5 mt-5 m-1">
            <div class="col-md-6 col-sm-8 col-xl-4 col-lg-5 formulario">
                <form id="form1" action="" runat="server">
                    <div class="form-group text-center pt-3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo (1).png" width="270"/>
                        <h1 class="text-dark">INICIAR SESIÓN</h1>
                    </div>
                    <div class="form-group mx-sm-4 pt-3">
                        <asp:TextBox ID="txtEmail" class="form-control" runat="server" type="email" placeholder="Ingrese su correo"></asp:TextBox>
                    </div>
                    <div class="form-group mx-sm-4 pb-3">
                        <asp:TextBox ID="txtPassword" class="form-control" runat="server" type="password" placeholder="Ingrese su Contraseña"></asp:TextBox>
                    </div>
                    <div class="form-group mx-sm-4 pb-2">
                        <%--<asp:Button ID="btnLogin" runat="server" class="w-100 btn btn-lg btn-primary" Text="Iniciar Sesion"/>--%>
                        <span><asp:Button ID="Button1" class="w-100 btn btn-lg btn-primary" runat="server" Text="Iniciar Sesion" OnClick="Button1_Click" /></span>
                    </div>
                    <div class="form-group mx-sm-4 text-right">
                        <span><a href="Registro.aspx" class="w-100 btn btn-lg btn-link">REGISTRARSE</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
