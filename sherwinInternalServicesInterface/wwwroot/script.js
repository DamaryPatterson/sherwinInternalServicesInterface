document.addEventListener("DOMContentLoaded", () => {
    const themeToggle = document.getElementById("themeToggle");
    const storedTheme = localStorage.getItem("theme") || "dark";

    document.documentElement.setAttribute("data-theme", storedTheme);

    themeToggle?.addEventListener("click", () => {
        const currentTheme = document.documentElement.getAttribute("data-theme");
        const nextTheme = currentTheme === "dark" ? "light" : "dark";

        document.documentElement.setAttribute("data-theme", nextTheme);
        localStorage.setItem("theme", nextTheme);
    });

    const brandLogo = document.getElementById("brandLogo");
    brandLogo?.addEventListener("error", () => {
        brandLogo.style.display = "none";
    });

    document.querySelectorAll(".service-card").forEach((card) => {
        card.addEventListener("click", (event) => {
            const href = card.getAttribute("href") || "";

            if (href.includes("your-deletion-form-link")) {
                event.preventDefault();
                alert("This request form link has not been configured yet.");
            }
        });
    });
});
