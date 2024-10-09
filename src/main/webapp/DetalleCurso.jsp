<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Negocio.Curso, Negocio.Profesor" %>
<%@page import="java.util.List" %>
<%@page import="Negocio.Inscripcion" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Detalle del Curso">
    <meta name="author" content="">
    <title>Detalle del Curso</title>
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
                <li class="nav-item"><a class="nav-link" href="Cursos.jsp">Explorar Cursos</a></li>
                <li class="nav-item"><a class="nav-link" href="MiPerfilEstudiante.jsp">Mi Perfil</a></li>
                <li class="nav-item"><a class="nav-link" href="BolsaCompras.jsp">Bolsa de Compras</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>

<%
    // Supongamos que el ID del curso se pasa como parámetro en la URL, por ejemplo: DetalleCurso.jsp?codigo=1
    String codigoCurso = request.getParameter("codigo");
    
    // Aquí deberías recuperar el curso de la base de datos basándote en el `codigoCurso`.
    // Simulación de un curso cargado para este ejemplo:
    Curso curso = new Curso();
    curso.setCodigo(Integer.parseInt(codigoCurso));
    curso.setNombre("Curso de Java");
    curso.setPrecio(49.99);
    curso.setDescripcion("Este curso cubre los fundamentos de Java, programación orientada a objetos y patrones de diseño.");

    Profesor profesor = new Profesor();
    profesor.setNombre("John Doe");
    curso.setProfesor(profesor);
    
    List<Inscripcion> inscritos = curso.getInscritos();
%>

<header class="masthead bg-primary text-white text-center">
    <div class="container">
        <h1 class="masthead-heading text-uppercase mb-0"><%= curso.getNombre() %></h1>
        <p class="masthead-subheading font-weight-light mb-0">Descripción detallada del curso</p>
    </div>
</header>

<section class="page-section bg-light" id="detalles">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Detalles del Curso</h2>
            <h3 class="section-subheading text-muted">Información completa sobre este curso</h3>
        </div>
        <div class="row">
            <!-- Información del Curso -->
            <div class="col-md-6">
                <h4>Descripción</h4>
                <p><%= curso.getDescripcion() %></p>
            </div>
            <div class="col-md-6">
                <h4>Información General</h4>
                <ul>
                    <li><strong>Nombre del Curso:</strong> <%= curso.getNombre() %></li>
                    <li><strong>Precio:</strong> $<%= curso.getPrecio() %></li>
                    <li><strong>Profesor:</strong> <%= curso.getProfesor().getNombre() %></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<section class="page-section" id="inscritos">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Estudiantes Inscritos</h2>
            <h3 class="section-subheading text-muted">Lista de estudiantes que están inscritos en este curso</h3>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>#</th>
                        <th>Nombre del Estudiante</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Simulación de estudiantes inscritos -->
                    <tr>
                        <td>1</td>
                        <td>Estudiante 1</td>
                        <td>estudiante1@correo.com</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Estudiante 2</td>
                        <td>estudiante2@correo.com</td>
                    </tr>
                    <!-- Aquí se pueden agregar más estudiantes -->
                </tbody>
            </table>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer bg-dark text-white text-center">
    <div class="container">
        <small>&copy; 2024 Mi Plataforma de Cursos - Todos los derechos reservados</small>
    </div>
</footer>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
