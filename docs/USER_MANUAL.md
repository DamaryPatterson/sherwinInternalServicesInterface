# Sherwin-Williams Jamaica POS Services Portal Documentation

## Document Control

| Item | Detail |
| --- | --- |
| Application | Sherwin-Williams Jamaica POS Services Portal |
| Business area | MCBA-POS / Internal Services |
| Primary users | Authorized Sherwin-Williams Jamaica employees and internal support staff |
| Request channel | Microsoft Forms |
| App type | ASP.NET Core static web portal |
| Source forms reviewed | POS Addition, Store Transfer, POS Elevation PDFs |
| Documentation date | June 2026 |

## Table of Contents

1. Purpose and Scope
2. Application Summary
3. Audience and Responsibilities
4. Supported Request Types
5. User Workflow
6. Request Field Reference
7. Data Entry Standards
8. Application Screens and Behavior
9. Running the App Locally
10. Administrator Guide
11. Maintenance Runbook
12. Troubleshooting
13. Security, Privacy, and Access Notes
14. Known Gaps and Future Enhancements
15. Glossary

## 1. Purpose and Scope

The Sherwin-Williams Jamaica POS Services Portal provides a central launch point for employee POS access requests. Instead of asking users to remember separate Microsoft Forms links, the portal presents each request type as a clear service card.

The portal is designed to support internal access workflows related to:

- Adding an employee to the POS system.
- Transferring an employee between store locations.
- Requesting temporary elevated POS access.
- Preparing for POS removal requests once the final form link is available.

This document explains how users operate the portal, how administrators maintain it, how the request forms are structured, and how to troubleshoot common issues.

This documentation does not replace internal HR, IT security, or POS governance policy. It explains the application and request workflow only.

## 2. Application Summary

The portal is a lightweight ASP.NET Core web application that serves a static user interface from the `wwwroot` folder. The user interface is built with HTML, CSS, and JavaScript.

The application does not collect request data directly. Instead, each service card opens a Microsoft Forms request form in a new browser tab. Submitted form data is handled by Microsoft Forms and sent to the form owner.

### Key Characteristics

| Area | Description |
| --- | --- |
| User interface | Modern card-based service portal |
| Request intake | Microsoft Forms |
| Authentication | Managed by Microsoft Forms / Microsoft sign-in |
| Data storage | Not stored by the portal |
| Theme support | Dark and light mode toggle |
| Deployment model | ASP.NET Core static file hosting |
| Primary entry file | `sherwinInternalServicesInterface/wwwroot/index.html` |

### Why Forms Open in a New Tab

Microsoft Forms may block embedded display inside an iframe. Earlier modal embedding produced a blank document icon in the browser. To avoid that issue, the portal opens forms directly in a new browser tab. This lets Microsoft authentication, session cookies, and organization sign-in work normally.

## 3. Audience and Responsibilities

### End Users

End users submit POS service requests through the portal.

Responsibilities:

- Select the correct request type.
- Enter accurate employee information.
- Confirm store, branch, billing, and date details before submitting.
- Provide comments when additional context is needed.
- Sign in to Microsoft Forms if prompted.

### Store Managers or Supervisors

Managers or supervisors may submit requests for staff in their store or validate submitted details.

Responsibilities:

- Confirm employee identity and store assignment.
- Confirm whether supervisory or billing permissions are appropriate.
- Provide effective dates for transfers or temporary access.

### POS / Internal Services Team

The POS or internal services team receives and processes the Microsoft Forms submissions.

Responsibilities:

- Review submitted request details.
- Validate required information.
- Process system updates according to internal policy.
- Contact the submitter if information is incomplete.

### Application Maintainer

The maintainer updates the portal code and request links.

Responsibilities:

- Keep Microsoft Forms URLs current.
- Replace placeholder links.
- Update documentation when forms or fields change.
- Test the portal after UI or link changes.
- Deploy updates to the hosting environment.

## 4. Supported Request Types

### Employee POS Addition

Use this workflow to request POS access for a new employee.

Typical scenarios:

- New employee joins a branch.
- Existing employee needs POS access for the first time.
- Employee information needs to be entered into the POS access process.

The form asks for initials, full name, branch, supervisor status, billing status, and comments.

### Employee Billing Code / Store Transfer

Use this workflow when an employee transfers from one store location to another and their POS access needs to reflect the change.

Typical scenarios:

- Employee moves to another store.
- Billing ID remains active but store assignment changes.
- Supervisor status must be confirmed for the new location.

