<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ConsultaClubs.aspx.cs" Inherits="MiClub.ConsultaClubs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Mis Clubs"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nombre del Club: "></asp:Label>
    <asp:TextBox ID="FiltroTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="ClubsGridView" runat="server">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="IdClub" DataNavigateUrlFormatString="../Registros/RegistroClubes.aspx?IdClub={0}" Text="Editar" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click" />
    <br />
</asp:Content>
