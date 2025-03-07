document.addEventListener('DOMContentLoaded', () => {
    console.log('Flask application loaded!');
    
    // Add a simple animation to the welcome message
    const header = document.querySelector('.card-header h1');
    if (header) {
        header.style.opacity = '0';
        setTimeout(() => {
            header.style.transition = 'opacity 1s ease-in-out';
            header.style.opacity = '1';
        }, 300);
    }
}); 