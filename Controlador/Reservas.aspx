﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservas.aspx.cs" Inherits="Controlador.Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
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
                <img src="img/logo4.png" alt="Logo" id="logo" style="max-width: 100%;">
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

                                <a href="index.aspx" class="nav-item nav-link active">Inicio</a>
                                <a href="project.html" class="nav-item nav-link">Planificacion</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Servicios</a>
                                    <div class="dropdown-menu bg-light rounded-0 rounded-bottom m-0">
                                        <a href="#" class="dropdown-item">Trafico</a>
                                        <a href="#" class="dropdown-item">Despegues</a>
                                        <a href="#" class="dropdown-item">Rutas</a>                                
                                    </div>
                                </div>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Vuelos</a>
                                    <div class="dropdown-menu bg-light rounded-0 rounded-bottom m-0">
                                        <a href="#" class="dropdown-item">Aterrizajes</a>
                                        <a href="#" class="dropdown-item">Despegues</a>
                                        <a href="#" class="dropdown-item">Rodaje Estacionamiento</a>                                
                                    </div>
                                </div>
                                <a href="about.html" class="nav-item nav-link">Galeria</a>
                                <a href="about.html" class="nav-item nav-link">Sobre Nosotros</a>
                                <a href="Contacto.aspx" class="nav-item nav-link">Contactenos</a>
                            </div>
                            <div class="ms-auto d-none d-lg-block">
                            <a href="Login.aspx" class="btn btn-primary rounded-pill py-2 px-3">Iniciar Sesion</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Navbar End -->
        </header>
        <%------------------------------------------------------------------------------------------------------------------%>
            <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-medium text-primary">Contactanos</p>
                <h1 class="display-5 mb-5">Si tienes consultas, no dudes en contactarnos</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h3 class="mb-4">Contactanos para brindarte la ayuda lo mas antes posible!!!</h3>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtnombre" runat="server" Enabled="false"  CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="name" placeholder="Your Name"/>--%>
                                    <label for="name">Nombre</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtAerolinea" runat="server" Enabled="false"  CssClass="form-control" placeholder="Aerolinea"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="name" placeholder="Your Name"/>--%>
                                    <label for="name">Aerolinea</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtIda" runat="server" CssClass="form-control" Enabled="false" placeholder="Ida"></asp:TextBox>
                                    <%--<input type="email" class="form-control" id="email" placeholder="Your Email"/>--%>
                                    <label for="email">Ida</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtDestino" runat="server" CssClass="form-control" Enabled="false" placeholder="Destino"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="subject" placeholder="Subject"/>--%>
                                    <label for="subject">Destinos</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtcantidad" class="form-control" TextMode="Number" placeholder="Cantidad" runat="server"></asp:TextBox>
                                    <label for="message">Cantidad Maletas</label>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:DropDownList ID="dpMaletas" class="form-control"  runat="server"></asp:DropDownList>
                                    <label for="message">Cantidad Maletas</label>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtCantidadPersonas" class="form-control" TextMode="Number" placeholder="Personas" runat="server"></asp:TextBox>
                                    <label for="message">Cantidad Personas</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <asp:Button CssClass="btn btn-primary rounded-pill py-3 px-5" ID="btnEnviar" runat="server" Text="Reservar" OnClick="btnEnviar_Click"/>
                            </div>
                            <div class="col-12">
                                <p class="mb-4">
                                    <asp:Label ID="lblmsj" runat="server" Text="Label" Visible="false"></asp:Label>
                                </p>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


        <%--------------------------------------------------------------------------------------------------------------------------%>
         <!-- Footer Start -->
            <div class="container-fluid bg-dark footer mt-5 py-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="row g-5">
                        <div class="col-lg-3 col-md-6">
                            <h4 class="text-white mb-4">Our Office</h4>
                            <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                            <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                            <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                            <div class="d-flex pt-3">
                                <a class="btn btn-square btn-light rounded-circle me-2" href="#"><i
                                        class="fab fa-twitter"></i></a>
                                <a class="btn btn-square btn-light rounded-circle me-2" href="#"><i
                                        class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square btn-light rounded-circle me-2" href="#"><i
                                        class="fab fa-youtube"></i></a>
                                <a class="btn btn-square btn-light rounded-circle me-2" href="#"><i
                                        class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h4 class="text-white mb-4">Quick Links</h4>
                            <a class="btn btn-link" href="#">About Us</a>
                            <a class="btn btn-link" href="Contacto.aspx">Contacto</a>
                            <a class="btn btn-link" href="#">Our Services</a>
                            <a class="btn btn-link" href="#">Terms & Condition</a>
                            <a class="btn btn-link" href="Login.aspx">Support</a>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h4 class="text-white mb-4">Business Hours</h4>
                            <p class="mb-1">Monday - Friday</p>
                            <h6 class="text-light">09:00 am - 07:00 pm</h6>
                            <p class="mb-1">Saturday</p>
                            <h6 class="text-light">09:00 am - 12:00 pm</h6>
                            <p class="mb-1">Sunday</p>
                            <h6 class="text-light">Closed</h6>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h4 class="text-white mb-4">Newsletter</h4>
                            <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                            <div class="position-relative w-100">
                                <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text"
                                    placeholder="Your email"/>
                                <button type="button"
                                    class="btn btn-light py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->

            <!-- Copyright Start -->
            <div class="container-fluid copyright py-4">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="fw-medium text-light" href="#">Your Site Name</a>, All Right Reserved.
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                           &copy; 2024 Controlador Aéreo | Diseñado por Grupo8
                        </div>
                    </div>
                </div>
            </div>
            <!-- Copyright End -->

        <%------------------------------------------------------------------------------------------------------------------%>
        <%--scripts--%>
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </form>
</body>
</html>