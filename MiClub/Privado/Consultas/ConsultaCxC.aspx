<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ConsultaCxC.aspx.cs" Inherits="MiClub.Privado.Consultas.ConsultaCxC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Consulta CxC"></asp:Label>

    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Club: "></asp:Label>
    <asp:DropDownList ID="ClubDropDownList" runat="server">
    </asp:DropDownList>
    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
    <br />
    <asp:GridView ID="CxCGridView" runat="server">
    </asp:GridView>

    <br />
    <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click" />

</asp:Content>
