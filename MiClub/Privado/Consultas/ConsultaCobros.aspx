<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ConsultaCobros.aspx.cs" Inherits="MiClub.Privado.Consultas.ConsultaCobros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Consulta Cobros"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="CobrosGridView" runat="server"></asp:GridView>
    <br />
    <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click" />
</asp:Content>
