<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="FormarPago.aspx.cs" Inherits="Controlador.FormarPago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html>
<head>
    <title>Pago y Confirmación de Reserva</title>
    <style>
        .payment-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .card-icons {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .card-icons img {
            height: 30px;
        }
        input[type="text"],
        input[type="email"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: blue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

         #confirmationMessage {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            z-index: 9999;
        }
    </style>
</head>
<body>
    <div class="payment-container">
        <h2>Pagar y Confirmar Reserva</h2>
        <div>
            <label>Elige el tipo de tarjeta:</label>
            <div class="card-icons">
                <img src="img/visa.png" alt="Visa">
                <img src="img/mastercard.png" alt="Mastercard">
                <img src="img/amex.jpg" alt="American Express">
            </div>
        </div>
        <div>
            <label for="card-holder">Nombre del Titular:</label>
            <br />
            <asp:TextBox ID="nombreTitularTextBox" runat="server">Nombre del titular</asp:TextBox>
            <br />
&nbsp;</div>
        <div>
            <label for="expiry-date">Fecha de Vencimiento:</label>
            <br />
&nbsp;<asp:TextBox ID="fechaVencimientoTextBox" runat="server">mm/dd</asp:TextBox>
        </div>
        <div>
            <label for="card-number">Número de Tarjeta:</label>&nbsp;
            <asp:TextBox ID="numeroTarjetaTextBox" runat="server">número tarjeta</asp:TextBox>
            </div>
           <div>
        <label for="cvv">CVV:</label>&nbsp;
               <asp:TextBox ID="cvvTextBox" runat="server">CVV</asp:TextBox>
         </div>
        <div class="buyer-details">
            <h3>Datos del Comprador</h3>
            <div>
                <label for="email">Correo Electrónico:</label>&nbsp;
                <asp:TextBox ID="correoElectronicoTextBox" runat="server">correo electrónico</asp:TextBox>
            </div>
            <div>
                <label for="address">Dirección:</label><asp:TextBox ID="direccionTextBox" runat="server">Dirección</asp:TextBox>
&nbsp;
            </div>
            <div>
                <label for="city">Lugar de Residencia:</label>&nbsp;
        <label for="country">
                <asp:TextBox ID="ciudadTextBox" runat="server">Ciudad</asp:TextBox>
                </label>
            </div>
             <div>
        <label for="country">País:</label>
        <select id="paisDropDownList" required>
            <option value="">Selecciona un país</option>
                    <option value="afganistan">Afganistán</option>
                    <option value="islas_aland">Islas Åland</option>
                    <option value="albania">Albania</option>
                    <option value="argelia">Argelia</option>
                    <option value="andorra">Andorra</option>
                    <option value="angola">Angola</option>
                    <option value="antigua_y_barbuda">Antigua y Barbuda</option>
                    <option value="argentina">Argentina</option>
                    <option value="armenia">Armenia</option>
                    <option value="aruba">Aruba</option>
                    <option value="australia">Australia</option>
                    <option value="austria">Austria</option>
                    <option value="azerbaiyan">Azerbaiyán</option>
                    <option value="bahamas">Bahamas</option>
                    <option value="bahrein">Bahréin</option>
                    <option value="bangladesh">Bangladés</option>
                    <option value="barbados">Barbados</option>
                    <option value="bielorrusia">Bielorrusia</option>
                    <option value="belgica">Bélgica</option>
                    <option value="belice">Belice</option>
                    <option value="benin">Benín</option>
                    <option value="bermudas">Bermudas</option>
                    <option value="butan">Bután</option>
                    <option value="bolivia">Bolivia</option>
                    <option value="bosnia_y_herzegovina">Bosnia y Herzegovina</option>
                    <option value="botsuana">Botsuana</option>
                    <option value="isla_bouvet">Isla Bouvet</option>
                    <option value="brasil">Brasil</option>
                    <option value="territorio_britanico_del_oceano_indico">Territorio Británico del Océano Índico</option>
                    <option value="brunei">Brunéi</option>
                    <option value="bulgaria">Bulgaria</option>
                    <option value="burkina_faso">Burkina Faso</option>
                    <option value="burundi">Burundi</option>
                    <option value="camboya">Camboya</option>
                    <option value="camerun">Camerún</option>
                    <option value="canada">Canadá</option>
                    <option value="cabo_verde">Cabo Verde</option>
                    <option value="islas_caiman">Islas Caimán</option>
                    <option value="republica_centroafricana">República Centroafricana</option>
                    <option value="chad">Chad</option>
                    <option value="chile">Chile</option>
                    <option value="china">China</option>
                    <option value="isla_de_navidad">Isla de Navidad</option>
                    <option value="islas_cocos">Islas Cocos (Keeling)</option>
                    <option value="colombia">Colombia</option>
                    <option value="comoras">Comoras</option>
                    <option value="congo">Congo</option>
                    <option value="islas_cook">Islas Cook</option>
                    <option value="costa_rica">Costa Rica</option>
                    <option value="cote_d'ivoire">Côte d'Ivoire</option>
                    <option value="croacia">Croacia</option>
                    <option value="cuba">Cuba</option>
                    <option value="chipre">Chipre</option>
                    <option value="republica_checa">República Checa</option>
                    <option value="dinamarca">Dinamarca</option>
                    <option value="yibuti">Yibuti</option>
                    <option value="dominica">Dominica</option>
                    <option value="republica_dominicana">República Dominicana</option>
                    <option value="ecuador">Ecuador</option>
                    <option value="egipto">Egipto</option>
                    <option value="el_salvador">El Salvador</option>
                    <option value="guinea_ecuatorial">Guinea Ecuatorial</option>
                    <option value="eritrea">Eritrea</option>
                    <option value="estonia">Estonia</option>
                    <option value="esuatini">Esuatini</option>
                    <option value="etiopia">Etiopía</option>
                    <option value="islas_malvinas">Islas Malvinas (Malvinas)</option>
                    <option value="islas_feroe">Islas Feroe</option>
                    <option value="fiyi">Fiyi</option>
                    <option value="finlandia">Finlandia</option>
                    <option value="francia">Francia</option>
                    <option value="guayana_francesa">Guayana Francesa</option>
                    <option value="polinesia_francesa">Polinesia Francesa</option>
                    <option value="territorios_franceses_del_sur">Territorios Franceses del Sur</option>
                    <option value="gabon">Gabón</option>
                    <option value="gambia">Gambia</option>
                    <option value="georgia">Georgia</option>
                    <option value="alemania">Alemania</option>
                    <option value="ghana">Ghana</option>
                    <option value="gibraltar">Gibraltar</option>
                    <option value="grecia">Grecia</option>
                    <option value="groenlandia">Groenlandia</option>
                    <option value="granada">Granada</option>
        </select>
    </div>
        </div>
         <form>
        <!-- Campos del formulario -->
        <button type="submit" id="confirmButton">Confirmar</button>

    </form>

   <div id="confirmationMessage" style="display: none;">
    <h2>¡Gracias por su compra!</h2>
    <p>Su compra ha sido procesada con éxito.</p>
</div>

<script>
    const confirmButton = document.getElementById('confirmButton');
    const confirmationMessage = document.getElementById('confirmationMessage');
    const form = document.querySelector('form');
    const formFields = form.querySelectorAll('input, select');

    confirmButton.addEventListener('click', function (event) {
        event.preventDefault(); // Evitar el envío del formulario

        // Verificar si todos los campos están completos
        let formValid = true;
        formFields.forEach(function (field) {
            if (field.value.trim() === '') {
                formValid = false;
            }
        });

        // Mostrar el mensaje de confirmación si el formulario es válido
        if (formValid) {
            confirmationMessage.style.display = 'block';
        } else {
            alert('Por favor, complete todos los campos del formulario.');
        }
    });
</script>
</body>
</html>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CONEXION" />


</div>


</asp:Content>
