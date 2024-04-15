<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vuelos.aspx.cs" Inherits="Controlador.Vuelos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
       <style>
    .form-container {
        display: flex;
        justify-content: space-between;
        align-items: flex-start; /* Alinear elementos al inicio verticalmente */
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        max-width: 1250px;
        width: 100%;
        box-sizing: border-box;
        margin-left: 180px;
        margin-top: 70px;
        background-color:white;
    }

    .form-content {
        flex: 1;
        margin-right: 30px;
    }

    .form-image {
        margin-top: 50px; /* Ajustar el margen superior de la imagen */
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 8px;
    }

    .form-select,
    .form-select,
    .form-select,
    .form-select,
    .form-select {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #007bff;
        color: #ffffff;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }

    img {
        max-width: 500px;
        height: auto;
        display: block;
        margin: 0 auto;
    }
</style>
    <div class="form-container">
    <div class="form-content">
        <h2>Registro de Vuelo</h2>
        <div class="form-group">
            <label for="aerolinea">Aerolínea:</label>
            <asp:DropDownList ID="idaerolinea" runat="server" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="aeronave">Aeronave:</label>
            <asp:DropDownList ID="idaeronave" runat="server" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="origen">Origen:</label>
            <asp:TextBox ID="origen" runat="server" CssClass="form-select" required></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="destino">Destino:</label>
            <asp:TextBox ID="destino" runat="server" CssClass="form-select" required></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="HoraSalida">Hora Salida:</label>
            <asp:TextBox ID="HoraSalida" runat="server" CssClass="form-select"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="llegada">Hora Llegada:</label>
            <asp:TextBox ID="llegada" runat="server" CssClass="form-select" required></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="duracion">Duración estimada:</label>
            <asp:TextBox ID="Duracion" runat="server" CssClass="form-select"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Tipovuelo">Tipo vuelo:</label>
            <asp:DropDownList ID="idtipovuelo" runat="server" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="escala">Escala:</label>
            <asp:DropDownList ID="idescala" runat="server" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="cantescala">Cantidad de escalas:</label>
            <asp:TextBox ID="CantEscalan" runat="server" CssClass="form-select"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="estado">Estado del Vuelo:</label>
            <asp:DropDownList ID="idestado" runat="server" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="form-group">
            <button type="submit">Enviar</button>
        </div>
    </div>
    <div class="form-image">
        <img src="img/avion22.jpg" alt="Avión"/>
    </div>
</div>
</body>
</html>
