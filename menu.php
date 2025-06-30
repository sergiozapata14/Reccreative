<?php
// Iniciar la sesión
session_start();

// Verificar si el nombre del usuario está en la sesión
if (isset($_SESSION['nombre'])) {
    $nombre = $_SESSION['nombre'];
} else {
    // Si no hay un nombre en la sesión, redirigir a la página de inicio de sesión
    header("Location: index.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú</title>
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" /> <!-- Carga de íconos de Font Awesome -->
</head>
<body>
    <div class="logo_fondo">
        <img src="Logos/A.png" alt="logo_menu">
    </div>
    <h1>
        Bienvenido <?php echo htmlspecialchars($nombre); ?> <!-- Mostrando el nombre del usuario -->
    </h1>
    <!-- Contenedor principal del menú -->
    <div class="menu">
        <!-- Opción Calendario -->
        <div class="menu-item">
            <a href="<?php echo $_SESSION['calendario']; ?>" target="_blank"> <!-- Redirige usando el enlace almacenado en la variable -->
                <i class="fas fa-calendar-alt"></i> <!-- Icono de calendario -->
                <span>Calendario</span> <!-- Texto debajo del icono -->
            </a>
        </div>
        <!-- Opción Estudio de Mercado -->
        <div class="menu-item">
            <a href="<?php echo $_SESSION['estudio_de_mercado']; ?>" target="_blank"> <!-- Redirige usando el enlace almacenado en la variable -->
                <i class="fas fa-chart-line"></i> <!-- Icono de estudio de mercado -->
                <span>Estudio de Mercado</span>
            </a>
        </div>
        <!-- Opción Reels -->
        <div class="menu-item">
            <a href="<?php echo $_SESSION['reels']; ?>" target="_blank"> <!-- Redirige usando el enlace almacenado en la variable -->
                <i class="fas fa-video"></i> <!-- Icono de reels -->
                <span>Reels</span>
            </a>
        </div>
        <!-- Opción Reportes -->
        <div class="menu-item">
            <a href="<?php echo $_SESSION['reportes']; ?>" target="_blank"> <!-- Redirige usando el enlace almacenado en la variable -->
                <i class="fas fa-file-alt"></i> <!-- Icono de reportes -->
                <span>Reportes</span>
            </a>
        </div>
        <!-- Opción Agendar Reunión -->
        <div class="menu-item">
            <a href="http://wa.me/522212295097" target="_blank"> <!-- Redirige usando el enlace almacenado en la variable -->
                <i class="fas fa-calendar-check"></i> <!-- Icono de agendar reunión -->
                <span>Agendar Reunión</span>
            </a>
        </div>
        <!-- Opción Quejas y Sugerencias -->
        <div class="menu-item">
            <a href="http://wa.me/522212295097" target="_blank"> <!-- Redirige usando el enlace almacenado en la variable -->
                <i class="fas fa-comments"></i> <!-- Icono de agendar reunión -->
                <span>Quejas y Sugerencias</span>
            </a>
        </div>
        <!-- Opción Quejas y Sugerencias con submenú -->
        <!-- <div class="menu-item dropdown">
            <i class="fas fa-comments"></i> --> <!-- Icono de quejas y sugerencias -->
            <!-- <span>Quejas y Sugerencias</span> -->
            <!-- Submenú que se despliega al hacer clic -->
            <!-- <div class="dropdown-content">
                <a href="#">Queja 1</a>
                <a href="#">Queja 2</a>
                <a href="#">Sugerencia 1</a>
                <a href="#">Sugerencia 2</a>
            </div>
        </div> -->
    </div>
    <script src="menu.js"></script>
    <section id="socialmedia">
        <!-- Botón de WhatsApp -->
        <a href="http://wa.me/522212295097" class="whatsapp-btn" target="_blank">
            <i class="fab fa-whatsapp"></i> <!-- Icono de WhatsApp -->
        </a>
    </section>
    <!-- Botón de cerrar sesión -->
    <form action="logout.php" method="post"> <!-- Formulario para enviar la petición de cierre de sesión -->
        <button type="submit" class="logout-btn">Cerrar Sesión</button> <!-- Botón para cerrar sesión -->
    </form>
</body>
</html>