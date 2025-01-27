﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPasajero.aspx.cs" Inherits="Controlador.AdminPasajero" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controlador Aereo</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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

    <link href="css/table1.css" rel="stylesheet" />
    <%------------------------------------------------------------------------------------------------------------------%>
</head>
<body>
    <form id="form1" runat="server">
        <%------------------------------------------------------------------------------------------------------------------%>        <%--header--%>        <%------------------------------------------------------------------------------------------------------------------%>
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
                                <a href="AdminPasajero.aspx" class="nav-item nav-link active">Inicio</a>
                                <a href="project.html" class="nav-item nav-link">Equipaje</a>
                                <a href="about.html" class="nav-item nav-link">Reservas</a>
                                <a href="Contacto.aspx" class="nav-item nav-link">Contactenos</a>
                                <a href="Perfil.aspx" class="nav-item nav-link">Perfil</a>  
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Navbar End -->
        </header>
        <%------------------------------------------------------------------------------------------------------------------%>
            <!-- Carousel Start -->
            <div class="container-fluid px-0 mb-5">
            <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="img/carousel-5.jpg" alt="Image">
                        <div class="carousel-caption">
                            <div class="container">
                                <div class="row justify-content-start">
                                    <div class="col-md-6 text-start"> <!-- Cambiado de col-md-7 a col-md-6 -->
                                        <p class="fs-4 text-white animated slideInRight">Bienvenidos a
                                            <strong>SkyGuard</strong>
                                        </p>
                                        <h1 class="display-1 text-white mb-4 animated slideInRight">Sueña y vuela en los aires 
                                            Growth</h1>
                                        <a href="#"
                                            class="btn btn-primary rounded-pill py-3 px-5 animated slideInRight">Explora
                                            Más</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                    <img class="w-100" src="img/carousel-4.jpg" alt="Image"/>
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-end">
                                <div class="col-md-6 text-secondary"> <!-- Cambiado de col-md-7 a col-md-6 -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-3.jpg" alt="Image"/>
                        <div class="carousel-caption">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-md-6 text-end"> <!-- Cambiado de col-md-7 a col-md-6 -->
                                        <h1 class="display-1 text-white mb-5 animated slideInLeft">Cumple tus sueños
                                            en las alturas!!!
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            </div>
        <!-- Carousel End -->
        <%------------------------------------------------------------------------------------------------------------------%>        <%--Tabla de vuelos--%> 
        <section class="intro">
            <div class="container-fluid">
            <div class="bg-image h-100" style="background-image:url('img');">
                <div class="mask d-flex align-items-center h-100">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="card shadow-2-strong" style="background-color: #f5f7fa;">
                                    <div class="card-body">
                                        <div class="table-responsive w-100">
                                            <asp:GridView Height="100px" CssClass="table" ID="gdvuelos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="941px">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    
                                                    <asp:CommandField ShowSelectButton="True" 
                                                    ControlStyle-CssClass="btn btn-primary rounded-pill py-2 px-3" />
                                                </Columns>
                                                <EditRowStyle BackColor="#999999" />
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
        <%------------------------------------------------------------------------------------------------------------------%>        <%--Tarjetas--%> 
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                    <p class="fs-5 fw-medium text-primary">Mas Información</p>
                    <h1 class="display-5 mb-5">Cualquier consulta estamos para ayudarte</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded overflow-hidden pb-4">
                            <img class="img-fluid mb-4" src="img/card1.png" alt="">
                            <button type="button" class="btn btn-primary btn-sm px-3 rounded">Informacion de Tu vuelo</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded overflow-hidden pb-4">
                            <img class="img-fluid mb-4" src="img/card2.png" alt="">
                            <button type="button" class="btn btn-primary btn-sm px-3 rounded">Seguimiento Maletas</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded overflow-hidden pb-4">
                            <img class="img-fluid mb-4" src="img/card3.png" alt="">
                            <button type="button" class="btn btn-primary btn-sm px-3 rounded">Ofertas de Vuelos</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item rounded overflow-hidden pb-4">
                            <img class="img-fluid mb-4" src="img/card4.png" alt="">
                            <button type="button" class="btn btn-primary btn-sm px-3 rounded">Consultas</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%------------------------------------------------------------------------------------------------------------------%>
            <hr />
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
                                    placeholder="Your email">
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


            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
                    class="bi bi-arrow-up"></i></a>
       
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
