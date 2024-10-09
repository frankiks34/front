<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Bolsa de Compras">
    <meta name="author" content="">
    <title>Bolsa de Compras - Estudiante</title>
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

<header class="masthead bg-primary text-white text-center">
    <div class="container">
        <h1 class="masthead-heading text-uppercase mb-0">Bolsa de Compras</h1>
        <p class="masthead-subheading font-weight-light mb-0">Revisa y confirma tus cursos antes de inscribirte</p>
    </div>
</header>

<section class="page-section" id="bolsa">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Cursos en la Bolsa de Compras</h2>
            <h3 class="section-subheading text-muted">Verifica los cursos que deseas adquirir</h3>
        </div>
        <!-- Tabla de Cursos en la Bolsa de Compras -->
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Curso</th>
                        <th scope="col">Instructor</th>
                        <th scope="col">Categoría</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Filas de cursos dinámicas según la bolsa de compras del estudiante -->
                    <tr>
                        <th scope="row">1</th>
                        <td>Curso de Java</td>
                        <td>John Doe</td>
                        <td>Programación</td>
                        <td>$49.99</td>
                        <td>
                            <button class="btn btn-danger">Eliminar</button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Curso de Python</td>
                        <td>Jane Smith</td>
                        <td>Data Science</td>
                        <td>$39.99</td>
                        <td>
                            <button class="btn btn-danger">Eliminar</button>
                        </td>
                    </tr>
                    <!-- Puedes agregar más filas de cursos según los datos de la bolsa -->
                </tbody>
            </table>
        </div>
        <!-- Total -->
        <div class="text-end mb-4">
            <h4>Total: <span id="totalPrice">$89.98</span></h4>
        </div>
        <!-- Botón para proceder al pago -->
        <div class="text-center">
            <button class="btn btn-primary btn-xl text-uppercase" id="checkoutButton">Proceder al Pago</button>
        </div>
    </div>
</section>

<!-- Modal para Confirmación de Compra -->
<div class="modal fade" id="checkoutModal" tabindex="-1" aria-labelledby="checkoutModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="checkoutModalLabel">Confirmar Compra</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>¿Estás seguro de que deseas comprar estos cursos?</p>
                <ul id="courseList">
                    <!-- Listado de cursos -->
                    <li>Curso de Java - $49.99</li>
                    <li>Curso de Python - $39.99</li>
                </ul>
                <h5>Total: $89.98</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Confirmar y Pagar</button>
            </div>
        </div>
    </div>
</div>

<!-- Scripts de Bootstrap y JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Ejemplo de JavaScript para manejar el total y la eliminación de cursos
    const prices = [49.99, 39.99]; // Lista de precios de ejemplo
    const totalPriceElement = document.getElementById('totalPrice');
    const checkoutButton = document.getElementById('checkoutButton');
    
    // Función para actualizar el total
    function updateTotal() {
        const total = prices.reduce((sum, price) => sum + price, 0);
        totalPriceElement.textContent = `$${total.toFixed(2)}`;
    }

    // Mostrar el modal de confirmación
    checkoutButton.addEventListener('click', () => {
        const checkoutModal = new bootstrap.Modal(document.getElementById('checkoutModal'));
        checkoutModal.show();
    });

    updateTotal(); // Llamada inicial para calcular el total
</script>
</body>
</html>
