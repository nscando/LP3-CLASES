<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="LP3_CLASES.Clase2.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
        /* Aplicar estilos al h1 para centrar el texto */
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><asp:Label ID="Label1" runat="server" Text="Curriculum Vitae"></asp:Label></h1>
            <asp:HyperLink ID="cargarDatosCv" runat="server" NavigateUrl="CargarDatosCv.aspx">Cargar Datos del Curriculum</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="listadoDatos" runat="server" NavigateUrl="DatosCargados.aspx">Listado de datos cargados</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="contadorVisitas" runat="server" NavigateUrl="~/Clase2/ContadorVisitas.aspx">Contador de Visitas</asp:HyperLink>
            <asp:Label ID="lblContador" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
