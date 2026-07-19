---
name: meta-ads-optimization
description: "Improve a live, underperforming Meta Ads campaign. Triggers on 'optimize my Meta Ads', 'why is my Facebook CPA/ROAS bad', 'my Meta campaign is stuck in learning', 'CPM is rising', or 'my Meta ads are fatigued'. Works on existing campaigns with performance data — for a new campaign use meta-ads-campaign-builder, for a full health check use meta-ads-audit."
---

# Meta Ads Optimization

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Diagnose and fix underperformance in a live Meta campaign using its actual performance data — CPM, CTR, CPA/ROAS, frequency, and the Learning Phase status that governs whether the algorithm even has stable footing yet.

## Trigger Conditions
- "Optimize my Meta/Facebook Ads campaign"
- "Why is my CPA/ROAS bad"
- "My campaign is stuck in Learning Phase"
- "CPM is rising / my ads are fatigued"

## Required Inputs
- Campaign performance data (CPM, CTR, CPA/ROAS, frequency, Learning Phase status) for the relevant window
- Recent account changes (new creative, audience/budget edits, objective changes) — frequent ad set edits reset the Learning Phase, a common self-inflicted cause of instability
- The specific symptom driving the request

## Core Capabilities

### Learning Phase Diagnosis
- Ad sets need roughly 50 optimization events within a 7-day window to exit Learning Phase efficiently — thin-budget or thin-conversion accounts get stuck here, with unstable, expensive delivery as the visible symptom
- Significant edits (budget, audience, creative) reset Learning Phase — diagnosing "my campaign got worse" often traces back to an edit that reset learning rather than a genuine performance decline
- Fix options: consolidate ad sets to concentrate conversion volume, extend the evaluation window before judging results, or accept a broader Advantage+ audience to reach the volume threshold faster

### Frequency & Creative Fatigue
- Rising frequency with declining CTR/rising CPM on a stable audience signals creative fatigue — the fix is new creative variants, not more budget or bid adjustments
- Distinguishing fatigue (was working, now declining) from a fundamentally weak angle (never worked) — the former needs refresh, the latter needs a new angle from `meta-ads-creative-strategy`

### Cost Metric Diagnosis
- Rising CPM: broader market/seasonal auction pressure (less controllable) vs. narrow/overlapping audience competing against itself (fixable via `meta-ads-audience-targeting`)
- Low CTR: creative/hook weakness, or audience-creative mismatch
- High CPA despite decent CTR: landing page/offer/checkout friction, or a conversion event mismatched to actual purchase intent (e.g., optimizing toward AddToCart when Purchase is the real goal)

### Budget & Bid Strategy
- Diagnosing budget-limited vs. delivery-limited campaigns
- Advantage Campaign Budget reallocation behavior — understanding that Meta will naturally shift spend toward the best-performing ad set, which can starve a legitimately promising but newer ad set before it gets a fair evaluation window

### Audience & Placement Breakdown
- Performance breakdowns by placement (Feed vs. Reels vs. Stories vs. Audience Network) and demographic to localize where spend is/isn't working
- Excluding consistently poor placements rather than letting Advantage+ placements continue serving them uniformly, when a clear pattern exists

## Workflow
1. Get the specific symptom and pull performance data plus Learning Phase status.
2. Check for recent account edits that may have reset learning before assuming a genuine performance decline.
3. Diagnose root cause: Learning Phase instability, creative fatigue, audience overlap/saturation, or landing page/offer friction.
4. Segment performance by placement/demographic to localize the issue.
5. Recommend the specific fix, routing to `meta-ads-creative-strategy` (fatigue/weak angle), `meta-ads-audience-targeting` (overlap/saturation), or landing page work as appropriate.
6. Set a realistic evaluation window before judging the fix — Learning Phase and algorithm re-stabilization both take time.

## Outputs
- Root cause diagnosis with supporting data
- Learning Phase status and whether recent edits are a contributing factor
- Prioritized fix list
- Placement/demographic breakdown findings
- Expected evaluation timeframe before re-judging results

## Rules
- Never diagnose "the campaign got worse" without first checking for a recent edit that reset Learning Phase.
- Distinguish creative fatigue from a fundamentally weak angle before recommending a fix — they need different responses.
- Don't recommend frequent ad set edits as a troubleshooting tactic; each edit risks resetting learning and compounding instability.
- Always check conversion event alignment (optimizing toward the actual purchase-intent event, not a proxy) before concluding the audience/creative is the problem.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-audit` (broader health check when there's no specific symptom yet), `meta-ads-creative-strategy` and `meta-ads-video-reels` (fatigue/weak-angle fixes), `meta-ads-audience-targeting` (overlap/saturation fixes), `meta-ads-pixel-capi` (if tracking itself is suspect), `meta-ads-creative-analytics` (deeper creative performance data).
