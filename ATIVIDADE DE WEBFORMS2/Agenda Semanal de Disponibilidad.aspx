<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda Semanal de Disponibilidad.aspx.cs" Inherits="ATIVIDADE_DE_WEBFORMS2.Agenda_Semanal_de_Disponibilidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agenda Semanal de Disponibilidade</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        div {
            text-align: center;
            font-size: 24px;
            margin: 20px 0;
        }

        #form1 {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        #CheckBoxList1 label {
            display: block;
            font-weight: normal;
            font-size: 16px;
            white-space: nowrap;
        }

        #CheckBoxList1 input[type="checkbox"] {
            float: left;
            margin-right: 5px;
        }

        #Button1 {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        #Button1:hover {
            background-color: #0056b3;
        }

        #resultadoLabel {
            font-size: 20px;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Agenda Semanal de Disponibilidade
        </div>
       <asp:CheckBoxList ID="CheckBoxList1" runat="server">
       </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="btnSelecionar_Dias" />

        <p>
            <asp:Label ID="resultadoLabel" runat="server" Text="Dias disponíveis:"></asp:Label>
        </p>
    </form>
</body>
</html>
