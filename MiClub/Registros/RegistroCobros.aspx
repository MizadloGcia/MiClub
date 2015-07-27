<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistroCobros.aspx.cs" Inherits="MiClub.Registros.RegistroCobros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Cobros"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="IdCobro"></asp:Label>
    <asp:TextBox ID="IdCobroTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>
    <asp:TextBox ID="FechaTextBox" runat="server" TextMode="Date"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Club"></asp:Label>
    <asp:DropDownList ID="ClubDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ClubDropDownList_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Tipo"></asp:Label>
    <asp:DropDownList ID="TipoDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TipoDropDownList_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Miembro"></asp:Label>
    <asp:DropDownList ID="MiembroDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="MiembroDropDownList_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Deuda"></asp:Label>
    <asp:DropDownList ID="DeudaDropDownList" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="AgregarButton" runat="server" Text="Agregar" OnClick="AgregarButton_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <asp:Button ID="CobrarButton" runat="server" Text="Cobrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Total: "></asp:Label>
    <asp:TextBox ID="TotalTextBox" runat="server"></asp:TextBox>
</asp:Content>
