<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Explorar Cursos">
    <meta name="author" content="">
    <title>Explorar Cursos</title>
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
                <li class="nav-item"><a class="nav-link" href="MisCursosEstudiante.jsp">Mis Cursos</a></li>
                <li class="nav-item"><a class="nav-link" href="MiPerfilEstudiante.jsp">Mi Perfil</a></li>
                <li class="nav-item"><a class="nav-link" href="BolsaCompras.jsp">Bolsa de Compras</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead bg-primary text-white text-center">
    <div class="container">
        <h1 class="masthead-heading text-uppercase mb-0">Explorar Cursos</h1>
        <p class="masthead-subheading font-weight-light mb-0">Encuentra el curso perfecto para ti</p>
    </div>
</header>

<!-- Sección de Filtros -->
<section class="page-section bg-light" id="filtros">
    <div class="container">
        <h2 class="section-heading text-uppercase text-center">Filtros de Búsqueda</h2>
        <div class="row">
            <div class="col-md-3">
                <select class="form-select" id="categoriaCurso" aria-label="Filtro de Categoría">
                    <option selected>Categoría</option>
                    <option value="1">Programación</option>
                    <option value="2">Data Science</option>
                    <option value="3">Desarrollo Web</option>
                </select>
            </div>
            <div class="col-md-3">
                <select class="form-select" id="nivelCurso" aria-label="Filtro de Nivel">
                    <option selected>Nivel</option>
                    <option value="Principiante">Principiante</option>
                    <option value="Intermedio">Intermedio</option>
                    <option value="Avanzado">Avanzado</option>
                </select>
            </div>
            <div class="col-md-3">
                <input type="text" class="form-control" id="nombreCurso" placeholder="Buscar por nombre">
            </div>
            <div class="col-md-3">
                <button class="btn btn-primary" id="filtrarButton">Buscar</button>
            </div>
        </div>
    </div>
</section>

<!-- Sección de Cursos -->
<section class="page-section" id="cursos">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Cursos Disponibles</h2>
            <h3 class="section-subheading text-muted">Explora los cursos que ofrecemos</h3>
        </div>
        <div class="row">
            <!-- Repetir para cada curso -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <img class="card-img-top" src="assets/img/course1.jpg" alt="Curso 1">
                    <div class="card-body">
                        <h5 class="card-title">Curso de Java</h5>
                        <p class="card-text">Aprende Java desde cero hasta avanzado.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                        <button class="btn btn-warning">Agregar a la Bolsa</button>
                    </div>
                </div>
            </div>
            <!-- Agregar más tarjetas de curso aquí -->
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
