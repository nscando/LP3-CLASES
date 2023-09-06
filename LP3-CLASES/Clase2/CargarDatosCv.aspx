<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarDatosCv.aspx.cs" Inherits="LP3_CLASES.Clase2.CargarDatosCv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Apellido: "></asp:Label>
            <asp:TextBox ID="txbApellido" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="DNI: "></asp:Label>
            <asp:TextBox ID="txbDni" runat="server"></asp:TextBox><br />
            <br />            
            <asp:Label ID="Label4" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Ciudad: "></asp:Label>
            <asp:TextBox ID="txbCiudad" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Area para la que se postula: "></asp:Label>
            <asp:TextBox ID="txbArea" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Otros Comentarios: "></asp:Label>
            <br />
            <textarea id="txaOtrosComentarios" cols="50" rows="6" runat="server"></textarea><br />
            <br />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar Datos" OnClick="btnGuardar_Click" />
            <asp:HyperLink ID="regresarInicio" runat="server" NavigateUrl="~/Clase2/Ejercicio1.aspx">Regresar al inicio</asp:HyperLink>
            <br /><asp:Label ID="lblMensaje" runat="server" Text="-----"></asp:Label>
        </div>
    </form>
</body>
</html>
