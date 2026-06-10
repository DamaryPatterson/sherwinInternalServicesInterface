document.addEventListener("DOMContentLoaded", () => {
    // --- 1. THEME MANAGEMENT ENGINE ---
    const themeToggle = document.getElementById('themeToggle');
    const modeIcon = themeToggle ? themeToggle.querySelector('.mode-icon') : null;

    // Pull previous settings from local browser cache if available
    const storedTheme = localStorage.getItem('theme') || 'dark';
    document.documentElement.setAttribute('data-theme', storedTheme);
    updateToggleIcon(storedTheme);

    if (themeToggle) {
        themeToggle.addEventListener('click', () => {
            const currentTheme = document.documentElement.getAttribute('data-theme');
            const newTheme = currentTheme === 'dark' ? 'light' : 'dark';

            document.documentElement.setAttribute('data-theme', newTheme);
            localStorage.setItem('theme', newTheme);
            updateToggleIcon(newTheme);
        });
    }

    function updateToggleIcon(theme) {
        if (modeIcon) {
            modeIcon.textContent = theme === 'dark' ? '☀️' : '🌙';
        }
    }

    // --- 2. LOGO FALLBACK ERROR HANDLER ---
    const brandLogo = document.getElementById('brandLogo');
    if (brandLogo) {
        brandLogo.addEventListener('error', (event) => {
            const targetElement = event.target;
            if (targetElement) {
                targetElement.style.display = 'none';
            }
        });
    }
});

// --- 3. MODAL UTILITY ENGINE ---
function openModal(url) {
    const formFrame = document.getElementById('formFrame');
    const modalContainer = document.getElementById('modal');

    if (formFrame && modalContainer) {
        formFrame.src = url;
        modalContainer.style.display = 'flex';
    }
}

function closeModal() {
    const formFrame = document.getElementById('formFrame');
    const modalContainer = document.getElementById('modal');

    if (formFrame && modalContainer) {
        modalContainer.style.display = 'none';
        formFrame.src = '';
    }
}
