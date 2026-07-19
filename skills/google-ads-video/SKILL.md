---
name: google-ads-video
description: "Build YouTube video ad campaigns — awareness (bumper, non-skippable), consideration (in-stream), and video action campaigns. Triggers on 'set up YouTube ads', 'video ad campaign', 'skippable in-stream ads', or 'video action campaign'. Paid YouTube advertising — for the channel's organic content strategy see youtube-organic-growth."
---

# Google Ads Video (YouTube Ads)

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build YouTube video ad campaigns matched to the right sub-format and bidding model for the funnel stage — awareness (bumper, non-skippable), consideration (skippable in-stream), or direct response (video action campaigns).

## Trigger Conditions
- "Set up YouTube ads"
- "Run a video ad campaign"
- "Skippable in-stream vs. bumper ads — which do I need"
- "Video action campaign for conversions"

## Required Inputs
- Video creative asset(s) — format requirements differ meaningfully by sub-format (bumper needs a tight 6-second cut, in-stream can run longer with a hook-first structure)
- Campaign goal: awareness/reach, consideration (views/engagement), or direct conversions
- Audience targeting data available (remarketing lists, custom segments, in-market/affinity)
- Budget and whether this supports a CPV (cost-per-view), CPM, or conversion-optimized bidding model

### Format Selection
- Skippable in-stream: most common, works for both consideration and conversion goals with a video action campaign structure; the first 5 seconds before the skip button matters more than the rest of the video
- Non-skippable in-stream / bumper (6-second): pure awareness/reach plays, priced and measured differently (CPM, not CPV) — don't apply consideration-stage judgment (view rate) to a format designed to be seen in full by design
- In-feed (formerly video discovery): shown as a thumbnail in search/watch-next results, user opts in by clicking — behaves more like a Search-adjacent intent signal than push-format video
- Video action campaigns: conversion-optimized, combines video creative with Search-like calls to action and can pull in Shopping-style product feeds for ecommerce

### Creative Structure for Video Ads
- Hook in the first 5 seconds — this is the single highest-leverage creative factor given the skip button
- Structure differs from organic YouTube content: ad creative needs to work for an unsolicited/interrupted viewer, not a subscriber who chose to click
- Brand/product visibility early, not held for a "reveal" — skippable format punishes slow-building narratives
- Call-to-action overlay/end card clarity for video action campaigns specifically, since the format is judged on conversions, not just views

### Audience & Targeting
- Remarketing (channel viewers, video engagers, website visitors) as the highest-intent audience layer, coordinate with `google-ads-remarketing`
- In-market and affinity audiences for prospecting when remarketing pools are too small
- Placement targeting (specific channels/videos) for advertisers wanting more control than pure audience-based targeting

### Measurement
- View rate and CPV as the relevant metric for skippable/consideration formats — not conversions, unless running a video action campaign
- Brand lift and reach/frequency metrics for pure awareness campaigns — don't force a conversion-based judgment onto an awareness-format campaign
- Video action campaign conversion metrics (CPA/ROAS) as the correct bar only for that specific sub-format

## Workflow
1. Confirm the campaign's actual goal (awareness, consideration, or conversion) before picking a sub-format — the format choice should follow the goal, not the other way around.
2. Assess available creative and brief accordingly (6-second cut for bumper, hook-first structure for skippable in-stream).
3. Set audience targeting, prioritizing remarketing pools where available.
4. Select bidding/measurement model matched to the chosen sub-format (CPV/CPM for awareness/consideration, conversion-optimized for video action campaigns).
5. Judge results against the metric appropriate to the format chosen — don't apply direct-response standards to an awareness buy or vice versa.

## Outputs
- Sub-format recommendation with rationale tied to funnel goal
- Creative brief specific to the chosen sub-format (hook structure, length, CTA placement)
- Audience targeting plan
- Correct measurement framework for the chosen format

## Rules
- Never judge a bumper/awareness campaign by conversion rate, or a video action campaign purely by view rate — match the metric to the format's actual purpose.
- Always brief creative for the first 5 seconds specifically when the format is skippable — this is the highest-leverage creative decision in the entire campaign.
- Don't reuse organic YouTube content unmodified as ad creative without restructuring for an interrupted, non-opted-in viewer.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`youtube-organic-growth` (organic channel strategy, distinct from paid), `google-ads-remarketing` (audience source), `google-ads-demand-gen` (overlapping placements via Shorts/in-feed, different campaign mechanics), `google-ads-campaign-builder` (overall campaign type selection).
