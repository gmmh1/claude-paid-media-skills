---
name: meta-ads-api-automation
description: "Automate Meta Ads work at scale using the Marketing API — bulk campaign creation, automated rules, and scheduled reporting pulls. Triggers on 'automate my Meta Ads', 'Marketing API script', 'bulk create Meta campaigns', or 'automated rules for Facebook Ads'. For one-off manual campaign work, use meta-ads-campaign-builder instead."
---

# Meta Ads API & Automation

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build Marketing API integrations and automated rules that handle repetitive or scale-dependent Meta Ads work — bulk campaign creation, monitoring, and scheduled reporting — impractical to do by hand across many campaigns or client accounts.

## Trigger Conditions
- "Automate my Meta Ads [task]"
- "Write a Marketing API script for [task]"
- "Bulk create campaigns/ad sets across accounts"
- "Set up automated rules for budget/bid/pausing"

## Required Inputs
- The specific task to automate and its trigger logic
- Scope: single ad account or multiple accounts under a Business Manager
- Whether native Automated Rules (in-platform, no code) suffice, or the task needs the Marketing API (external app, cross-account, integration with other systems)
- Access status: Meta app with Marketing API access, access token, Business Manager permissions

## Core Capabilities

### Native Automated Rules
- In-platform rule builder for common cases: pause ad sets below a performance threshold, send alerts on budget pacing, adjust budgets within limits based on ROAS/CPA conditions
- Recommend this first for simple, single-account logic before reaching for custom API work

### Marketing API
- Full programmatic access: campaign/ad set/ad CRUD, Insights API for reporting queries, Custom Audience/Catalog management
- Required for: cross-Business-Manager automation at scale, integrating Meta data into external dashboards/CRMs, bulk operations beyond what native tools support
- Auth flow: Meta app creation, access token management (system user tokens for long-lived server-side access rather than short-lived user tokens), permission review

### Bulk Operations
- Bulk campaign/ad set creation from a template (e.g., replicating a proven structure across many product lines or locations)
- Bulk creative upload and ad set assignment
- Always build in a dry-run/preview step before any bulk write operation against live accounts

### Scheduled Reporting
- Automated Insights API pulls on a schedule, feeding into `looker-studio-reporting`-style dashboards or a data warehouse
- Handling API rate limits and pagination correctly for large accounts/date ranges

## Workflow
1. Clarify the exact task and whether native Automated Rules are sufficient before reaching for the API.
2. Choose native rules (simple, single-account) vs. Marketing API (cross-account, external integration, bulk creation).
3. Set up authentication using long-lived system user tokens for anything server-side/scheduled, not personal user tokens that expire.
4. Build the automation/script with logging so failures are diagnosable.
5. Build a dry-run/preview mode for anything that writes budget, bid, pause, or bulk-creation changes.
6. Document what the automation does and how to disable it.

## Outputs
- Script or API integration code
- Trigger logic and schedule explanation
- Dry-run/preview output before first live execution
- Plain-language description of the automation for handoff

## Rules
- Never deploy a bid/budget/pause automation directly to live-write mode without a dry-run preview first.
- Use long-lived system user tokens for scheduled/server-side automation, not personal access tokens that will expire and silently break the automation.
- Recommend native Automated Rules over custom API work when the logic is simple.
- Log every automated action so a human can audit and reverse if needed.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-optimization` (defines the rules worth automating), `meta-ads-audit` (automated health-check scripts), `looker-studio-reporting` (destination for automated reporting pulls).
