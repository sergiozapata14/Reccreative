let indexActual = 0; // Índice de la imagen actual (slide actual)
const slides = document.querySelectorAll(".slide"); // Obtiene todos los slides
const dots = document.querySelectorAll(".dot"); // Obtiene todos los botones (dots)
let interval; // Variable para almacenar el intervalo de la animación automática

/* Función para mover el carrusel hacia adelante o atrás */
function moverSlide(n) {
    indexActual += n; // Cambia el índice actual según la dirección (n puede ser 1 o -1)
    if (indexActual >= slides.length) indexActual = 0; // Si pasa el último slide, vuelve al primero
    if (indexActual < 0) indexActual = slides.length - 1; // Si pasa el primero, va al último
    mostrarSlide(indexActual); // Muestra el slide correspondiente
    reiniciarAutoSlide(); // Reinicia la animación automática
}

/* Función para ir a un slide específico usando los dots */
function irASlide(n) {
    indexActual = n - 1; // Ajusta el índice actual al slide seleccionado
    mostrarSlide(indexActual); // Muestra el slide correspondiente
    reiniciarAutoSlide(); // Reinicia la animación automática
}

/* Función que muestra el slide basado en el índice actual */
function mostrarSlide(index) {
    // Oculta todos los slides
    slides.forEach((slide, i) => {
        slide.style.display = i === index ? "block" : "none"; // Solo muestra el slide actual
    });

    // Actualiza el estado de los dots (botones de navegación)
    dots.forEach((dot, i) => {
        dot.classList.toggle("active", i === index); // Marca el dot activo
    });
}

/* Función para avanzar automáticamente al siguiente slide */
function autoSlide() {
    indexActual++; // Avanza al siguiente slide
    if (indexActual >= slides.length) indexActual = 0; // Si pasa el último, vuelve al primero
    mostrarSlide(indexActual); // Muestra el siguiente slide
}

/* Inicia la animación automática cada 3 segundos */
function iniciarAutoSlide() {
    interval = setInterval(autoSlide, 3000); // Cambia de slide cada 3 segundos
}

/* Reinicia el intervalo de la animación automática */
function reiniciarAutoSlide() {
    clearInterval(interval); // Detiene la animación actual
    iniciarAutoSlide(); // La reinicia
}

/* Inicializa el carrusel mostrando el primer slide */
mostrarSlide(indexActual);

/* Inicia la animación automática */
iniciarAutoSlide();