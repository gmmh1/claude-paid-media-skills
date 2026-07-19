---
name: meta-ads-audit
description: "Perform a full Meta Ads account health check. Triggers on 'audit my Meta Ads account', 'is this Facebook account set up well', 'inherited this Meta account, check it', or 'is this account ready to scale'. Broad structural review — for a specific known symptom on a live campaign, use meta-ads-optimization instead."
---

# Meta Ads Account Audit

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Give a complete, structured health assessment of a Meta Ads account — usually needed when inheriting an existing account (new client, agency handoff, or an account that's been running without clear oversight).

## Trigger Conditions
- "Audit my Meta Ads account"
- "I inherited this Facebook Ads account, is it set up well?"
- "Is this account ready to scale spend?"
- "Find waste in my Meta Ads account"

## Required Inputs
- Account access (read-only sufficient for the audit)
- Business goal(s) and current budget
- How long the account has been running

## Core Capabilities

### Structural Audit
- Campaign objective mix vs. business goal fit
- Campaign/ad set/ad organization and naming — indicates deliberate structure vs. ad hoc accumulation
- Advantage Campaign Budget vs. manual budget usage and whether it matches the account's testing/scaling needs
- Number of active ad sets per campaign relative to available conversion volume — too many ad sets splitting thin conversion data is a common self-inflicted Learning Phase problem

### Tracking Audit
- Pixel and CAPI presence, deduplication status, Event Match Quality — route deep verification to `meta-ads-pixel-capi`
- Whether conversion events used for optimization actually reflect real business goals (e.g., optimizing toward AddToCart when Purchase tracking exists and should be used instead)

### Waste Detection
- Ad sets/campaigns with meaningful spend and zero or near-zero conversions over a representative window
- Audience overlap across concurrently running ad sets competing against each other
- Stale creative running well past typical fatigue signals (rising frequency, declining CTR) without refresh
- Disapproved or rejected ads silently reducing delivery

### Audience & Creative Maturity
- Reliance on narrow manual targeting when conversion data would support Advantage+ audience for better reach/efficiency
- Creative diversity: is the account running enough angle/format variety, or is there a single stale creative carrying disproportionate spend

### Scaling Readiness
- Whether tracking maturity and current performance justify increasing budget, or whether foundational issues should be fixed first
- Learning Phase stability across ad sets as a specific scaling-readiness signal — an account that can't stably exit Learning Phase at current budget will not scale well without structural fixes first

## Workflow
1. Confirm business goal(s) and budget as the baseline.
2. Review structure: objectives, campaign/ad set organization, budget strategy.
3. Review tracking: pixel/CAPI health, event alignment to real business goals.
4. Scan for waste: zero-conversion spend, audience overlap, stale creative, disapproved ads.
5. Assess creative and audience maturity relative to account conversion volume.
6. Deliver a scaling-readiness verdict with specific blockers named, findings ranked by dollar impact.

## Outputs
- Findings list ranked by estimated dollar/performance impact
- Scaling readiness verdict with specific blockers
- Routing recommendations to specialist skills for each fix

## Rules
- Never issue a "this account is fine" verdict without checking tracking completeness and event alignment first.
- Rank findings by dollar impact, not audit-checklist order.
- Flag ad set proliferation splitting thin conversion data as a structural issue distinct from a targeting problem — the fix is consolidation, not better audience selection.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-optimization` (fixes for diagnosed performance issues), `meta-ads-pixel-capi` (tracking gap fixes), `meta-ads-creative-analytics` (creative maturity deep-dive), `meta-ads-strategy` (if the audit reveals the wrong objective/channel fit was chosen).
