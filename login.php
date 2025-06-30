<?php
// Iniciar la sesión
session_start();

// Configuración de la base de datos
$servername = "localhost"; // Servidor donde está la base de datos
$username = "root";        // Usuario de la base de datos
$password = "mexicosuper"; // Contraseña de la base de datos
$dbname = "reccreative";   // Nombre de la base de datos

// Crear conexión con la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Verificar si el formulario ha sido enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $correo = $_POST['usuario'];  // Usuario ingresado
    $clave = $_POST['contra'];    // Contraseña ingresada

    // Prevenir inyección SQL escapando caracteres especiales
    $correo = $conn->real_escape_string($correo);
    $clave = $conn->real_escape_string($clave);

    // Consultar en la base de datos el usuario y la contraseña
    $sql = "SELECT * FROM clientes WHERE correo = '$correo' AND clave = '$clave'";
    $result = $conn->query($sql);

    // Verificar si la consulta devuelve algún resultado (usuario válido)
    if ($result->num_rows > 0) {
        // El inicio de sesión es exitoso
        $row = $result->fetch_assoc(); // Obtener la fila con los datos
        $_SESSION['nombre'] = $row['nombre'];  // Guardar el nombre del usuario en la sesión
        $_SESSION['usuario'] = $correo;  // Guardar el usuario en la sesión
        $_SESSION['calendario'] = $row['calendario'];
        $_SESSION['estudio_de_mercado'] = $row['estudio_de_mercado'];
        $_SESSION['reels'] = $row['reels'];
        $_SESSION['reportes'] = $row['reportes'];
        header("Location: menu.php"); // Redirigir a otra página
        exit();
    } else {
        // Si las credenciales no son válidas
        echo "Correo o contraseña incorrectos";
    }
}

// Cerrar la conexión
$conn->close();
?>