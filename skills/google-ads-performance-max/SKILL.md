---
name: google-ads-performance-max
description: "Build and optimize Performance Max campaigns — asset groups, listing groups, audience signals, and PMax-specific diagnostics. Triggers on 'set up Performance Max', 'PMax campaign', 'my PMax is underperforming', or 'asset groups for Performance Max'. Deep PMax-specific work — for initial campaign-type selection see google-ads-campaign-builder or google-ads-strategy."
---

# Google Ads Performance Max

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build and optimize Performance Max campaigns — Google's automated, full-inventory campaign type spanning Search, Display, YouTube, Discover, Gmail, and Maps from a single campaign — with the asset-group and signal quality that determines whether the automation actually performs.

## Trigger Conditions
- "Set up a Performance Max campaign"
- "My PMax campaign is underperforming"
- "Build asset groups for PMax"
- "Should I run PMax alongside my Search campaigns"

## Required Inputs
- Business type (ecommerce with product feed vs. lead-gen/service business)
- Conversion goal and current conversion volume (PMax needs meaningful conversion history to leave the learning phase effectively)
- Available creative assets: images, logos, headlines, descriptions, video (PMax will auto-generate video from images if none is supplied, usually a lower-quality fallback)
- Existing Search campaign structure, if running PMax alongside Search (cannibalization risk to manage)

## Core Capabilities

### Asset Groups
- Asset groups as PMax's version of ad groups — organized by product/service theme, not just one catch-all group for the whole account
- Full asset coverage per group: multiple headlines/descriptions/images/logos, and native video where possible instead of relying on auto-generated video
- Asset strength indicator as a real, actionable diagnostic — "poor"/"average" ratings correlate with real delivery limitations, not just a vanity score

### Audience Signals
- Audience signals (customer lists, website visitors, in-market/affinity segments, interests) as a starting point for the algorithm, not hard targeting — PMax can and will expand beyond signals if it finds performance elsewhere
- First-party data (Customer Match) as the highest-quality signal input, coordinate with `google-ads-remarketing`

### Listing Groups (Ecommerce)
- Product feed dependency for ecommerce PMax — quality issues here (see `google-ads-shopping-feed`) directly cap PMax ecommerce performance
- Listing group structure and custom labels for prioritizing high-margin/bestseller products within PMax

### Campaign-Level Controls
- URL expansion setting: allowing Google to send traffic to pages beyond explicitly provided final URLs based on landing page content match — powerful but requires page exclusion review to prevent traffic to irrelevant/low-quality pages
- Brand exclusions/inclusions to control whether PMax can bid on the business's own brand terms (usually should be excluded if a dedicated brand Search campaign already exists, to avoid budget cannibalization)
- Negative keywords at the account or campaign level (PMax negative keyword support is more limited than Search — flag this constraint explicitly)

### Diagnostics & Optimization
- Channel/placement performance reporting is limited by design in PMax (a known, deliberate tradeoff of the automation) — set this expectation before promising Search-level transparency
- Insights tab (search terms insights, audience insights, demographic insights) as the primary available diagnostic surface
- Diagnosing "PMax underperforming" as: insufficient conversion volume for the learning phase, weak/poor-rated assets, poor audience signals, or landing page/feed quality — not a single generic cause

## Workflow
1. Confirm business type, conversion volume, and available creative assets.
2. Build multiple theme-based asset groups (not one catch-all group), maximizing asset count and quality per group.
3. Set audience signals from best available first-party data.
4. For ecommerce, verify feed health and set up listing group/custom label structure (route to `google-ads-shopping-feed` if feed issues exist).
5. Configure URL expansion and brand exclusion settings deliberately, not left at default.
6. Set expectations on limited placement-level reporting before launch.
7. When optimizing an existing underperforming PMax, diagnose via asset strength, conversion volume, Insights tab data, and feed/landing page quality — in that order.

## Outputs
- Asset group structure with per-group asset inventory and strength ratings
- Audience signal recommendation
- URL expansion and brand exclusion configuration
- Underperformance diagnosis (when optimizing), tied to a specific root cause
- Expectation-setting note on PMax's limited transparency vs. Search

## Rules
- Never launch PMax with only one catch-all asset group when the business has genuinely distinct product/service themes — this dilutes signal and asset relevance.
- Always check feed health (`google-ads-shopping-feed`) before diagnosing ecommerce PMax underperformance as an audience or asset problem.
- Set the expectation upfront that PMax reporting transparency is intentionally limited — don't imply the user will get Search-campaign-level placement detail.
- Recommend brand exclusion in PMax when a dedicated brand Search campaign exists, to prevent budget cannibalization of cheap brand clicks.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (overall campaign type selection), `google-ads-shopping-feed` (feed quality dependency), `google-ads-remarketing` (audience signal source), `google-ads-optimization` (general performance diagnosis), `google-ads-strategy` (PMax vs. Search allocation decision).
