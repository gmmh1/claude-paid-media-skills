---
name: google-ads-keyword-research
description: "Deep keyword research using Google Ads Keyword Planner methodology — search volume, CPC estimates, competition, forecasting, and keyword idea expansion. Triggers on 'Keyword Planner', 'find keywords for my campaign', 'what will this keyword cost', 'forecast my campaign performance', or 'expand my keyword list'. Standalone research depth beyond the keyword theming done inside google-ads-campaign-builder."
---

# Google Ads Keyword Research

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Produce a rigorous, intent-classified keyword list with volume, cost, and competition context — using Keyword Planner methodology — deep enough to found campaign structure, budget forecasts, and negative keyword strategy on.

## Trigger Conditions
- "Use Keyword Planner to find keywords for [product/service]"
- "What will this keyword cost / how much traffic could I get"
- "Forecast my campaign performance before I launch"
- "Expand my keyword list / find keywords I'm missing"

## Required Inputs
- Product/service and target geography (volume and CPC are location-specific)
- Seed keywords or a landing page/domain to derive ideas from
- Monthly budget, if forecasting is wanted
- Whether this is for Search (exact keyword targeting) or informing PMax/Demand Gen themes (broader signal, not literal keyword bidding)

## Core Capabilities

### Keyword Idea Generation
- Seed-based expansion: starting from product/service terms and broadening via Keyword Planner's related-keyword suggestions
- URL-based expansion: deriving keyword ideas from a landing page or competitor domain's likely ranking terms
- Question and long-tail expansion for content-adjacent or informational-intent capture, separated from transactional terms

### Volume & Cost Data
- Average monthly search volume (as a range, not a false-precision point estimate — Keyword Planner obfuscates exact figures for low-spend accounts)
- Top-of-page bid ranges (low/high) as a CPC expectation-setting tool, not a guaranteed price
- Competition level (low/medium/high) as an auction-crowding signal, distinct from actual conversion competitiveness

### Intent Classification
- Sorting generated keywords into informational, navigational, commercial-investigation, and transactional buckets
- Prioritizing transactional/commercial-investigation terms for Search campaigns; routing informational terms to content/SEO or top-funnel Display/Demand Gen consideration instead of bidding them directly in a conversion-optimized Search campaign

### Forecasting
- Using Keyword Planner's forecast tool (clicks, impressions, cost, conversions at a given bid/budget) to sanity-check a proposed budget before launch
- Framing forecasts as directional planning inputs, not performance guarantees — actual results depend on ad quality, landing page, and competition shifts the tool can't predict

### Negative Keyword Seeding
- Identifying likely irrelevant terms during research (adjacent-but-wrong intent, free/DIY-seeking terms for a paid service, job-seeker terms for a company name) to pre-load as negatives before launch, rather than discovering the waste after spend

## Workflow
1. Gather seed keywords, landing page/domain, and target geography.
2. Generate expanded keyword ideas from both seed terms and URL-based suggestions.
3. Pull volume, CPC range, and competition data for the expanded list.
4. Classify every keyword by intent; flag which belong in a conversion-focused Search campaign vs. which don't belong in paid Search at all.
5. Run a budget forecast if a budget figure is available, and flag if the forecast suggests the budget is materially under or over what's needed to gather meaningful data.
6. Produce a starter negative keyword list from the research pass.
7. Hand the finalized, intent-classified list to `google-ads-campaign-builder` for ad group structuring.

## Outputs
- Keyword list with volume range, CPC range, and competition level per term
- Intent classification per keyword
- Budget forecast (clicks/cost/conversion estimate) if requested
- Starter negative keyword list
- Flag on any keyword with ambiguous or clearly wrong intent for the campaign's goal

## Rules
- Never present Keyword Planner volume/CPC figures as precise guarantees — always frame as ranges/estimates that shift with real auction dynamics.
- Never hand a raw, unclassified keyword list to campaign building — intent classification is what prevents budget waste on the wrong search terms.
- Flag when total addressable search volume for the category is too low to support the stated budget/goal — this is a strategy-level finding, route it to `google-ads-strategy`.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (consumes this list for structure), `google-ads-strategy` (volume-informed budget/channel viability), `google-ads-optimization` (search terms report closes the loop on how actual queries matched this research).
