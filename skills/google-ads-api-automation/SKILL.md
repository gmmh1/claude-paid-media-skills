---
name: google-ads-api-automation
description: "Automate Google Ads work at scale using Google Ads Scripts or the Google Ads API — bulk changes, automated rules, scheduled reporting pulls, programmatic offline conversion imports. Triggers on 'automate my Google Ads', 'write a Google Ads script', 'bulk update my campaigns', 'automated bid rules', or 'pull Google Ads data via API'. For one-off manual campaign work, use google-ads-campaign-builder instead."
---

# Google Ads API & Automation

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build scripts/API integrations that handle repetitive or scale-dependent Google Ads work — bulk edits, scheduled monitoring, automated rules, and programmatic data pulls — that would be impractical to do by hand across many campaigns/accounts.

## Trigger Conditions
- "Automate my Google Ads [task]"
- "Write a Google Ads script for [rule/report]"
- "Bulk update [keywords/bids/budgets] across campaigns"
- "Pull Google Ads performance data programmatically"
- "Set up automated bid/budget rules"

## Required Inputs
- The specific task to automate and its trigger condition (schedule-based, threshold-based, event-based)
- Scope: single account or MCC-wide across multiple client accounts
- Whether this uses Google Ads Scripts (JavaScript, runs inside the account, free, good for single-account automation) or the Google Ads API (external app, needed for MCC-wide/cross-account work or integration with other systems)
- Access/credentials status: developer token, OAuth setup, API access level

## Core Capabilities

### Google Ads Scripts
- Native JavaScript execution inside a Google Ads account, scheduled via the account's built-in scheduler
- Common use cases: pausing keywords/ads below a performance threshold, budget pacing alerts, automated negative keyword addition from search term reports, dayparting bid adjustments
- Limitations: single-account scope (or MCC scripts for cross-account, with more setup), execution time limits

### Google Ads API
- Full programmatic access: campaign/ad group/keyword CRUD, reporting queries (GAQL), conversion uploads
- Required for: cross-account MCC automation at scale, integrating Ads data into external dashboards/CRMs, building client-facing tools
- Auth flow: developer token application, OAuth2 credentials, API version awareness (Google deprecates versions on a schedule — flag if a script targets a soon-to-be-deprecated version)

### Automated Rules (native UI alternative)
- For simpler cases, native automated rules (pause if CPA > X, increase budget if ROAS > Y) may be sufficient without custom code — recommend this first when the logic is simple, reserve scripts/API for anything conditional or cross-account

### Bulk Operations
- Bulk keyword/negative keyword upload via Editor or API for large-scale changes
- Bulk bid/budget adjustments across many campaigns with a shared rule
- Always recommend a dry-run/preview step before any bulk write operation

## Workflow
1. Clarify the exact task, its trigger logic, and whether native automated rules are sufficient before reaching for a script.
2. Choose Scripts (single account, no cross-account need) vs. API (MCC-wide, external integration, or programmatic conversion import).
3. Write the script/integration with clear logging so failures are diagnosable, not silent.
4. Build in a preview/dry-run mode for anything that changes bids, budgets, or pauses campaigns — never ship a first-run script straight to live-write mode.
5. Set the execution schedule matched to the task's actual cadence (don't run an hourly script for a rule that only needs daily evaluation).
6. Document what the automation does and how to disable it, since automated changes can silently drift an account if the business context changes.

## Outputs
- Script or API integration code
- Explanation of trigger logic and schedule
- Dry-run/preview output before first live execution
- A plain-language description of what the automation does, for handoff to whoever owns the account day-to-day

## Rules
- Never deploy a bid/budget/pause automation directly to live-write mode without a dry-run preview first.
- Always log automation actions (what changed, when, why) so a human can audit and reverse if needed.
- Recommend native automated rules over custom scripts/API when the logic is simple — don't over-engineer.
- Flag API version deprecation risk when writing against the Google Ads API.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-optimization` (defines the rules worth automating), `google-ads-measurement` (offline conversion import automation), `google-ads-audit` (for scripts that monitor account health), `use-railway` (if automation needs external hosting/scheduling infrastructure).
