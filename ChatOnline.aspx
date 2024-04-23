<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="ChatOnline.aspx.cs" Inherits="Controlador.ChatOnline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            align-items: center; /* Alinea el contenido horizontalmente al centro */
            justify-content: center; /* Centra el contenido verticalmente */
            min-height: 100vh; /* Ocupa toda la altura visible del viewport */
        }
        .emergency-panel {
            width: 100%; /* Ancho completo del contenido */
            max-width: 1700px; /* Ancho máximo del contenido */
            background-color: #ffffff;
            padding: 200px;
            border-radius: 80px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center; /* Alinea el título al centro */
        }
        .section-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .divider {
            height: 2px;
            background-color: #000;
            margin: 20px 0;
        }
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 16px;
            box-sizing: border-box; /* Incluye el padding en el ancho */
        }
        .emergency-image {
            max-width: 100%;
            margin-bottom: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }
        .report-button {
            background-color: #007bff;
            color: #fff;
        }
        .cancel-button {
            background-color: #dc3545;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="emergency-panel">
        <div class="title">Chat Online de Emergencia</div>
        
        <div class="section-title">Informar a las demás torres de control sobre la emergencia</div>
        <div class="section-title">Seleccionar el tipo de emergencia</div>
        <select>
            <option value="medical">Emergencia Médica</option>
            <option value="mechanical">Emergencia Mecánica</option>
            <option value="fire">Incendio a Bordo</option>
            <option value="security">Emergencia de Seguridad</option>
            <option value="other">Otro tipo de emergencia</option>
        </select>
        
        <div class="divider"></div>
        
        <div class="section-title">Describa la emergencia</div>
        <textarea id="emergencyDescription" name="emergencyDescription" rows="8" required></textarea>
        
        <img src="img/Controlador.jpg" alt="Controlador de Emergencias" class="emergency-image">
        
        <div class="button-container">
            <button onclick="window.open('emergencia', '_blank')" class="report-button">Reportar</button>
            <button class="cancel-button">Cancelar</button>
        </div>
    </div>
</body>
</html>

            
</asp:Content>

                  