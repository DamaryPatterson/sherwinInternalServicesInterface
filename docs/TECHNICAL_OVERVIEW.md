# Technical Overview

## Application Purpose

The Sherwin-Williams Jamaica POS Services Portal is a lightweight internal web portal that centralizes links to Microsoft Forms used for POS access requests.

The portal is not a workflow engine and does not store form submissions. It acts as a branded, controlled launch page for approved request forms.

## Technology Stack

| Layer | Technology |
| --- | --- |
| Host | ASP.NET Core |
| Target framework | .NET 10 |
| UI | Static HTML, CSS, JavaScript |
| Request forms | Microsoft Forms |
| Styling | Custom CSS |
| Client storage | Browser local storage for theme preference |

## Runtime Behavior

The ASP.NET Core app uses:

```csharp
app.UseDefaultFiles();
app.UseStaticFiles();
```

This means the root URL serves `wwwroot/index.html` automatically.

## Main Files

| Path | Purpose |
| --- | --- |
| `sherwinInternalServicesInterface/Program.cs` | Configures app startup and static file serving. |
| `sherwinInternalServicesInterface/wwwroot/index.html` | Main portal markup and service card links. |
| `sherwinInternalServicesInterface/wwwroot/styles.css` | Design system, layout, theme, and responsive styling. |
| `sherwinInternalServicesInterface/wwwroot/script.js` | Theme persistence, logo fallback, and placeholder link guard. |
| `sherwinInternalServicesInterface/wwwroot/Sherwin-Williams-logo.png` | Brand logo. |
| `docs/USER_MANUAL.md` | Full user and administrator manual. |
| `docs/TECHNICAL_OVERVIEW.md` | Technical implementation notes. |

## Form Link Model

Each request card is an anchor:

```html
<a class="service-card" href="https://forms.cloud.microsoft/r/..." target="_blank" rel="noopener noreferrer">
```

This design intentionally opens Microsoft Forms outside the portal page because Microsoft Forms may not render inside an iframe.

## Configuring Links

To update a request URL:

1. Open `wwwroot/index.html`.
2. Find the matching service card.
3. Replace the `href` value.
4. Save.
5. Run and test the app.

Do not use iframe embedding for Microsoft Forms unless the form owner confirms embedding is supported and authentication works in the target browser environment.

## Placeholder Link Guard

`script.js` checks for the placeholder URL:

```text
your-deletion-form-link
```

If a user clicks a card with that placeholder, navigation is prevented and an alert explains that the form link has not been configured.

This prevents users from landing on a broken or misleading URL.

## Theme Behavior

The theme toggle stores a value in local storage under:

```text
theme
```

Accepted values:

- `dark`
- `light`

The value is applied as a `data-theme` attribute on the `html` element.

## Local Development

Run:

```powershell
cd C:\Users\damar\source\repos\DamaryPatterson\sherwinInternalServicesInterface\sherwinInternalServicesInterface
dotnet run
```

Run on a fixed URL:

```powershell
dotnet run --urls http://localhost:5127
```

## Common Development Issues

### Executable Locked

Cause:

An existing running instance is locking the compiled executable.

Fix:

```powershell
Stop-Process -Name sherwinInternalServicesInterface -Force
dotnet run
```

### Localhost Shows an Old Page

Cause:

Browser cache or another local server.

Fix:

- Confirm the terminal URL.
- Hard refresh the browser.
- Stop duplicate local app processes.

### Form Requires Login

This is expected for organization-protected Microsoft Forms.

## Testing Checklist

Before marking a change complete:

- App starts with `dotnet run`.
- Root URL loads the portal.
- Logo displays.
- Theme toggle works.
- Active service cards open Microsoft Forms in a new tab.
- Placeholder cards show the configured warning.
- Layout works on desktop width.
- Layout works on mobile width.
- README and manual reflect changed links or behavior.

## Release Checklist

Before release:

- Confirm official Microsoft Forms URLs.
- Remove or intentionally keep placeholder warning behavior.
- Review documentation.
- Confirm no local-only URLs are committed as production links.
- Confirm all request names match business terminology.
- Confirm form owners are aware of the portal links.

## Operational Ownership

Recommended ownership split:

| Responsibility | Owner |
| --- | --- |
| Form content and response routing | Microsoft Forms owner / POS team |
| Portal link accuracy | Application maintainer |
| App hosting and deployment | IT / app administrator |
| User documentation | App maintainer and business owner |
| Request approval rules | Business owner / POS governance |
