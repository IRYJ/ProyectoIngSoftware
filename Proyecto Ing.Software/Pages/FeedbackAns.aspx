<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedbackAns.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.FeedbackAns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="jumbotron text-center">
    <div class="container">
      <h1>Libreria Tic-Icon</h1>
      <p class="lead text-muted">¡Valoramos mucho tu mensaje! Esperamos que disfrutes tu viaje por nuestra pagina.<br /> Muchas gracias por elegirnos.</p>
      <p>
          <asp:Button ID="btnVolver" class="btn btn-secondary my-2" runat="server" Text="Volver al inicio" OnClick="btnVolver_Click" />
      </p>
    </div>
  </section>
</asp:Content>
