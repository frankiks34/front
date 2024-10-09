<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Mis Cursos">
    <meta name="author" content="">
    <title>Mis Cursos - Dashboard del Profesor</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="ProfesorDashboard.jsp">LearnHub - Profesor</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="ProfesorDashboard.jsp">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="MiPerfil.jsp">Mi Perfil</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead bg-primary text-white text-center">
    <div class="container">
        <h1 class="masthead-heading text-uppercase mb-0">Mis Cursos</h1>
        <p class="masthead-subheading font-weight-light mb-0">Gestiona y Crea Nuevos Cursos</p>
    </div>
</header>

<section class="page-section" id="mis-cursos">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Cursos Actuales</h2>
            <h3 class="section-subheading text-muted">Lista de cursos que estás impartiendo</h3>
        </div>
        <!-- Aquí se mostrarán los cursos existentes -->
        <div class="row">
            <!-- Puedes replicar esta tarjeta para cada curso del profesor -->
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="assets/img/course1.jpg" alt="Curso 1">
                    <div class="card-body">
                        <h5 class="card-title">Curso de Java</h5>
                        <p class="card-text">Aprende Java desde cero hasta avanzado.</p>
                        <a href="#" class="btn btn-primary">Administrar Curso</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Sección para Crear un Nuevo Curso -->
<section class="page-section bg-light" id="crear-curso">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Crear Nuevo Curso</h2>
            <h3 class="section-subheading text-muted">Diseña y publica un nuevo curso</h3>
        </div>
        <form>
            <div class="mb-3">
                <label for="nombreCurso" class="form-label">Nombre del Curso</label>
                <input type="text" class="form-control" id="nombreCurso" placeholder="Nombre del curso">
            </div>
            <div class="mb-3">
                <label for="descripcionCurso" class="form-label">Descripción del Curso</label>
                <textarea class="form-control" id="descripcionCurso" rows="3" placeholder="Descripción del curso"></textarea>
            </div>
            <div class="mb-3">
                <label for="categoriaCurso" class="form-label">Categoría</label>
                <select class="form-select" id="categoriaCurso">
                    <option selected>Selecciona una categoría</option>
                    <option value="1">Programación</option>
                    <option value="2">Data Science</option>
                    <option value="3">Desarrollo Web</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Publicar Curso</button>
        </form>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
