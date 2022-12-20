<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminEliminar.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.AdminEliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="jumbotron text-center">
    <div class="container">
      <h1>Libreria Tic-Icon</h1>
      <p class="lead text-muted">El usuario ha sido eliminado.</p>
      <p>
          <asp:Button ID="Button1" class="btn btn-secondary my-2" runat="server" Text="Volver" OnClick="Button1_Click" />
      </p>
    </div>
  </section>
</asp:Content>
