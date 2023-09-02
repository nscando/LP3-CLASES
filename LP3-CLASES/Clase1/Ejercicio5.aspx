<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="LP3_CLASES.Clase1.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Fira Code'; margin: 15px; font-size: 50px; font-weight: 800; width: auto; height: auto">
            INGRESE UN NUMERO
        </div>
        <asp:TextBox ID="TxtNumero" runat="server" BorderColor="#6600CC" Style="margin: 30px; text-align: left; line-height: 48px; border-style: dashed; font-weight: bold; font-size: large; height: 48px; width: 383px" Text="0"></asp:TextBox>
        <br />
        <p style="font-family: 'Fira Code'; font-size: 25px; font-weight: 700">
            Convertir a :
        </p>
        <div style="font-family: 'Fira Code'; margin: 15px; vertical-align: middle; font-size: 25px; font-weight: 700">
            <asp:CheckBox ID="ChkBxCentena" runat="server" Style="margin-right: 15px;" BackColor="#66CCFF" BorderColor="#0066FF" BorderStyle="Outset" Font-Bold="True" Font-Size="Larger" Text="Centena" />
            <asp:CheckBox ID="ChkBxDecena" runat="server" Style="margin-right: 15px;" BackColor="#66CCFF" BorderColor="#0066FF" BorderStyle="Outset" Font-Bold="True" Font-Size="Larger" Text="Decena" />
            <asp:CheckBox ID="ChkBxUnidad" runat="server" BackColor="#66CCFF" BorderColor="#0066FF" BorderStyle="Outset" Font-Bold="True" Font-Size="Larger" Text="Unidad" />
        </div>
        <asp:Button ID="Button1" runat="server" Style="border-radius: 30px; font-size: 40px; font-family: 'Fira Code'; margin: 15px; font-weight: 800" Height="66px" Text="CONVERTIR" Width="398px" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="ResultadoLabel" runat="server" Style="font-family: 'Fira Code'; font-size: 30px; font-weight: 700; color: green;"></asp:Label>
    </form>
</body>
</html>
