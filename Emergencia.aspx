<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="Emergencia.aspx.cs" Inherits="Controlador.Emergencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de Emergencia</title>
    <link rel="stylesheet" href="Styles/style5.css">
     <style>
         /* Estilos generales */
html, body {
    height: 100%;
    margin: 0;
    padding: 0;
}

body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Estilos del panel de emergencia */
.emergency-panel {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    max-width: 2023px;
    width: 100%;
}

.title {
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
}

.section-title {
    font-size: 18px;
    font-weight: bold;
    margin-top: 20px;
    margin-bottom: 10px;
}

select {
    width: 100%;
    padding: 8px;
    border-radius: 4px;
    border: 1px solid #ccc;
    margin-bottom: 10px;
}

.divider {
    height: 1px;
    background-color: #ccc;
    margin: 20px 0;
}

.emergency-image {
    display: block;
    max-width: 100%;
    height: auto;
    margin: 20px auto;
}

.button-container {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.report-button,
.cancel-button {
    padding: 10px 20px;
    border-radius: 4px;
    font-size: 16px;
    margin: 0 10px;
    cursor: pointer;
}

.report-button {
    background-color: #4CAF50;
    color: #fff;
    border: none;
}

.cancel-button {
    background-color: #f44336;
    color: #fff;
    border: none;
}
           </style>



</head>

<body>
    <div class="emergency-panel">
        <div class="title">Reporte de Emergencia</div>
        <div class="section-title">Informar a las demás torres de control sobre la emergencia</div>
        <div class="section-title">Número de vuelo</div>
        
        <select>
            <option value="123">Vuelo 123</option>
            <option value="456">Vuelo 456</option>
            <option value="789">Vuelo 789</option>
            <option value="800">Vuelo 800</option>
             <option value="905">Vuelo 905</option>
             <option value="852">Vuelo 852</option>
             <option value="753">Vuelo 753</option>
             <option value="951">Vuelo 951</option>
             <option value="156">Vuelo 156</option>
             <option value="025">Vuelo 025</option>
             <option value="348">Vuelo 348</option>
             <option value="467">Vuelo 467</option>
             <option value="658">Vuelo 658</option>
             <option value="582">Vuelo 582</option>
             <option value="236">Vuelo 236</option>
             <option value="111">Vuelo 111</option>

        </select>
        <div class="divider"></div>
        <div class="section-title">Tipo de emergencia</div>
        <select>
            <option value="medical">Emergencia Médica</option>
            <option value="mechanical">Emergencia Mecánica</option>
            <option value="fire">Incendio a Bordo</option>
            <option value="security">Emergencia de Seguridad</option>
        </select>
        <div class="section-title">Categoría de emergencia</div>
        <select>
            <option value="low">Baja</option>
            <option value="medium">Media</option>
            <option value="high">Alta</option>
        </select>
        <div class="section-title">Ubicación de la emergencia</div>
        <select>
            <option value="cockpit">Cabina de Pilotos (Cockpit)</option>
            <option value="cabin">Cabina de Pasajeros</option>
            <option value="wing">Ala de la Aeronave</option>
        </select>
        <img src="img/Contador.png" alt="Controlador de Emergencias" class="emergency-image">
        <div class="button-container">
          <button class="report-button" onclick="Contador()">Reportar</button>
            <button class="cancel-button">Cancelar</button>
        </div>
    </div>
</body>
</html>
</asp:Content>
