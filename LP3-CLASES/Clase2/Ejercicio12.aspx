<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio12.aspx.cs" Inherits="LP3_CLASES.Clase2.Ejercicio12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f5f9;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #007bff;
        }

        p {
            color: #555;
        }

        .label, .textbox, .dropdown, .button {
            display: block;
            margin-bottom: 10px;
        }

        .label {
            font-weight: bold;
        }

        .textbox, .dropdown {
            width: 100%;
            padding: 10px;
            border-radius: 15px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .button {
            width: 100%;
            padding: 15px;
            border-radius: 30px;
            background-color: #007bff;
            color: #fff;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Ejercicio 12</h1>
            <p>Gestión de Libros: Debe permitir cargar el nombre del libro, el autor y seleccionar el genero. Debe mostrar listado de todos los libros.</p>
            <hr />

            <div class="label">Nombre del Libro</div>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>

            <div class="label">Autor</div>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>

            <div class="label">Genero</div>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="Selecciona un género" Value="" Disabled="true" Selected="true"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="Button2" runat="server" Text="Cargar" CssClass="button" OnClick="Button2_Click" />
            <asp:Button ID="Button1" runat="server" Text="Consultar" CssClass="button" />
            <asp:Label ID="LabelResultado" class="label" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
