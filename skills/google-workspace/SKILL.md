---
name: google-workspace
description: "Run day-to-day business operations on Google Workspace — Gmail, Calendar, Drive, Docs, Sheets, Forms, Slides. Triggers on 'organize my Gmail', 'set up a shared Drive', 'build a client intake form', 'template this proposal in Docs', 'build a tracking sheet', or 'schedule this in Calendar'. Operational/productivity layer for running a marketing or ads business — not a marketing execution skill itself."
---

# Google Workspace

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Run the operational backbone of a small marketing/ads business on Google Workspace — email organization, scheduling, file/client organization in Drive, proposal and reporting documents, intake/tracking spreadsheets and forms — so the actual marketing work (Google Ads, GA4, content) has a functioning business layer underneath it.

## Trigger Conditions
- "Organize my Gmail / set up filters and labels for client email"
- "Set up a shared Drive for a client or team"
- "Build a client intake form"
- "Template this proposal/report in Docs"
- "Build a tracking or reporting spreadsheet"
- "Schedule this in Calendar / set up booking"

## Required Inputs
- Business structure: solo operator, small team, or agency with multiple clients (affects sharing/permissions design)
- What's being organized: client communication, project files, financial/tracking data, scheduling
- Existing Workspace edition/admin access level, if relevant to sharing controls

## Core Capabilities

### Gmail
- Label and filter architecture by client/project so email doesn't require manual triage (auto-labeling by sender domain, keyword, or client alias)
- Canned responses/templates for recurring communications (onboarding, report delivery, proposal follow-up)
- Shared inbox considerations (delegation vs. Google Groups vs. a dedicated shared mailbox) for team-based client communication

### Calendar
- Client-facing booking setup (appointment schedules) to reduce back-and-forth scheduling for discovery calls/check-ins
- Recurring event structure for reporting cadences, optimization review cycles, and client check-ins so operational cadence isn't dependent on manual memory
- Shared team calendars with appropriate visibility (busy/free vs. full detail) for client-facing vs. internal team calendars

### Drive
- Folder architecture by client/project with consistent structure (e.g., Client > Contracts, Reporting, Creative Assets, Correspondence) so nothing depends on one person's personal organization habits
- Shared Drives (not personal-folder sharing) for anything team-owned, so files don't disappear if an individual leaves
- Permission hygiene: view vs. comment vs. edit access set deliberately per audience (client vs. internal team vs. subcontractor)

### Docs & Slides
- Proposal and scope-of-work templates (coordinate content with `google-ads-client-services`) built as reusable Docs templates rather than rebuilt from scratch each time
- Client-facing report/deck templates with consistent branding, complementing `google-ads-reporting` content and `looker-studio-reporting` dashboards for the narrative-document side of reporting
- Version history discipline for collaborative documents under active client negotiation

### Sheets
- Client/lead tracking spreadsheets (CRM-lite for businesses not yet using a dedicated CRM) with clear pipeline stages
- Budget and retainer tracking, campaign performance logging where a lighter-weight alternative to Looker Studio is preferred
- Templates with data validation and protected ranges to prevent accidental overwrites in shared/team-edited sheets

### Forms
- Client intake/discovery questionnaires (feeding directly into `google-ads-client-services` onboarding) with conditional logic to route different client types to relevant questions
- Lead capture forms feeding into a Sheet or CRM for review campaigns/landing pages
- Feedback/testimonial collection forms post-engagement

## Workflow
1. Clarify what's being organized/built and the business structure (solo vs. team vs. multi-client agency).
2. For communication/scheduling requests, design label/filter or Calendar structure matched to actual client volume and team size.
3. For file organization, propose a consistent Drive/Shared Drive folder architecture rather than an ad hoc one-off structure.
4. For documents/sheets/forms, build as reusable templates rather than single-use artifacts wherever the same need will recur.
5. Set sharing permissions deliberately per audience (client, team, subcontractor) rather than defaulting to broad access.

## Outputs
- Gmail label/filter scheme or Calendar structure
- Drive/Shared Drive folder architecture with permission recommendations
- Reusable Doc/Slide template
- Sheet with appropriate structure/validation
- Form with appropriate logic and destination (Sheet/CRM)

## Rules
- Never recommend sharing client-owned assets (Drive files, Sheets) via personal-folder sharing when a Shared Drive is available — personal sharing breaks if the owning individual leaves.
- Default to templated, reusable documents over one-off builds whenever the underlying need (proposals, reports, intake) will recur.
- Set permission levels deliberately (view/comment/edit) per audience; don't default everything to edit access for convenience.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-client-services` (proposal/onboarding content this templates), `google-ads-reporting` and `looker-studio-reporting` (report content/dashboards this houses/delivers), `google-ads-account-management` (business setup this operational layer supports).
