<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="Contador.aspx.cs" Inherits="Controlador.Contador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html>

    <title>Contador de Emergencias</title>
    <link rel="stylesheet" href="Styles/style6.css">
    <style>

body {
     font-family: Arial, sans-serif;
     background-color: white;
     margin: 0;
     padding: 0;
     font-family: Arial, sans-serif;
     background-size: cover;
        }

.panel {
     background-color: rgba(255, 255, 255, 0.7); /* Fondo del panel semi-transparente */
     width: 300px;
     padding: 20px;
     margin: 50px auto;
     border-radius: 10px;
     text-align: center;
     color: black; /* Cambia el color de texto si es necesario */
        }
.emergency-counter {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    padding: 20px;
    max-width: 400px;
    margin: 50px auto;
    text-align: center;
}
    .emergency-counter h2 {
        color: #333;
        margin-bottom: 20px;
    }

    .emergency-counter .counter {
        display: flex;
        justify-content: space-around;
        margin-bottom: 20px;
    }

        .emergency-counter .counter div {
            background-color: #f2f2f2;
            border-radius: 5px;
            padding: 10px;
            width: 100px;
        }

            .emergency-counter .counter div span {
                display: block;
                font-size: 24px;
                font-weight: bold;
                color: #666;
            }

            .emergency-counter .counter div p {
                color: #999;
                margin: 0;
            }
    </style>
</head>
<body>
    <div class="emergency-counter">
        <h2>Contador de Emergencias</h2>
        <div class="counter">
            <div>
                <span id="waitingCount">0</span>
                <p>En espera</p>
            </div>
            <div>
                <span id="ongoingCount">0</span>
                <p>En proceso</p>
            </div>
            <div>
                <span id="attendedCount">0</span>
                <p>Atendidas</p>
            </div>
        </div>
        <p>Total de emergencias: <span id="totalEmergencies">0</span></p>
    </div>

    <script>
        // Simular la llegada de emergencias desde el chat en línea
        let waitingCount = 0;
        let ongoingCount = 0;
        let attendedCount = 0;
        let totalEmergencies = 0;

        function updateEmergencyCounts() {
            document.getElementById('waitingCount').textContent = waitingCount;
            document.getElementById('ongoingCount').textContent = ongoingCount;
            document.getElementById('attendedCount').textContent = attendedCount;
            document.getElementById('totalEmergencies').textContent = totalEmergencies;
        }

        // Simular la llegada de una nueva emergencia cada 5 segundos
        setInterval(() => {
            waitingCount++;
            totalEmergencies++;
            updateEmergencyCounts();

            // Simular el proceso de la emergencia después de 3 segundos
            setTimeout(() => {
                waitingCount--;
                ongoingCount++;
                updateEmergencyCounts();

                // Simular la atención de la emergencia después de 5 segundos
                setTimeout(() => {
                    ongoingCount--;
                    attendedCount++;
                    updateEmergencyCounts();
                }, 5000);
            }, 3000);
        }, 5000);
    </script>
</body>
</html>
</asp:Content>
