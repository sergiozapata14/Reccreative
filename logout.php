<?php
// logout.php

// Iniciar la sesión
session_start();

// Destruir todas las variables de sesión
session_unset();

// Destruir la sesión
session_destroy();

// Redirigir al usuario de vuelta a la página de inicio de sesión (o a donde quieras)
header("Location: index.html");
exit();
?>