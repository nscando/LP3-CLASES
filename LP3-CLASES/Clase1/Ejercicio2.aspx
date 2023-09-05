<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="LP3_CLASES.Clase1.Ejercicio2" %>

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
            <asp:TextBox runat="server" ID="txbNombre"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descripción: ">

            </asp:Label><asp:TextBox runat="server" ID="txbDescripcion"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Cantidad: "></asp:Label><asp:TextBox runat="server" ID="txbCantidad"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="listaTipo" runat="server" OnSelectedIndexChanged="listaTipo_SelectedIndexChanged">
                
                <asp:ListItem Value="A">Tipo A</asp:ListItem>
                <asp:ListItem Value="B">Tipo B</asp:ListItem>
                <asp:ListItem Value="C">Tipo C</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnAltaProducto" runat="server" Text="Alta del Producto" OnClick="btnAltaProducto_Click" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Productos dados de Alta: "></asp:Label>
            <asp:Label runat="server" ID="lblAlta"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
