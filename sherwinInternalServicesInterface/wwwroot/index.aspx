<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sherwin-Williams Jamaica POS Portal</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="app-shell">
        <header class="site-header">
            <a class="brand" href="/" aria-label="Sherwin-Williams Jamaica POS Portal">
                <img id="brandLogo" src="/Sherwin-Williams-logo.png" alt="Sherwin-Williams">
                <span>
                    <strong>Jamaica POS</strong>
                    <small>Internal Services</small>
                </span>
            </a>

            <div class="header-actions">
                <span class="status-pill">
                    <span aria-hidden="true"></span>
                    Forms Online
                </span>
                <button id="themeToggle" class="icon-btn" type="button" aria-label="Toggle color theme" title="Toggle color theme">
                    <svg class="theme-icon theme-icon-sun" aria-hidden="true" viewBox="0 0 24 24">
                        <path d="M12 4V2m0 20v-2m8-8h2M2 12h2m14.95-6.95 1.41-1.41M3.64 20.36l1.41-1.41m0-13.9L3.64 3.64m16.72 16.72-1.41-1.41M12 17a5 5 0 1 0 0-10 5 5 0 0 0 0 10Z" />
                    </svg>
                    <svg class="theme-icon theme-icon-moon" aria-hidden="true" viewBox="0 0 24 24">
                        <path d="M21 14.5A8.5 8.5 0 0 1 9.5 3 7 7 0 1 0 21 14.5Z" />
                    </svg>
                </button>
            </div>
        </header>

        <main class="workspace">
            <section class="intro-panel" aria-labelledby="portalTitle">
                <div>
                    <p class="eyebrow">MCBA-POS service desk</p>
                    <h1 id="portalTitle">Employee POS access, handled in one place.</h1>
                </div>
                <p class="intro-copy">Submit additions, transfers, removals, and elevation requests through the current internal forms.</p>
            </section>

            <section class="service-grid" aria-label="Service requests">
                <a class="service-card featured" href="https://forms.office.com/r/AhGTH49s9N" target="_blank" rel="noopener noreferrer">
                    <span class="card-icon" aria-hidden="true">
                        <svg viewBox="0 0 24 24"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2M9 11a4 4 0 1 0 0-8 4 4 0 0 0 0 8Zm13 10v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75" /></svg>
                    </span>
                    <span>
                        <strong>Employee POS Addition</strong>
                        <small>Create a new POS profile</small>
                    </span>
                </a>

                <a class="service-card" href="https://forms.office.com/r/pKucamEjyR" target="_blank" rel="noopener noreferrer">
                    <span class="card-icon" aria-hidden="true">
                        <svg viewBox="0 0 24 24"><path d="M17 1l4 4-4 4M3 11V9a4 4 0 0 1 4-4h14M7 23l-4-4 4-4m14-2v2a4 4 0 0 1-4 4H3" /></svg>
                    </span>
                    <span>
                        <strong>Billing Code Transfer</strong>
                        <small>Move access between stores</small>
                    </span>
                </a>

                <a class="service-card" href="https://forms.office.com/r/FEAU8SiimY" target="_blank" rel="noopener noreferrer">
                    <span class="card-icon" aria-hidden="true">
                        <svg viewBox="0 0 24 24"><path d="M3 6h18m-2 0-1 14a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2L5 6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2m-6 5v6m4-6v6" /></svg>
                    </span>
                    <span>
                        <strong>Employee POS Removal</strong>
                        <small>Deactivate a POS profile</small>
                    </span>
                </a>

                <a class="service-card" href="https://forms.cloud.microsoft/r/yi1g7x7QQc" target="_blank" rel="noopener noreferrer">
                    <span class="card-icon" aria-hidden="true">
                        <svg viewBox="0 0 24 24"><path d="M12 3l7 4v5c0 4.5-2.9 8.5-7 9-4.1-.5-7-4.5-7-9V7l7-4Zm0 5v8m-4-4h8" /></svg>
                    </span>
                    <span>
                        <strong>Elevation Request</strong>
                        <small>Request elevated permissions</small>
                    </span>
                </a>
            </section>

            <section class="insight-strip" aria-label="Portal information">
                <div>
                    <span>Region</span>
                    <strong>Jamaica</strong>
                </div>
                <div>
                    <span>Team</span>
                    <strong>Sherwin IT JAM</strong>
                </div>
                <div>
                    <span>Channel</span>
                    <strong>Microsoft Forms</strong>
                </div>
            </section>
        </main>

        <footer class="site-footer">
            <span>© 2026 Sherwin-Williams Jamaica MCBA-POS</span>
        </footer>
    </div>

    <script src="script.js"></script>
</body>
</html>
