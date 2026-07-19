---
name: google-analytics-ga4
description: "Set up, configure, and analyze Google Analytics 4 — event tracking, conversions, exploration reports, audiences. Triggers on 'set up GA4', 'GA4 events aren't tracking', 'analyze my GA4 data', 'build a GA4 exploration report', or 'why don't my GA4 and Google Ads numbers match'. Analytics-platform layer — for GA4-to-Ads linkage specifically see google-ads-measurement."
---

# Google Analytics 4 (GA4)

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Configure GA4 correctly and extract real insight from it — event tracking, conversion definitions, audience building, and exploration analysis — as the analytics backbone behind every other marketing decision, not just a Google Ads appendage.

## Trigger Conditions
- "Set up GA4 for my website/app"
- "My GA4 events aren't tracking / numbers look wrong"
- "Analyze my GA4 data / what's driving [metric]"
- "Build a GA4 exploration report"
- "Why don't my GA4 and Google Ads numbers match"

## Required Inputs
- Website/app platform and current tagging status (Tag Manager, gtag.js, native platform integration)
- Business goals to translate into tracked events/conversions
- Existing property status: net-new setup vs. auditing an existing property
- Downstream tools this needs to connect to (Google Ads, Looker Studio, BigQuery export)

## Core Capabilities

### Property & Data Stream Setup
- Web/app/web+app property configuration and data stream setup
- Cross-domain tracking configuration when a funnel spans multiple domains (e.g., site → checkout on a different domain)
- Data retention and reporting identity settings, and their tradeoffs

### Event Tracking Architecture
- Automatically collected vs. enhanced measurement vs. custom events — using custom events only where the automatic/enhanced set doesn't cover the business's actual goal actions
- Event naming and parameter conventions that stay analyzable at scale (consistent naming, meaningful parameters, avoiding high-cardinality params that blow up reporting)
- Marking key events (GA4's conversion designation) matched to actual business goals, not just marking everything as a conversion

### GA4-to-Google Ads Reconciliation
- Explaining discrepancies between GA4 and Google Ads conversion counts: different attribution models/windows, session vs. event-scoped counting, cross-device stitching differences
- This is a diagnostic hand-off point — deep tracking/attribution configuration for Ads specifically lives in `google-ads-measurement`

### Audiences
- Building GA4 audiences (behavioral, event-based) for use as remarketing sources in Google Ads (coordinate with `google-ads-remarketing`) or for further analysis segmentation

### Exploration & Analysis
- Funnel exploration to find drop-off points in a defined conversion path
- Path exploration for understanding actual user navigation vs. assumed user journeys
- Segment overlap and cohort exploration for retention/behavior analysis
- Free-form exploration for ad hoc questions that standard reports don't answer directly

### Data Quality
- Common data-quality failures: duplicate tagging (double-counted events), missing key events, bot traffic inflation, internal traffic not excluded
- Debug view usage to verify events fire correctly during setup/QA before trusting the data

## Workflow
1. Confirm property/stream setup and current tagging method.
2. Translate business goals into a specific event/key-event tracking plan — don't over-track; track what will actually inform a decision.
3. Implement or audit event tracking, verifying with GA4 DebugView before considering it done.
4. Exclude internal traffic and check for obvious data-quality issues (duplicate events, bot inflation).
5. Build the specific exploration report or audience the request calls for.
6. If reconciling against Google Ads numbers, explain the specific mechanical reason for the discrepancy rather than treating it as "broken tracking."

## Outputs
- Event/key-event tracking plan mapped to business goals
- Data-quality findings and fixes
- Requested exploration report or audience definition
- GA4-vs-Ads discrepancy explanation, when applicable

## Rules
- Never mark every event as a key event — key events should map to genuine business goals, or conversion-optimized bidding downstream (in Ads) gets diluted signal.
- Always verify new event tracking in DebugView before declaring it live; don't let unverified tracking silently feed reports for weeks.
- Explain GA4-vs-Ads number differences mechanically (attribution window/model, scoping) rather than implying either number is simply "wrong."

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-measurement` (Ads-specific conversion import and attribution), `google-ads-remarketing` (using GA4 audiences downstream), `google-tag-manager` (tag deployment infrastructure), `looker-studio-reporting` (visualizing GA4 data), `google-search-console` (organic-side data GA4 doesn't cover).
