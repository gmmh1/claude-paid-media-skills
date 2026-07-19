---
name: tiktok-ads-audit
description: "Perform a full TikTok Ads account health check. Triggers on 'audit my TikTok Ads account', 'is this TikTok account set up well', 'inherited this TikTok account, check it', or 'is this account ready to scale'. Broad structural review — for a specific known symptom, use tiktok-ads-optimization instead."
---

# TikTok Ads Account Audit

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Give a complete, structured health assessment of a TikTok Ads account — usually needed when inheriting an existing account or evaluating scaling readiness, with particular attention to creative diversity/freshness given how much this platform's performance depends on it.

## Trigger Conditions
- "Audit my TikTok Ads account"
- "I inherited this TikTok account, is it set up well?"
- "Is this account ready to scale spend?"
- "Find waste in my TikTok Ads account"

## Required Inputs
- Account access (read-only sufficient)
- Business goal(s) and current budget
- How long the account has been running

## Core Capabilities

### Structural Audit
- Campaign objective mix vs. business goal fit
- Campaign/ad group organization and naming
- Smart+ vs. manual campaign usage and whether it matches conversion volume maturity

### Tracking Audit
- Pixel and Events API presence, deduplication status, event match quality — route deep verification to `tiktok-ads-pixel-events`
- Whether optimization events reflect real business goals

### Creative Health Audit (High-Weight for This Platform)
- Number of distinct active creative variants relative to spend level — a low ratio (e.g., one ad carrying most of the budget) is a red flag on this platform specifically, given how fast individual ads fatigue here
- Hook rate and completion rate across active ads as leading indicators of creative health
- Checking whether Spark Ads are being used where proven organic content exists, or whether the account is missing this lower-risk, higher-trust format entirely
- Assessing whether creative looks native (platform-appropriate) or repurposed from other channels — repurposed creative is a common, high-impact finding

### Waste Detection
- Ad groups with meaningful spend and no meaningful conversions over a representative window
- Audience overlap across concurrently running ad groups
- Stale creative running well past typical TikTok fatigue signals without refresh

### Scaling Readiness
- Whether tracking maturity, creative testing pipeline, and current performance justify increasing budget
- Creative production pipeline sustainability as a specific scaling-readiness factor unique to this platform — an account can't scale spend faster than it can produce fresh native creative

## Workflow
1. Confirm business goal(s) and budget as the baseline.
2. Review structure: objectives, campaign/ad group organization, Smart+ usage.
3. Review tracking: Pixel/Events API health, event alignment.
4. Conduct a creative health audit: variant count, hook/completion rates, native-vs-repurposed assessment, Spark Ads usage.
5. Scan for waste: zero-conversion spend, audience overlap, stale creative.
6. Deliver scaling-readiness verdict weighted heavily toward creative pipeline sustainability, findings ranked by dollar impact.

## Outputs
- Findings list ranked by estimated dollar/performance impact
- Creative health assessment as a distinct, prominent section
- Scaling readiness verdict, explicitly addressing creative production capacity
- Routing recommendations to specialist skills for each fix

## Rules
- Never issue a "this account is fine" verdict without a creative health assessment specifically — it's the dominant factor on this platform and a generic structural audit alone will miss the real story.
- Flag thin/repurposed creative as a high-priority finding regardless of how the rest of the account is structured.
- Frame scaling readiness around creative production pipeline capacity, not just budget/tracking maturity.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`tiktok-ads-optimization` (fixes for diagnosed performance issues), `tiktok-ads-pixel-events` (tracking gap fixes), `tiktok-ads-creative-strategy` (creative pipeline fixes), `tiktok-ads-spark-ads` (underused-format opportunity).
