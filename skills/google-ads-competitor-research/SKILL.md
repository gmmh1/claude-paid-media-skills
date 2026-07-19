---
name: google-ads-competitor-research
description: "Research competitor Google Ads activity — Auction Insights, keyword overlap, and public ad monitoring. Triggers on 'who am I competing against on Google Ads', 'Auction Insights review', 'what keywords are my competitors bidding on', or 'competitor Google Ads research'. Google Ads-specific competitive research — for cross-platform competitive positioning use competitive-intelligence."
---

# Google Ads Competitor Research

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Understand who else is competing for the same auctions, on what terms, and how — using Google's own Auction Insights data plus available public research — to inform strategy, bidding, and creative differentiation.

## Trigger Conditions
- "Who's competing against me on Google Ads?"
- "Review my Auction Insights"
- "What keywords are competitors bidding on?"
- "Research competitor Google Ads strategy"

## Required Inputs
- Account access for Auction Insights data (impression share, overlap rate, position above rate, top-of-page rate by competitor domain)
- Known or suspected competitors, if any
- The specific campaigns/keyword themes to focus the research on (auction dynamics vary a lot by keyword theme)

## Core Capabilities

### Auction Insights Analysis
- Impression share vs. named competitors — who's actually showing up in the same auctions, not just who the business considers a competitor
- Overlap rate: how often a competitor's ad shows when yours does
- Position above rate / top-of-page rate: whether competitors are consistently outranking on the terms that matter
- Trend over time — a competitor's rising impression share signals increased investment worth monitoring

### Keyword & Category Intelligence
- Inference of competitor keyword strategy from which search themes trigger the most auction overlap
- Identifying keyword gaps: search themes with low competitor overlap may be underpriced opportunity, or may signal the term isn't converting for anyone

### Public Ad Monitoring
- Reviewing competitor ad copy, offers, and landing pages directly (manually searching relevant terms, reviewing what competitors are actively running)
- Tracking changes in competitor messaging/offers over time as a signal of what's working for them
- Differentiation analysis: where competitor messaging clusters (price, speed, guarantee) vs. where there's a clear angle gap the business can own

### Strategic Interpretation
- Translating raw overlap data into action: outbid where impression share is winnable and valuable, differentiate on message where outbidding isn't economical, avoid where competitor dominance + low differentiation makes the auction unprofitable
- Distinguishing "we're losing because of bid/budget" (fixable via `google-ads-optimization`) from "we're losing because of weaker offer/creative" (fixable via `google-ads-copywriting`/positioning)

## Workflow
1. Pull Auction Insights for the relevant campaigns/keyword themes.
2. Identify the top overlapping competitors and their trend direction (gaining or losing impression share over time).
3. Review competitor ad copy/offers/landing pages directly for the overlapping search terms.
4. Diagnose whether underperformance vs. competitors is bid-driven, budget-driven, or creative/offer-driven.
5. Recommend where to compete harder, where to differentiate, and where the auction isn't worth contesting.

## Outputs
- Auction Insights summary: top competitors, overlap rate, position/impression share trend
- Competitor ad copy/offer/landing page findings
- Differentiation opportunity map (where messaging clusters vs. where there's a gap)
- Action recommendation per competitor/keyword theme: outbid, differentiate, or deprioritize

## Rules
- Never recommend blindly outbidding a dominant competitor without checking whether the resulting CPA would be profitable at the required bid level.
- Distinguish bid-driven losses from creative/offer-driven losses before recommending a fix — they route to different specialist skills.
- Treat Auction Insights domain data as directional, not identity-confirmed — a domain shown may not map 1:1 to the brand the user expects (holding companies, multi-brand advertisers).

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-optimization` (bid/budget response to competitive pressure), `google-ads-copywriting` (differentiated messaging), `competitive-intelligence` (cross-platform competitive battlecards), `google-ads-strategy` (whether to contest a saturated auction at all).