The form asks for billing ID, employee name, current store, new store, supervisor status, effective date, optional expiration date, and comments.

### Employee POS Elevation Request

Use this workflow when an employee needs temporary elevated POS permissions.

Typical scenarios:

- Employee temporarily needs billing supervisory / credit note permissions.
- Employee needs inventory access.
- Employee needs cash receipts permissions.
- Temporary support coverage is needed for a branch.

The form asks for billing ID, full name, current store, elevation type, start date, optional end date, and comments.

### Employee POS Removal

The portal includes a POS Removal card, but the official Microsoft Forms URL has not yet been configured in the application.

Current behavior:

- The card appears on the portal.
- Selecting the card displays a message that the request form link has not been configured.

Maintainer action required:

- Obtain the official POS Removal Microsoft Forms URL.
- Replace the placeholder link in `wwwroot/index.html`.
- Update this document with the final removal form fields.

## 5. User Workflow

### Standard Request Flow

1. Open the Sherwin-Williams Jamaica POS Services Portal.
2. Review the available request cards.
3. Select the card that matches the work needed.
4. A Microsoft Form opens in a new tab.
5. Sign in with an organization account if prompted.
6. Complete all required fields.
7. Review the information for accuracy.
8. Submit the form.
9. Close the Microsoft Forms tab or return to the portal for another request.

### Choosing the Correct Request Type

| Need | Use This Request |
| --- | --- |
| Add a new employee to POS | Employee POS Addition |
| Move an employee from one store to another | Employee Billing Code / Store Transfer |
| Temporarily grant higher POS access | Employee POS Elevation Request |
| Remove POS access | Employee POS Removal, once configured |

### Before Submitting

Users should confirm:

- Employee full name is accurate.
- Billing ID is correct when required.
- Current and new store details are correct.
- Branch or territory selection matches the employee assignment.
- Dates are correct and align with the requested access period.
- Comments explain unusual or temporary situations.

## 6. Request Field Reference

The following field references are based on the provided PDF copies of the Microsoft Forms as of June 10, 2026.

### 6.1 Employee POS Addition Form

Form title:

`Sherwin Williams Employee POS Addition Form`

Form purpose:

`Use this form to submit required details for adding a new employee to the POS system. Please ensure all information matches official HR records before submitting.`

| Field | Required | Expected Input | Notes |
| --- | --- | --- | --- |
| Enter Initials | Yes | Text, maximum 3 characters | Should match employee initials. |
| Full Name | Yes | Employee full name | Use official HR spelling. |
| Territory / Branch Location | Yes | Branch 01 through Branch 24 | Select the employee's branch. |
| Is this person a supervisor? | Yes | Yes / No | Indicates supervisor permissions or role context. |
| Is billing allowed? | Yes | Yes / No | Indicates whether billing access is permitted. |
| Comments | No | Free text | Add context, approvals, or special notes. |

Branch options shown in the PDF:

- Branch 01
- Branch 02
- Branch 03
- Branch 04
- Branch 05
- Branch 06
- Branch 07
- Branch 08
- Branch 09
- Branch 10
- Branch 11
- Branch 12
- Branch 13
- Branch 14
- Branch 15
- Branch 16
- Branch 17
- Branch 18
- Branch 19
- Branch 20
- Branch 21
- Branch 22
- Branch 23
- Branch 24

Recommended comments:

- Employee start date if relevant.
- Manager or approver context if needed.
- Any special setup instructions.

### 6.2 Employee Store Transfer Request

Form title:

`Employee Store Transfer Request`

Form purpose:

`Submit requests for employee store transfers requiring system access updates.`

| Field | Required | Expected Input | Notes |
| --- | --- | --- | --- |
| Employee Billing ID | Yes | Billing ID | Confirm before submitting. |
| Employee Name | Yes | Employee full name | Use official HR spelling. |
| Current Store Location | Yes | Store 01 through Store 24 | Current assigned store. |
| New Store Location | Yes | Store 01 through Store 24 | Destination store. |
| Is this employee a supervisor? | Yes | Yes / No | Determines role context during transfer. |
| Effective Date | Yes | Date | Date the transfer should begin. |
| Expiration Date | No | Date | Use only if the transfer is temporary. |
| Comments | No | Free text | Include notes that help processing. |

Store options shown in the PDF:

- 01
- 02
- 03
- 04
- 05
- 06
- 07
- 08
- 09
- 10
- 11
- 12
- 13
- 14
- 15
- 16
- 17
- 18
- 19
- 20
- 21
- 22
- 23
- 24

