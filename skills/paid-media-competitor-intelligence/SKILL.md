---
name: paid-media-competitor-intelligence
description: "Aggregate competitor advertising research across Google, Meta, LinkedIn, and TikTok into one competitive picture. Triggers on 'research my competitor's full advertising strategy', 'what channels is [competitor] on', or 'build a cross-platform competitor battlecard'. Aggregation layer over google-ads-competitor-research, meta-ads-library-intelligence, and platform-native research."
---

# Paid Media Competitor Intelligence

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Combine platform-specific competitor research into one coherent picture of a competitor's overall paid media strategy — which channels they're actually investing in, how their messaging differs by platform, and where the business has a genuine differentiation opportunity.

## Trigger Conditions
- "Research my competitor's full advertising strategy across channels"
- "What platforms is [competitor] advertising on"
- "Build a cross-platform competitor battlecard"

## Required Inputs
- Competitor name(s)/domain(s)
- Which platforms to check (default: all four — Google, Meta, LinkedIn, TikTok — unless scoped narrower)
- What's being researched: channel presence, messaging/offers, creative format mix, estimated investment level

## Core Capabilities

### Per-Platform Research Aggregation
- Google: Auction Insights (if the business's own account overlaps with the competitor) plus manual search-term review (`google-ads-competitor-research`)
- Meta: public Ad Library search (`meta-ads-library-intelligence`)
- LinkedIn: no public ad library equivalent — infer presence primarily from Sponsored Content appearing in-feed, Company Page activity, and any available industry benchmarking
- TikTok: Creative Center / public trend tools where available, plus manual observation of competitor TikTok presence and any Spark-Ads-boosted content visible organically

### Cross-Channel Investment Signal
- Which platforms a competitor is actually active on (not just present on) as a signal of where they believe their audience and ROI are strongest — a competitor absent from a platform the business is considering may indicate either an opportunity (underserved channel) or a validated non-fit (they tried and left)
- Relative investment level inference (ad volume, campaign freshness/cadence) across platforms to gauge where a competitor is doubling down vs. maintaining minimal presence

### Messaging Consistency Analysis
- Comparing how a competitor's core offer/positioning shifts (or doesn't) across platforms — consistent cross-platform messaging signals a deliberate, mature brand strategy; wildly inconsistent messaging may signal disorganization or platform-specific testing worth watching
- Identifying messaging/offer angles the competitor uses on every platform (their core value prop) vs. platform-specific angles (tactical adaptations)

### Differentiation Opportunity Mapping
- Synthesizing findings into where the business can differentiate: an angle no competitor is using, a channel competitors are neglecting, an audience segment underserved across the competitive set
- Distinguishing proven competitor tactics (long-running Meta ads, consistently active LinkedIn presence) from unproven experiments, using the same longevity-as-signal principle from the platform-specific research skills

## Workflow
1. Identify target competitor(s) and platforms to research.
2. Pull platform-specific findings via `google-ads-competitor-research`, `meta-ads-library-intelligence`, and available LinkedIn/TikTok observation.
3. Assess relative investment/presence across platforms.
4. Compare messaging consistency across platforms.
5. Synthesize into a differentiation opportunity map spanning channel gaps and messaging gaps.

## Outputs
- Cross-platform competitor presence summary (which channels, relative investment signal)
- Messaging consistency analysis across platforms
- Differentiation opportunity map (channel gaps, messaging gaps)
- Proven-vs-unproven tactic flags per platform

## Rules
- Never present competitor channel absence as proof of opportunity without considering the alternative explanation (they tried it and it didn't work) — frame both possibilities.
- Aggregate, don't just concatenate, platform-specific findings — the cross-platform synthesis (investment comparison, messaging consistency) is this skill's value beyond the individual research skills.
- Distinguish proven (long-running, consistent) competitor tactics from unproven/testing activity per platform.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-competitor-research`, `meta-ads-library-intelligence` (platform-specific foundations), `competitive-intelligence` (broader business battlecard beyond paid media).
