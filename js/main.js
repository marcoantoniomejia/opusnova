/**
 * @file Módulo principal de JavaScript para la landing page de Opus Nova Soluciones.
 * @author Gemini Code Assist
 */

/**
 * Función de inicialización que se ejecuta cuando el DOM está completamente cargado.
 */
function init() {
    console.log("Opus Nova Soluciones - Sitio listo.");
    
    // Lógica para el menú de navegación responsivo
    const navToggle = document.querySelector('.header__toggle');
    const navMenu = document.querySelector('.header__nav');

    if (navToggle && navMenu) {
        navToggle.addEventListener('click', () => {
            // Alterna la clase 'is-active' para mostrar/ocultar el menú
            navMenu.classList.toggle('is-active');

            // Opcional: Cambiar el aria-label para accesibilidad
            if (navMenu.classList.contains('is-active')) {
                navToggle.setAttribute('aria-label', 'Cerrar menú de navegación');
            } else {
                navToggle.setAttribute('aria-label', 'Abrir menú de navegación');
            }
        });
    }
}

document.addEventListener('DOMContentLoaded', init);