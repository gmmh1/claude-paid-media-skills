---
name: tiktok-ads-optimization
description: "Improve a live, underperforming TikTok Ads campaign. Triggers on 'optimize my TikTok Ads', 'why is my TikTok CPA/ROAS bad', 'my TikTok ad fatigued fast', or 'my TikTok campaign isn't spending'. Works on existing campaigns with performance data — for a new campaign use tiktok-ads-campaign-builder, for a full health check use tiktok-ads-audit."
---

# TikTok Ads Optimization

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Diagnose and fix underperformance in a live TikTok campaign, with particular attention to creative-driven causes — the dominant factor on this platform — and the unusually fast fatigue cycles TikTok ads experience relative to other platforms.

## Trigger Conditions
- "Optimize my TikTok Ads campaign"
- "Why is my CPA/ROAS bad"
- "My TikTok ad fatigued within days"
- "My campaign isn't spending its budget"

## Required Inputs
- Campaign performance data (CPM, CTR, completion rate, CPA/ROAS, frequency) for the relevant window
- Creative asset inventory currently running (how many distinct ads/angles)
- The specific symptom driving the request

## Core Capabilities

### Creative-First Diagnosis
- On TikTok, underperformance traces back to weak or fatigued creative far more often than targeting/bidding misconfiguration — always check creative diagnostics (hook rate, completion rate) before deep-diving bid strategy
- Fatigue cycles on TikTok are notably faster than Meta/Google — a single ad that performed well for a week can decay quickly; low creative testing volume is a common root cause of "it stopped working" complaints

### Hook & Completion Rate Diagnosis
- Low hook rate (early drop-off): the opening 1-2 seconds isn't reading as native content — route to `tiktok-ads-creative-strategy`/`tiktok-ads-copywriting-scripts`
- Good hook, low completion: pacing/structure issue in the middle of the video, or a mismatch between the hook's promise and the content that follows
- Good hook and completion, weak CPA: the offer/CTA isn't compelling enough, or the problem has moved downstream to the landing page/Shop listing

### Delivery Diagnosis
- Under-spending: often a bid set too conservatively relative to auction competitiveness, or audience too narrow — check both before assuming budget itself is the constraint
- Smart+ (automated) campaigns needing sufficient conversion volume to optimize well, similar Learning-Phase-style consideration to other automated campaign types in this library

### Cost Metric Diagnosis
- Rising CPM: broader auction pressure (seasonal/competitive) vs. narrow audience overlap across the advertiser's own concurrent ad groups
- High CPA despite good engagement metrics: landing page/Shop listing friction, or a conversion event mismatched to true purchase intent

### Spark Ads vs. Standard Ads Comparison
- When standard in-feed ads underperform, testing whether the same creative angle performs better as a Spark Ad (native engagement/trust signals) is a TikTok-specific diagnostic worth trying before concluding the angle itself is weak

## Workflow
1. Get the specific symptom and pull performance data including creative-level hook/completion rates.
2. Diagnose creative health first: hook rate, completion rate, and how many distinct creative variants are currently running.
3. If creative is thin or fatiguing fast, recommend refresh/testing volume increase before touching targeting/bidding.
4. If creative is healthy, check delivery (audience size, bid competitiveness) and cost metrics.
5. Consider testing underperforming standard ads as Spark Ads if native trust signals might be the missing factor.
6. Recommend the specific fix, routing to `tiktok-ads-creative-strategy`, `tiktok-ads-audience-targeting`, or `tiktok-ads-spark-ads` as appropriate.

## Outputs
- Root cause diagnosis, creative-health-first
- Hook/completion rate breakdown by ad
- Delivery/cost metric diagnosis if creative is healthy
- Prioritized fix list
- Spark Ads test recommendation, if applicable

## Rules
- Always check creative-level diagnostics (hook rate, completion rate) before deep-diving targeting or bidding — creative is the dominant lever on this platform.
- Expect and plan for faster fatigue cycles than other platforms; recommend a correspondingly faster creative refresh cadence.
- Don't conclude an angle is fundamentally weak without testing it as both a standard ad and a Spark Ad, where native trust signals can meaningfully change outcomes.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`tiktok-ads-audit` (broader health check when there's no specific symptom yet), `tiktok-ads-creative-strategy`, `tiktok-ads-copywriting-scripts`, `tiktok-ads-spark-ads`, `tiktok-ads-audience-targeting`, `tiktok-ads-pixel-events`.
