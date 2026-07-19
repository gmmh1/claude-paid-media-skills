---
name: paid-media-budget-allocation
description: "Split a paid media budget across multiple platforms (Google, Meta, LinkedIn, TikTok, Amazon) and funnel stages. Triggers on 'allocate my paid media budget', 'how much should I spend on each platform', 'rebalance my ad spend across channels', or 'cross-channel budget planning'. Cross-platform allocation — for budget/bid decisions within one platform, use that platform's -optimization skill."
---

# Paid Media Budget Allocation

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Split a finite paid media budget across multiple platforms and funnel stages based on channel fit, funnel role, and observed performance — not equal division or gut feel.

## Trigger Conditions
- "Allocate my paid media budget across platforms"
- "How much should I spend on Google vs. Meta vs. TikTok"
- "Rebalance my ad spend across channels"
- "Cross-channel budget planning"

## Required Inputs
- Total available budget
- Channels already selected (from `paid-media-channel-selection`) or already in use, with performance history if available
- Funnel role each channel is meant to play (awareness/demand-creation vs. intent-capture vs. retention)
- Minimum viable spend thresholds per platform to exit learning phases meaningfully (each platform skill's own guidance applies here — e.g., Meta/TikTok Learning Phase conversion thresholds, Google Smart Bidding data requirements)

## Core Capabilities

### Allocation by Funnel Role
- Demand-creation channels (Meta, TikTok, Display, Demand Gen) typically justified by their role feeding intent-capture channels, not judged purely on their own last-click ROAS
- Intent-capture channels (Google Search, Shopping) typically deserve first-priority funding since they're converting existing demand most efficiently
- Retention/retargeting spend (a slice within each platform, not a separate line item) should be funded before incremental cold-prospecting expansion on any channel, since it's typically the highest-ROI spend available

### Minimum Viable Spend Thresholds
- Spreading budget too thin across too many channels means no single channel ever accumulates enough conversion data to optimize well — recommending concentration in fewer channels at meaningful spend over thin coverage everywhere
- Each platform's own learning/data thresholds (flagged in `meta-ads-optimization`, `google-ads-optimization`, etc.) should inform the minimum allocation a channel needs to be worth running at all

### Performance-Informed Rebalancing
- For an account with performance history, shifting budget toward channels/campaigns with proven, sustainable CAC/ROAS — while distinguishing genuine channel performance differences from measurement/attribution artifacts (a channel that looks weak on last-click may be underappreciated for its assist role)
- Testing budget vs. scaling budget as separate pools — a portion reserved for testing new channels/campaigns even while scaling proven ones

### Attribution Awareness
- Cross-channel attribution is inherently imperfect (each platform's own reporting tends to over-credit itself) — use a blended view (GA4, `looker-studio-reporting`, or a marketing mix approach) rather than summing each platform's self-reported conversions, which typically overstates total performance

## Workflow
1. Confirm total budget, channels in use/selected, and their intended funnel roles.
2. Check each channel against its minimum viable spend threshold; deprioritize channels that can't be funded meaningfully.
3. Allocate: retention/retargeting first, then intent-capture, then demand-creation, then a smaller testing pool for new channels/campaigns.
4. For accounts with performance history, rebalance based on genuine (attribution-aware) performance differences, not raw self-reported platform numbers.
5. Revisit allocation on a defined cadence rather than treating it as a one-time decision.

## Outputs
- Budget split by channel and funnel role
- Minimum-viable-spend deprioritization calls, if applicable
- Testing budget allocation
- Attribution caveat/blended-view recommendation for judging cross-channel performance

## Rules
- Never split budget so thin across channels that none can exit its learning/optimization phase meaningfully.
- Fund retention/retargeting spend before incremental cold-prospecting expansion.
- Don't sum each platform's self-reported conversions as the total performance picture — flag the over-crediting problem and recommend a blended measurement view.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`paid-media-channel-selection` (upstream channel decision), `looker-studio-reporting` (blended cross-channel reporting), each platform's `-optimization` skill (within-channel budget/bid tuning).
