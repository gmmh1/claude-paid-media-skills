---
name: google-ads-optimization
description: "Improve a live, underperforming Google Ads campaign. Triggers on 'optimize my Google Ads', 'why is my CPA/ROAS bad', 'improve Quality Score', 'my CTR is dropping', or 'my Google Ads spend is wasted'. Works on existing campaigns with performance data — for a new campaign use google-ads-campaign-builder, for a full health check with no specific complaint use google-ads-audit."
---

# Google Ads Optimization

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Diagnose and fix underperformance in a live Google Ads campaign using its actual performance data — CTR, CPC, CPA, ROAS, Quality Score, and search term reports.

## Trigger Conditions
- "Optimize my Google Ads campaign"
- "Why is my CPA/ROAS bad"
- "My CTR is dropping"
- "Improve my Quality Score"

## Required Inputs
- Access to or export of: campaign performance (CTR, CPC, CPA/ROAS, impressions, conversions), search terms report, Quality Score by keyword
- The specific symptom the user is reacting to (rising CPA, falling CTR, low conversion volume, budget not spending)
- Time window being analyzed and whether anything changed recently (budget, bid strategy, landing page, seasonality)

## Core Capabilities

### Quality Score Diagnosis
- Three components: expected CTR, ad relevance, landing page experience — diagnose which one is actually low rather than treating Quality Score as one lever
- Low expected CTR → ad copy/keyword mismatch (route to `google-ads-copywriting`)
- Low landing page experience → route to `google-ads-landing-page-audit`
- Low ad relevance → ad group too broad, needs tighter keyword-to-ad themes

### Search Terms Analysis
- Identify irrelevant/low-intent search terms consuming budget → build negative keyword list
- Identify high-performing search terms not yet targeted as exact match → new keyword opportunities
- Distinguish broad match "discovery" spend (expected, monitor) from broad match "waste" (needs negatives)

### Bidding & Budget
- Diagnose whether Smart Bidding has enough conversion volume to work (roughly 30+ conversions/month per campaign as a rough threshold) — if not, recommend consolidating campaigns or switching strategy temporarily
- Budget-limited vs. bid-limited campaigns — different fixes for each
- Impression share lost to budget vs. lost to rank, and what each implies

### Performance Breakdown Analysis
- Device, location, time-of-day, audience segment performance splits to find where spend is/isn't working
- Ad group-level and keyword-level CPA variance to find which parts of the account are dragging the average

### Creative Fatigue
- Declining CTR on previously strong ads/keywords over time → signal to refresh copy (route to `google-ads-copywriting`), not just raise bids

## Workflow
1. Get the specific symptom and pull the relevant data (performance trends, search terms, Quality Score).
2. Diagnose root cause: is it Quality Score, search term waste, bid strategy mismatch, budget constraint, or creative fatigue?
3. Segment performance by device/location/time/audience to localize the problem, not just treat account-level averages.
4. Recommend the fix, routing to `google-ads-copywriting` or `google-ads-landing-page-audit` if the root cause is outside pure account mechanics.
5. Propose a specific, testable change (not "monitor more") with an expected timeframe to see results.

## Outputs
- Root cause diagnosis with supporting data points
- Prioritized fix list (highest expected impact first)
- Negative keyword additions, if search term waste was found
- Bid/budget strategy recommendation
- Expected timeframe before results are evaluable (bid strategy changes need a learning period, not a same-day verdict)

## Rules
- Never recommend "just raise the budget" or "just improve the ad" without root-causing the actual metric that's underperforming.
- Don't judge a bid strategy change within its learning period (typically ~1-2 weeks) — flag that timeframe explicitly so the user doesn't panic-revert too early.
- Always check search terms before assuming targeting is fine — irrelevant broad match traffic is the most common silent budget leak.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-audit` (broader health check when there's no specific symptom yet), `google-ads-copywriting`, `google-ads-landing-page-audit`, `google-ads-measurement` (if tracking itself is suspect), `google-ads-reporting` (to communicate findings).
