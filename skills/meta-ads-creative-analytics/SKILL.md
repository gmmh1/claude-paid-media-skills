---
name: meta-ads-creative-analytics
description: "Analyze which Meta ad creatives are winning or losing and why — hook rate, hold rate, CTR, and creative diagnostics. Triggers on 'analyze my Meta ad creative performance', 'which creative is winning', 'why is this ad losing', or 'creative performance report'. Data analysis layer — for fixing the creative see meta-ads-creative-strategy or meta-ads-video-reels."
---

# Meta Ads Creative Analytics

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Analyze creative-level performance data to determine which specific ads are winning, which are losing, and — critically — why, using the metrics that isolate creative quality from targeting/bidding effects.

## Trigger Conditions
- "Analyze my Meta ad creative performance"
- "Which creative is winning in my campaign"
- "Why is this specific ad underperforming"
- "Build a creative performance report"

## Required Inputs
- Creative-level performance data: CTR, thumbstop/hook rate (3-second video views ÷ impressions), hold rate (ThruPlay or 15-second view rate), CPA/ROAS per ad
- The angle/format/hook used in each ad being compared (so results map back to creative decisions, not just anonymous ad IDs)
- Sufficient spend/impression volume per ad for the data to be statistically meaningful, not noise

## Core Capabilities

### Creative Diagnostic Funnel
- Hook rate (did it stop the scroll) → Hold rate (did it keep attention) → CTR (did it drive action) → CPA/ROAS (did it convert) — diagnosing at which stage a specific ad is failing tells you what to fix
- Low hook rate: the opening 1-3 seconds/first frame isn't stopping the scroll — a `meta-ads-video-reels` hook problem
- Good hook, poor hold: the middle of the video loses interest — a pacing/structure problem
- Good hook and hold, poor CTR: message/offer isn't compelling enough to act on — a `meta-ads-copywriting` or offer problem
- Good CTR, poor CPA/ROAS: the ad is doing its job; the problem has moved downstream to landing page or audience quality

### Winner/Loser Identification
- Comparing ads within the same test cohort (same audience/placement/budget conditions) rather than across dissimilar conditions, which confounds the comparison
- Statistical sufficiency check before declaring a winner — a 2x CTR difference on 200 impressions each is noise, not a finding
- Distinguishing a true angle/format winner from a novelty effect that will fatigue quickly (watch the first-week trend, not just a single snapshot)

### Creative Diversity Assessment
- Auditing whether an ad account is over-reliant on one creative angle/format, which increases fatigue risk and limits the algorithm's ability to find new pockets of audience response
- Recommending a minimum viable creative refresh cadence based on observed fatigue patterns in the account's own data, not a generic industry rule of thumb

### Reporting
- Presenting findings by angle/format, not just by anonymous ad ID, so conclusions are actionable for the next creative brief
- Feeding scaling decisions: which winners deserve budget increase, which should be paused, which need format iteration rather than a flat kill

## Workflow
1. Pull creative-level performance data for the comparison set, confirming sufficient spend/impressions per ad.
2. Walk the diagnostic funnel (hook → hold → CTR → CPA/ROAS) for each underperforming ad to locate the specific failure point.
3. Compare only within matched test conditions; flag any comparison confounded by different audiences/placements/budgets.
4. Identify true winners (sustained performance) vs. novelty spikes.
5. Assess overall creative diversity and fatigue risk in the account.
6. Translate findings into a specific next-creative-brief recommendation, not just a scoreboard.

## Outputs
- Creative performance breakdown labeled by angle/format
- Diagnostic funnel finding per underperforming ad (where it's failing)
- Winner/loser verdict with statistical confidence noted
- Creative diversity/fatigue risk assessment
- Recommendation for the next creative brief

## Rules
- Never declare a creative winner/loser without checking for sufficient spend/impression volume first.
- Always locate the specific funnel stage where an ad is failing before recommending a fix — a hook problem and a landing page problem look identical in raw CPA data but need completely different fixes.
- Compare creatives only within matched test conditions (same audience/placement/budget), not across confounded setups.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-creative-strategy` (angle/format fixes), `meta-ads-video-reels` (hook/pacing fixes), `meta-ads-copywriting` (message/offer fixes), `meta-ads-optimization` (broader campaign-level diagnosis this feeds into).