Recommended comments:

- Whether this is a permanent or temporary transfer.
- Any manager approval reference.
- Any access timing requirements.

### 6.3 Employee POS Elevation Request Form

Form title:

`Employee POS Elevation Request Form`

| Field | Required | Expected Input | Notes |
| --- | --- | --- | --- |
| Billing ID | Yes | Billing ID | Employee billing identifier. |
| Full Name | Yes | Employee full name | Use official HR spelling. |
| Current Store | Yes | Store 01 through Store 24 | Employee's current store. |
| Elevation Type | Yes | One of the listed permission types | Select the access category requested. |
| Start Date | Yes | Date | Date elevated access should begin. |
| End Date | No | Date | Recommended for temporary access even if optional. |
| Comments | Yes | Free text | Explain why elevated access is needed. |

Store options shown in the PDF:

- 01
- 02
- 03
- 04
- 05
- 06
- 07
- 08
- 09
- 10
- 11
- 12
- 13
- 14
- 15
- 16
- 17
- 18
- 19
- 20
- 21
- 22
- 23
- 24

Elevation type options:

- Billing Supervisory / Credit note
- Inventory
- Cash Receipts

Recommended comments:

- Business reason for elevation.
- Whether the request is temporary.
- Manager or approver context.
- Any urgency or date dependency.

### 6.4 Employee POS Removal Form

The POS Removal form details are not available in the current documentation package.

Suggested future field reference, pending official form review:

| Field | Required | Expected Input | Notes |
| --- | --- | --- | --- |
| Employee Billing ID | To be confirmed | Billing ID | Should identify the POS user. |
| Employee Name | To be confirmed | Employee full name | Use official HR spelling. |
| Store Location | To be confirmed | Store or branch | Location associated with removal. |
| Effective Date | To be confirmed | Date | Date access should be removed. |
| Reason for Removal | To be confirmed | Free text or selected reason | Example: termination, transfer, no longer needs access. |
| Comments | To be confirmed | Free text | Additional processing notes. |

This section should be updated when the official POS Removal PDF or Microsoft Form is available.

## 7. Data Entry Standards

### Names

Use the employee's official full name as recorded in HR systems. Avoid nicknames, shortened names, or informal spelling.

Good:

- `Damar Patterson`

Avoid:

- `D. Patterson`
- `Damar P.`
- `D Patterson`

### Initials

For the POS Addition form, initials must be no more than three characters. Enter only the initials requested by the form.

### Billing ID

Billing ID fields should be checked carefully. A wrong billing ID can result in access being applied to the wrong employee or a request being delayed.

### Store and Branch Codes

The forms use numeric store or branch choices from 01 through 24, or Branch 01 through Branch 24.

Before submitting:

- Confirm the current store.
- Confirm the destination store for transfers.
- Confirm that the selected branch matches the employee's assignment.

### Dates

Use the correct effective date for changes.

For temporary access:

- Enter a start date.
- Enter an end date where available.
- Explain timing in comments if the end date is not available or not required by the form.

### Comments

Comments should be concise but useful. Include information that helps the POS team understand or prioritize the request.

Useful comments:

- `Employee is covering Store 08 from June 17 to June 21.`
- `Manager approved temporary inventory access for stock count.`
- `Transfer is permanent effective June 24.`

Avoid comments that are vague:

- `Please do ASAP.`
- `Need access.`
- `Urgent.`

## 8. Application Screens and Behavior

### Header

The header identifies the portal as `Jamaica POS Internal Services`. It includes the Sherwin-Williams logo and a theme toggle.

### Theme Toggle

The theme toggle switches between dark and light mode. The selected theme is stored in the browser's local storage and remains active when the user returns.

### Service Cards

Each service card represents one request workflow. Cards are designed to be scannable and include:

- Request name.
- Short description.
- Icon.
- Visual hover/focus state.

Cards open links in a new tab using `target="_blank"` and `rel="noopener noreferrer"`.

### Placeholder Link Handling

If a service card still uses the placeholder URL `https://your-deletion-form-link`, JavaScript prevents navigation and shows:

`This request form link has not been configured yet.`

### Portal Information Strip

The information strip shows:

- Region: Jamaica
- Team: MCBA-POS
- Channel: Microsoft Forms

### Footer

The footer identifies the portal ownership:

`© 2026 Sherwin-Williams Jamaica MCBA-POS`

## 9. Running the App Locally

### Prerequisites

- Windows workstation
- .NET 10 SDK installed
- Access to the project folder

