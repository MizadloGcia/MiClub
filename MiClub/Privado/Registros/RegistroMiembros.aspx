<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistroMiembros.aspx.cs" Inherits="MiClub.RegistroMiembros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 86px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Registro de Miembro"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nombres"></asp:Label>
        <asp:TextBox ID="NombresTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Debe introducir el Nombre" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="El nombre solo puede contener letras (A-Z)" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">*</asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Telefono"></asp:Label>
        <asp:TextBox ID="TelefonoTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Debe introducir el Telefono" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="El Telefono no es correcto. Ej (000-000-0000)" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Apellidos"></asp:Label>
        <asp:TextBox ID="ApellidosTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ApellidosTextBox" ErrorMessage="Debe introducir los Apellidos" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ApellidosTextBox" ErrorMessage="El apellido solo puede contener letras (A-Z)" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">*</asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Celular"></asp:Label>
        <asp:TextBox ID="CelularTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Debe introducir el Celular" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="El Celular no es correcto. Ej (000-000-0000)" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Fecha de Nacimiento"></asp:Label>
        <asp:TextBox ID="FechaNacTextBox" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FechaNacTextBox" ErrorMessage="Debe introducir la Fecha de Nacimiento" ForeColor="Red">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Genero"></asp:Label>
        <asp:DropDownList ID="GeneroDropDownList" runat="server">
            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
            <asp:ListItem Value="1">Femenino</asp:ListItem>
            <asp:ListItem Value="2">Masculino</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="Label5" runat="server" Text="Direccion"></asp:Label>
        <asp:TextBox ID="DireccionTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Debe introducir la Direccion" ForeColor="Red">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Cedula"></asp:Label>
        <asp:TextBox ID="CedulaTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="Debe introducir la Cedula" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="La Cedula no es correcta. Ej(00000000000)" ForeColor="Red" ValidationExpression="^[0-9]*">*</asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Debe introducir el Email" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="El email no es correcto" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Club"></asp:Label>
        <asp:DropDownList ID="ClubDropDownList" runat="server">
        </asp:DropDownList>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />
        <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" OnClick="LimpiarButton_Click" CausesValidation="False" />
&nbsp;<asp:Button ID="GuardarButton" runat="server" Text="Guardar" OnClick="GuardarButton_Click" />
    &nbsp;<asp:Button ID="EliminarButton" runat="server" Text="Eliminar" OnClick="EliminarButton_Click" Visible="False" CausesValidation="False" />
    </div>
</asp:Content>
