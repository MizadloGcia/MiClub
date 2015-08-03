<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Configuracion.aspx.cs" Inherits="MiClub.Registros.Configuracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="CambMontoCuotaButton" runat="server" Text="Cambiar monto de cuota" OnClick="CambMontoCuotaButton_Click" />
    <br />
    <asp:Button ID="RegTipoMultaButton" runat="server" Text="Registrar tipo de multa" OnClick="RegTipoMultaButton_Click" />
</asp:Content>
