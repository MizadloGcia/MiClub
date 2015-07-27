<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ConsultaMiembros.aspx.cs" Inherits="MiClub.Consultas.ConsultaMiembros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Miembros</p>
    <p style="margin-left: 80px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Club<asp:DropDownList ID="ClubDropDownList" runat="server">
        </asp:DropDownList>
    </p>
    <p style="margin-left: 80px">
        <asp:Label ID="Label1" runat="server" Text="Buscar por : "></asp:Label>
&nbsp;&nbsp;<asp:DropDownList ID="FiltroDropDownList" runat="server">
            <asp:ListItem Value="0">Seleccione una opcion</asp:ListItem>
            <asp:ListItem Value="1">Nombres</asp:ListItem>
            <asp:ListItem Value="2">Apellidos</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="FiltroTextBox" runat="server" Width="215px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
    </p>
    <p style="margin-left: 80px">
        <asp:GridView ID="MiembrosGridView" runat="server">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="IdMiembro" DataNavigateUrlFormatString="../Registros/RegistroMiembros.aspx?IdMiembro={0}" Text="Editar" />
            </Columns>
        </asp:GridView>
    </p>
    <p style="margin-left: 80px">
        <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click" />
    </p>
</asp:Content>
