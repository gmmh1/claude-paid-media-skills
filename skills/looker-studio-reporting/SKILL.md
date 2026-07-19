---
name: looker-studio-reporting
description: "Build Looker Studio (Google Data Studio) dashboards connecting Google Ads, GA4, Search Console, and other marketing data sources. Triggers on 'build a Looker Studio dashboard', 'connect my data sources into one report', 'automate my client reporting', or 'combine Google Ads and GA4 into a dashboard'. Cross-source dashboard layer — for the underlying report content/narrative see google-ads-reporting."
---

# Looker Studio Reporting

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build live, shareable Looker Studio dashboards that blend Google Ads, GA4, Search Console, and other marketing data sources into a single report — replacing manual, recurring report assembly with a connected, auto-refreshing view.

## Trigger Conditions
- "Build a Looker Studio dashboard for [client/account]"
- "Connect my data sources into one report"
- "Automate my recurring client reporting"
- "Combine Google Ads and GA4 into one dashboard"

## Required Inputs
- Data sources to connect (Google Ads, GA4, Search Console, Sheets, BigQuery, other connectors)
- Audience for the dashboard (internal team, client-facing, executive summary)
- The goal metrics that should headline the report (tied to business objective, not just available data)
- Refresh/access requirements (who needs view/edit access, how often data should refresh)

## Core Capabilities

### Data Source Connection
- Native connectors for Google Ads, GA4, Search Console, Google Sheets, BigQuery, and YouTube Analytics
- Blended data sources for combining metrics across connectors that don't share a native join (e.g., Ads spend next to GA4 on-site behavior) — understanding blend join key limitations and when a blend will silently drop data due to mismatched dimensions
- Data freshness/caching behavior per connector, so the report's "as of" expectations are set correctly

### Dashboard Design
- Leading with the goal metric prominently (scorecard/KPI tiles), not burying it in a table
- Trend charts over time as the primary visual for performance narratives, supplementing rather than replacing headline numbers
- Filter controls (date range, campaign, channel) so one dashboard serves multiple drill-down needs instead of requiring many separate reports
- Consistent layout/branding for client-facing reports — this is often literally the client-facing product of an ads management service

### Calculated Fields & Custom Metrics
- Building calculated fields for metrics not natively provided (blended ROAS across channels, CAC using a custom cost input, custom conversion-weighted scores)
- Avoiding calculation errors from aggregation-then-divide vs. divide-then-aggregate mistakes (a classic Looker Studio pitfall with ratio metrics like CTR/CVR at rolled-up levels)

### Automation & Sharing
- Scheduled email delivery of the report on a client-appropriate cadence
- View-only sharing vs. edit access, and using a service account or verified connection so client access doesn't depend on the report builder's personal login staying authorized
- Embedding dashboards where appropriate (client portal, internal wiki)

## Workflow
1. Confirm data sources, audience, and the specific goal metrics that should headline the report.
2. Connect and validate each data source, checking for expected date ranges and metric values before building on top of them.
3. Design the layout: headline KPI tiles first, trend charts second, detail tables/filters last.
4. Build any calculated fields needed, double-checking ratio-metric aggregation behavior.
5. Set up scheduled delivery and appropriate access levels.
6. Sanity-check the finished dashboard against a manual pull of the same numbers before considering it launch-ready.

## Outputs
- Connected dashboard with headline KPIs, trend visuals, and filter controls
- Calculated field documentation for any custom metrics
- Scheduled delivery configuration
- Access/sharing setup summary

## Rules
- Always validate blended data sources against a manual spot-check before trusting them — silent join mismatches are the most common Looker Studio data-integrity failure.
- Never build a ratio calculated field (CTR, CVR, ROAS) without confirming it aggregates correctly at every rollup level the dashboard will show.
- Match dashboard complexity to audience — a client-facing dashboard should lead with 3-5 KPIs, not expose every available metric.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-reporting` (the narrative/content this dashboard visualizes), `google-analytics-ga4` (primary data source), `google-search-console` (organic data source), `dataviz` (chart/visual design conventions), `build-dashboard` (non-Looker-Studio dashboard alternative).