### Project Folder

```text
C:\Users\damar\source\repos\DamaryPatterson\sherwinInternalServicesInterface\sherwinInternalServicesInterface
```

### Start the App

```powershell
cd C:\Users\damar\source\repos\DamaryPatterson\sherwinInternalServicesInterface\sherwinInternalServicesInterface
dotnet run
```

The terminal prints the URL where the app is running. Open that URL in a browser.

### Run on a Specific URL

```powershell
dotnet run --urls http://localhost:5127
```

Then open:

```text
http://localhost:5127
```

### Stop the App

In the terminal running the app, press:

```text
Ctrl+C
```

### If the App Is Locked

If the build fails because the executable is being used by another process, stop the running instance:

```powershell
Stop-Process -Name sherwinInternalServicesInterface -Force
```

Then run:

```powershell
dotnet run
```

## 10. Administrator Guide

### Application File Structure

Important files:

| File | Purpose |
| --- | --- |
| `Program.cs` | Configures the ASP.NET Core static file host. |
| `wwwroot/index.html` | Main portal page and service card links. |
| `wwwroot/styles.css` | Visual styling, responsive layout, and themes. |
| `wwwroot/script.js` | Theme toggle, logo fallback, and placeholder link behavior. |
| `wwwroot/Sherwin-Williams-logo.png` | Header logo asset. |
| `README.md` | Project overview and quick-start instructions. |
| `docs/USER_MANUAL.md` | Full user and admin documentation. |

### Updating a Form Link

1. Open:

```text
sherwinInternalServicesInterface/wwwroot/index.html
```

2. Locate the service card for the request.

Example:

```html
<a class="service-card" href="https://forms.cloud.microsoft/r/..." target="_blank" rel="noopener noreferrer">
```

3. Replace the `href` value with the official Microsoft Forms URL.
4. Save the file.
5. Restart the app or redeploy.
6. Open the portal and click the card to confirm the form opens.

### Adding a New Request Card

1. Copy an existing service card in `index.html`.
2. Update the `href`.
3. Update the card title.
4. Update the short description.
5. Choose or update the SVG icon.
6. Confirm layout still works on desktop and mobile.
7. Update this documentation.

### Removing a Request Card

1. Remove the corresponding `<a class="service-card">...</a>` block from `index.html`.
2. Update documentation and screenshots if maintained.
3. Confirm the service grid still looks balanced.

### Updating the Theme or Visual Design

Most design values are controlled in `styles.css` through CSS variables near the top of the file.

Important variables:

| Variable | Purpose |
| --- | --- |
| `--bg` | Main page background. |
| `--bg-elevated` | Header and elevated surface background. |
| `--surface` | Card and control surface color. |
| `--surface-strong` | Stronger card surface color. |
| `--text` | Primary text color. |
| `--muted` | Secondary text color. |
| `--line` | Borders and dividers. |
| `--brand-blue` | Sherwin-Williams brand blue accent. |
| `--brand-red` | Sherwin-Williams red accent. |
| `--accent` | Interactive accent color. |

### Deployment Checklist

Before deploying:

- Confirm each active card opens the correct Microsoft Form.
- Confirm POS Removal is either configured or clearly unavailable.
- Confirm no placeholder links are active except intentionally unavailable forms.
- Run the app locally.
- Test in a browser.
- Test dark and light theme.
- Test desktop and mobile width if possible.
- Review documentation for changed links or fields.

## 11. Maintenance Runbook

### Monthly Review

Recommended monthly checks:

- Open each service card.
- Confirm Microsoft Forms URLs are still valid.
- Confirm organization sign-in works.
- Confirm branch/store options in documentation still match the forms.
- Confirm form owners are still correct.
- Confirm no old placeholder links remain unintentionally.

### When a Microsoft Form Changes

If the form owner updates fields:

1. Export or capture the updated form details.
2. Update the field reference in this manual.
3. Update service card wording if the request purpose changed.
4. Test the link from the portal.
5. Notify users if the workflow changed materially.

### When the App UI Changes

If the interface changes:

1. Update the relevant screen behavior sections.
2. Update the README if run or deployment instructions change.
3. Check responsive layout.
4. Test all request cards.

### When a Form Link Breaks

1. Confirm whether the form was deleted, moved, renamed, or permission-restricted.
2. Ask the form owner for the current share URL.
3. Replace the link in `index.html`.
4. Test in a signed-in browser session.
5. Commit and deploy the update.

## 12. Troubleshooting

### The Portal Does Not Load

Possible causes:

