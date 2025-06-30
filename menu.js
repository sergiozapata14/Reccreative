// JavaScript para manejar el despliegue del submenú
document.querySelector('.dropdown').addEventListener('click', function()
{
    const content = this.querySelector('.dropdown-content');
    content.classList.toggle('show'); // Alterna la clase 'show' para desplegar u ocultar el submenú
});