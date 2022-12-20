<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.Feedback1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Contactanos</title>
    <script src="https://kit.fontawesome.com/cc010ce2b3.js" crossorigin="anonymous"></script>
    <link href="../CSS/Feedback.css" rel="stylesheet" />
</head>
<body>
    <section></section>
        <div class="container">
            <form runat="server">
                <h1>Porfavor ingresa tu feedback</h1>
                <div class="id">
                    <%--<input id="itxtUsuario" type="text" placeholder="Usuario" />--%><asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    <i class="far fa-user"></i>
                </div>
                <div class="id">
                    <%--<input id="itxtCorreo" type="email" placeholder="Correo electronico" />--%><asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    <i class="far fa-envelope "></i>

                </div>
                <%--<textarea id="itxtFeedback" cols="15" rows="5" placeholder="Porfavor ingrese su opinion aqui"></textarea>--%><asp:TextBox ID="txtFeedback" cols="15" rows="5" placeholder="Porfavor ingrese su opinion aqui" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="btnFeedback" CssClass="mybtn" runat="server" Text="Enviar" OnClick="btnFeedback_Click" />
                <a href="../Default.aspx"><< Volver al inicio</a><br />
            </form>
        </div>
    
</body>
</html>
