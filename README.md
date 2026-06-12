# Sherwin-Williams Jamaica POS Services Portal

Internal web portal for Sherwin-Williams Jamaica MCBA-POS service requests.

The portal gives employees and authorized internal users one place to start common POS access workflows:

- Employee POS Addition
- Employee Billing Code / Store Transfer
- Employee POS Elevation Request
- Employee POS Removal, pending final form configuration

The app opens the appropriate Microsoft Forms request in a new browser tab. This avoids Microsoft Forms iframe restrictions and lets organization sign-in work normally.

## Run Locally

From PowerShell:

```powershell
cd C:\Users\damar\source\repos\DamaryPatterson\sherwinInternalServicesInterface\sherwinInternalServicesInterface
dotnet run
```

Open the URL printed in the terminal.

To run on a specific local URL:

```powershell
dotnet run --urls http://localhost:5127
```

Then open:

```text
http://localhost:5127
```

## Documentation

Documentation is split into two files:

- [docs/USER_MANUAL.md](docs/USER_MANUAL.md): complete user guide, request field reference, admin guide, troubleshooting, and operating procedures.
- [docs/TECHNICAL_OVERVIEW.md](docs/TECHNICAL_OVERVIEW.md): implementation notes, file map, testing checklist, and maintainer guidance.

## Key Files

- `sherwinInternalServicesInterface/wwwroot/index.html`: portal structure and service links
- `sherwinInternalServicesInterface/wwwroot/styles.css`: visual design
- `sherwinInternalServicesInterface/wwwroot/script.js`: theme and link behavior
- `sherwinInternalServicesInterface/Program.cs`: static file hosting

## Notes

The POS Removal card currently uses a placeholder link. Replace it in `wwwroot/index.html` when the official Microsoft Form is available.
