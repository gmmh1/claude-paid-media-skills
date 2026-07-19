---
name: creative-fatigue-management
description: "Detect creative fatigue signals and plan refresh cadence across any advertising platform. Triggers on 'my ad performance is declining', 'creative fatigue', 'when should I refresh my ads', or 'frequency is rising and results are dropping'. Platform-agnostic fatigue detection — platform-specific optimization skills apply this with their own metrics and typical fatigue timelines."
---

# Creative Fatigue Management

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Detect the signal pattern that distinguishes genuine creative fatigue (a previously-working asset wearing out) from other causes of declining performance, and plan refresh cadence proactively rather than reactively across any platform.

## Trigger Conditions
- "My ad performance is declining over time"
- "Is this creative fatigue"
- "When should I refresh my ads"
- "Frequency is rising and results are dropping"

## Required Inputs
- Performance trend over time for the specific asset(s) in question (not just a current snapshot)
- Frequency/reach data if available (how many times the average person in the audience has seen this ad)
- How long the asset has been running and audience size it's serving against

## Core Capabilities

### The Fatigue Signature
- The defining pattern: an asset that performed well initially shows declining CTR and/or rising CPM/CPA over time on a stable audience and stable bid strategy — distinct from an asset that never performed well (which is a weak-angle problem, not fatigue, and needs a different fix per `creative-performance-analysis`)
- Rising frequency alongside declining CTR is the clearest confirming signal when available — the same people seeing the ad repeatedly with diminishing response

### Fatigue Speed Varies by Platform and Audience Size
- Smaller/narrower audiences fatigue faster than broad ones, since the same people are being reached more often at a given spend level
- Platforms differ in typical fatigue speed for reasons tied to content consumption patterns — short-form, high-frequency-consumption platforms (TikTok especially, Meta Reels/Stories to a lesser degree) tend to fatigue faster than platforms with lower per-user session frequency (Google Search, where the same query doesn't repeat as often)
- Setting refresh-cadence expectations calibrated to the specific platform and audience size rather than a one-size-fits-all timeline

### Distinguishing Fatigue From Other Causes
- Seasonal/market demand shifts can produce a similar-looking decline without any actual creative fatigue — check whether the decline correlates with a broader account/category trend before attributing it to the specific asset
- Auction competitiveness changes (new competitors entering, seasonal CPM increases) can also mimic fatigue's cost-metric symptoms — cross-check against account-wide trends, not just the one asset
- A genuine offer/landing page problem can also produce declining conversion metrics that look creative-related but aren't — rule out downstream causes before concluding it's fatigue

### Proactive Refresh Planning
- Building a refresh cadence into the campaign plan from the start (a rotating creative testing pipeline) rather than waiting for visible decline, especially on fast-fatigue platforms
- Maintaining a bench of tested-but-not-yet-deployed variants so a fatiguing asset can be swapped immediately rather than triggering a scramble to produce new creative reactively
- Refreshing only the fatiguing element (e.g., a new hook on an otherwise-working structure) when the underlying angle is still sound, rather than discarding a proven angle entirely

## Workflow
1. Pull the performance trend over time for the asset(s) in question, plus frequency data if available.
2. Check for the fatigue signature: previously-working asset, declining CTR/rising CPM-CPA on stable audience/bid conditions.
3. Cross-check against account-wide and seasonal trends to rule out non-creative causes.
4. If genuine fatigue is confirmed, recommend refresh — new hook/variant on the same proven angle if the angle itself is still sound, or a new angle if performance decline is severe.
5. Recommend building a proactive refresh cadence and creative bench going forward, calibrated to the platform's typical fatigue speed and the audience size being served.

## Outputs
- Fatigue signature assessment (confirmed fatigue vs. other cause)
- Cross-check findings against account-wide/seasonal trends
- Refresh recommendation (targeted element refresh vs. full new angle)
- Proactive refresh cadence recommendation calibrated to platform/audience size

## Rules
- Never label declining performance as "fatigue" without checking account-wide/seasonal trends and ruling out non-creative causes first.
- Calibrate refresh cadence expectations to the specific platform and audience size — a one-size-fits-all timeline will be wrong in one direction or another.
- Recommend maintaining a tested creative bench proactively on fast-fatigue platforms rather than reactive scrambling after decline is already visible.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`creative-performance-analysis` (distinguishing fatigue from a never-worked asset), `meta-ads-optimization`, `tiktok-ads-optimization`, `google-ads-optimization` (platform-specific fatigue handling), `creative-testing-framework` (maintaining the refresh pipeline).
