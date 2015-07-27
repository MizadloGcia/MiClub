<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="MiClub.Principal1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:Button ID="InicioButton" runat="server" Text="Inicio" OnClick="InicioButton_Click" />
        <asp:Button ID="ClubsButton" runat="server" Text="Mis Clubs" OnClick="ClubsButton_Click" />
        <asp:Button ID="MiembrosButton" runat="server" Text="Miembros" OnClick="MiembrosButton_Click" />
        <asp:Button ID="CxCButton" runat="server" Text="CxC" OnClick="CxCButton_Click" />
        <asp:Button ID="CobrosButton" runat="server" Text="Cobros" OnClick="CobrosButton_Click" />
        <asp:Button ID="ConfButton" runat="server" Text="Configuracion" />
    </p>

</asp:Content>
