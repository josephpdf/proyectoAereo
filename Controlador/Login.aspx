<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Controlador.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title>Login V18</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
    <div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100">
			<%-------------------------------------------------------------------%>
			<form id="form1" runat="server" class="login100-form validate-form">
			  <span class="login100-form-title p-b-43">
								Iniciar Sesion
							</span>
							
							
							<div class="wrap-input100 validate-input" data-validate = "email es requerido">
								<asp:TextBox CssClass="input100"  ID="txtPassword" runat="server"></asp:TextBox>
								<%--<input class="input100" type="text" name="Correo"/>--%>
								<span class="focus-input100"></span>
								<span class="label-input100">Email</span>
							</div>
							
							
							<div class="wrap-input100 validate-input" data-validate="Contraseña es requerido">
								<%--<input class="input100" type="password" name="pass"/>--%>
								<asp:TextBox CssClass="input100"  ID="txtpass" TextMode="Password" runat="server"></asp:TextBox>
								<span class="focus-input100"></span>
								<span class="label-input100">Contraseña</span>
							</div>

							<div class="flex-sb-m w-full p-t-3 p-b-32">
								<div class="contact100-form">
									<asp:LinkButton ID="btnregistrarse" CssClass="txt2" runat="server" OnClick="btnregistrarse_Click">Registrarse</asp:LinkButton>
								</div>

								<div>
									<asp:LinkButton ID="lbtnOlvido" CssClass="txt1" runat="server">Olvidó Contraseña?</asp:LinkButton>
								</div>
							</div>
					

							<div class="container-login100-form-btn">
								<asp:Button ID="btnLogin" CssClass="login100-form-btn" runat="server" Text="Iniciar Sesión" />
								<%--<button class="login100-form-btn">
									Login
								</button>--%>
							</div>
							
							<div class="text-center p-t-46 p-b-20">
								<span class="txt2">
									 Registrate o Inicia Sesión
								</span>
							</div>

							<div class="login100-form-social flex-c-m">
								<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
									<i class="fa fa-facebook-f" aria-hidden="true"></i>
								</a>

								<a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</a>
							</div>
			</form>
			<%--fin del form--%>
			<%-------------------------------------------------------------------%>
			<div class="login100-more" style="background-image: url('img/login2.jpg');">
			</div>
		</div>
	</div>
</div>

    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/login.js"></script> 
</body>
</html>
