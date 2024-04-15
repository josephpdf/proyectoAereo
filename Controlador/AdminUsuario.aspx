<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsuario.aspx.cs" Inherits="Controlador.AdminUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="stylesheet" href="~/Styles/style.css" />

     <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&family=Roboto:wght@500;700&display=swap"
        rel="stylesheet"/>

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet"/>
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet"/>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <%------------------------------------------------------------------------------------------------------------------%>
        <%--header--%>
        <%------------------------------------------------------------------------------------------------------------------%>
        <header>
            <div>
                <img src="img/logo4.png" alt="Logo" id="logo" style="max-width: 100%;"/>
            </div>
            <!-- Navbar Start -->
            <div class="container-fluid sticky-top">
                <div class="container">
                    <nav class="navbar navbar-expand-lg navbar-light p-lg-0">
                        <a href="index.html" class="navbar-brand d-lg-none">
                            <h1 class="fw-bold m-0">GrowMark</h1>
                        </a>
                        <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse"
                            data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarCollapse">
                            <div class="navbar-nav">
                                <a href="Principal.aspx" class="nav-item nav-link active">Inicio</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Servicios</a>
                                    <div class="dropdown-menu bg-light rounded-0 rounded-bottom m-0">
                                        <a href="#" class="dropdown-item">Despegues</a>                              
                                    </div>
                                </div>
                                <a href="about.html" class="nav-item nav-link">Reservas</a>
                                <a href="Contacto.aspx" class="nav-item nav-link">Contactenos</a>
                                <a href="Perfil.aspx" class="nav-item nav-link">Perfil</a>
                                <a>
                                    <asp:Label ID="lblmsj" runat="server" Text="Label"></asp:Label>
                                </a>
                            </div>
                            <div class="ms-auto d-none d-lg-block">
                            <a href="Login.aspx" class="btn btn-primary rounded-pill py-2 px-3">Cerrar Sesion</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Navbar End -->

        </header>
    </form>
</body>
</html>
