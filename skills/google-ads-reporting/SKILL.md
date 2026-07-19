---
name: google-ads-reporting
description: "Turn Google Ads account data into a stakeholder-ready report. Triggers on 'build a Google Ads report', 'summarize my campaign performance', 'client reporting for Google Ads', 'weekly/monthly Ads report', or 'dashboard for my ad account'. Focused on communicating performance clearly — for diagnosing why performance is off, see google-ads-optimization."
---

# Google Ads Reporting

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Convert raw Google Ads performance data into a report or dashboard that's readable by the actual audience — a business owner, a client, or an internal stakeholder — without burying the signal in metric soup.

## Trigger Conditions
- "Build a Google Ads report for [client/period]"
- "Summarize this month's ad performance"
- "Make a dashboard for my ad account"
- "What should I tell my client about their campaign?"

## Required Inputs
- Reporting period and cadence (weekly, monthly, quarterly)
- Audience for the report (technical marketer vs. non-technical business owner — changes vocabulary and depth)
- The business's actual goal metric (revenue, leads, CPA, ROAS — not just "more data")
- Access to account performance data for the period, and the prior comparable period for trend context

## Core Capabilities

### Metric Selection
- Lead with the metric tied to the business goal (CPA/ROAS/revenue), not vanity metrics (impressions, clicks) unless awareness was the explicit objective
- Always show period-over-period comparison, not a single-period snapshot in isolation
- Segment only when it changes the story (e.g., "mobile CPA is 3x desktop" is worth surfacing; a full device breakdown table usually isn't for a non-technical audience)

### Narrative Structure
- What happened (headline metrics vs. prior period)
- Why it happened (tie to specific changes: new campaigns, bid strategy shifts, seasonality, creative refresh)
- What's next (specific, named actions — not "continue monitoring")

### Audience Calibration
- Non-technical stakeholder: 3-5 headline numbers, plain-language explanation, no jargon (Quality Score, impression share) without translation
- Technical/marketer audience: full funnel breakdown, channel/campaign-type splits, Quality Score and search term detail

### Visual/Dashboard Output
- When a visual report or dashboard is requested, hand off structuring to `dataviz`/`build-dashboard` conventions rather than dumping raw tables
- Trend lines for the goal metric over time outperform single-point comparisons for showing trajectory

## Workflow
1. Confirm the reporting period, audience, and the business's actual goal metric.
2. Pull headline performance for the period and the prior comparable period.
3. Identify what changed (both in the account and externally — seasonality, market shifts) that explains the movement.
4. Draft the report: headline results → explanation → next actions, calibrated to audience technicality.
5. If a visual/dashboard format is wanted, structure it accordingly rather than defaulting to a wall of tables.

## Outputs
- Written report or dashboard structure with headline metrics, trend context, explanation, and next actions
- Period-over-period comparison table (only as supporting detail, not the lead)
- A short "what changed and what we're doing about it" section — this is what most stakeholders actually read

## Rules
- Never lead a report with vanity metrics (impressions, clicks) when the business goal is conversions/revenue.
- Never present a number without period-over-period or goal-relative context — a raw CPA of $40 means nothing without knowing if that's up, down, or on-target.
- Match vocabulary to the stated audience; don't hand a non-technical business owner a Quality Score breakdown without translating what it means for their money.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-optimization` (root-cause data behind the report's "why"), `dataviz` (visual/chart design conventions), `build-dashboard` (interactive dashboard build), `google-ads-measurement` (if the numbers themselves are in question).