- The app is not running.
- The wrong URL is open.
- Another process is using the selected port.
- Static files are missing from `wwwroot`.

Resolution:

1. Confirm `dotnet run` is active.
2. Check the terminal for the listening URL.
3. Open the exact URL shown in the terminal.
4. Restart the app if needed.

### Browser Shows `Not Found`

Possible causes:

- The app is not serving from the expected folder.
- A temporary preview server is serving the wrong root.
- The requested URL path does not map to `index.html`.

Resolution:

1. Use the ASP.NET app through `dotnet run`.
2. Open the root URL, for example `http://localhost:5127/`.
3. Confirm `wwwroot/index.html` exists.

### Build Fails Because the Executable Is Locked

Error example:

```text
The process cannot access the file ... sherwinInternalServicesInterface.exe because it is being used by another process.
```

Cause:

An earlier app instance is still running.

Resolution:

```powershell
Stop-Process -Name sherwinInternalServicesInterface -Force
dotnet run
```

### Microsoft Forms Opens a Login Page

Cause:

The form requires Microsoft organization authentication.

Resolution:

Sign in with the appropriate organization account.

### A Form Opens Blank Inside the App

Cause:

Microsoft Forms can block iframe embedding.

Resolution:

The portal should open forms in a new tab. If a modal or iframe appears, update the app to use direct links instead.

### POS Removal Link Is Not Available

Cause:

The official POS Removal Microsoft Forms URL has not been configured.

Resolution:

Ask the form owner or administrator for the official link and update `index.html`.

### Theme Does Not Stay Selected

Possible causes:

- Browser local storage is disabled.
- Browser data was cleared.
- JavaScript did not load.

Resolution:

1. Confirm `script.js` is loading.
2. Check browser settings for local storage.
3. Toggle the theme again.

## 13. Security, Privacy, and Access Notes

### Data Handling

The portal itself does not collect, process, or store form responses. Request data is entered into Microsoft Forms.

### Authentication

Authentication is handled by Microsoft Forms and Microsoft sign-in. The portal does not manage user accounts or passwords.

### Sensitive Information

Users should only enter information requested by the official form. Avoid placing unnecessary sensitive data in comments.

Examples of information to avoid unless required:

- Personal contact details unrelated to the request.
- Payroll details.
- Passwords.
- Private HR notes.

### Link Integrity

Administrators should only use official Microsoft Forms links provided by authorized form owners.

### Least Privilege

For elevation requests, access should be limited to the level and timeframe needed for the business task.

## 14. Known Gaps and Future Enhancements

### Known Gaps

- POS Removal form is not yet configured.
- Documentation does not include POS Removal field details because no source PDF was provided.
- The app does not show request submission status after a Microsoft Form is submitted.
- The app does not validate request data because data entry happens inside Microsoft Forms.

### Recommended Enhancements

- Add the official POS Removal Microsoft Form.
- Add a contact or support section for users who need help.
- Add version information to the portal footer.
- Add a simple admin checklist page or documentation link.
- Add screenshots to this manual after final UI approval.
- Add environment-specific deployment instructions when hosting is finalized.

## 15. Glossary

| Term | Meaning |
| --- | --- |
| Billing ID | Employee identifier used for billing or POS-related access workflows. |
| Branch | A Sherwin-Williams Jamaica branch location. |
| MCBA-POS | Internal team or business area responsible for POS services. |
| Microsoft Forms | Microsoft service used to collect request submissions. |
| POS | Point of Sale. |
| Store Transfer | Movement of an employee from one store location to another. |
| Elevation | Temporary increase in POS permissions. |
| Service Card | Clickable portal card that opens a request form. |

## Appendix A: Quick Reference for Users

1. Open the portal.
2. Click the correct request card.
3. Sign in if prompted.
4. Complete all required fields.
5. Review the details.
6. Submit the form.

Use:

- POS Addition for new POS users.
- Store Transfer for store changes.
- POS Elevation for temporary higher permissions.
- POS Removal once configured.

## Appendix B: Quick Reference for Maintainers

To update links:

1. Edit `wwwroot/index.html`.
2. Replace the service card `href`.
3. Save.
4. Run `dotnet run`.
5. Test the card.
6. Update documentation.

To stop locked app instances:

```powershell
Stop-Process -Name sherwinInternalServicesInterface -Force
```

To run locally:

```powershell
cd C:\Users\damar\source\repos\DamaryPatterson\sherwinInternalServicesInterface\sherwinInternalServicesInterface
dotnet run
```
