<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Mis Cursos">
    <meta name="author" content="">
    <title>Mis Cursos - Estudiante</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="EstudianteDashboard.jsp">LearnHub - Estudiante</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="EstudianteDashboard.jsp">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="Cursos.jsp">Explorar Cursos</a></li>
                <li class="nav-item"><a class="nav-link" href="MiPerfilEstudiante.jsp">Mi Perfil</a></li>
                <li class="nav-item"><a class="nav-link" href="BolsaCompras.jsp">Bolsa de Compras</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead bg-primary text-white text-center">
    <div class="container">
        <h1 class="masthead-heading text-uppercase mb-0">Mis Cursos</h1>
        <p class="masthead-subheading font-weight-light mb-0">Accede a los cursos en los que estás inscrito</p>
    </div>
</header>

<section class="page-section" id="mis-cursos">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Mis Cursos</h2>
            <h3 class="section-subheading text-muted">Lista de cursos adquiridos</h3>
        </div>
        <!-- Lista de Cursos del Estudiante -->
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="assets/img/course1.jpg" alt="Curso 1">
                    <div class="card-body">
                        <h5 class="card-title">Curso de Java</h5>
                        <p class="card-text">Aprende Java desde cero hasta avanzado.</p>
                        <a href="#" class="btn btn-primary">Ir al Curso</a>
                    </div>
                </div>
            </div>
            <!-- Se pueden agregar más tarjetas de cursos aquí -->
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
