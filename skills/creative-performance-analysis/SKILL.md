---
name: creative-performance-analysis
description: "Diagnose why a specific ad creative is winning or losing using the generalized hook-hold-click-convert funnel, applicable across any platform. Triggers on 'why is this ad underperforming', 'diagnose my creative', or 'where in the funnel is this ad failing'. Platform-agnostic diagnostic framework — platform-specific versions (meta-ads-creative-analytics) apply this with platform-native metrics."
---

# Creative Performance Analysis

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Provide the generalized diagnostic funnel — hook, hold, click, convert — for locating exactly where a specific ad creative is failing, so the fix targets the actual problem instead of guessing.

## Trigger Conditions
- "Why is this ad underperforming"
- "Diagnose my creative performance"
- "Where in the funnel is this ad failing"

## Required Inputs
- Creative-level performance data appropriate to the platform: impressions, hook/thumbstop-style early-retention metric where available, hold/completion metric where available, CTR, CPA/conversion rate
- The angle/format/hook used, so findings map back to creative decisions
- Sufficient volume for the data to be meaningful (coordinate with `creative-testing-framework`)

## Core Capabilities

### The Universal Diagnostic Funnel
- **Hook** (did it stop the scroll/earn the first look): measured as thumbstop rate, 3-second view rate, or early CTR depending on platform and format — a video/feed-native format's most measurable early-retention proxy
- **Hold** (did it keep attention once earned): completion rate, average watch time, or scroll-depth on longer static/carousel formats
- **Click** (did it convert attention into action): CTR, the most universally available metric across every platform in this library
- **Convert** (did the click become the actual business outcome): CPA/ROAS/conversion rate — where the funnel meets the landing page/offer, no longer purely a creative-quality question

### Locating the Failure Point
- Weak hook, everything downstream unmeasurable: the fix is entirely upstream — new opening frame/line, not a downstream tweak
- Strong hook, weak hold: pacing/structure problem in the middle of the asset — fixable without touching the opening
- Strong hook and hold, weak click: the message/CTA isn't compelling enough to act on, even though attention was earned — a copy/offer problem, not an attention problem
- Strong click, weak convert: the creative did its job; the problem has moved downstream to landing page, offer terms, or audience-offer mismatch — not a creative fix at all

### Cross-Platform Metric Translation
- Recognizing that each platform names and measures these funnel stages slightly differently (Meta's ThruPlay vs. TikTok's completion rate vs. Google's view-through metrics) but the underlying diagnostic logic transfers directly
- Avoiding false comparison of raw metric values across platforms (a "good" CTR on Search is a very different number than a "good" CTR on Display) — the diagnostic funnel structure transfers, the absolute benchmarks don't

### Comparative Analysis
- Comparing only within matched test conditions (same audience/placement/budget), consistent with `creative-testing-framework`'s variable-isolation principle
- Distinguishing a sustained pattern from a novelty-driven spike, watching trend over the test's full duration rather than a single snapshot

## Workflow
1. Pull creative-level performance data for the asset(s) in question, confirming sufficient volume.
2. Walk the funnel — hook, hold, click, convert — locating the specific stage where performance drops off relative to comparable assets.
3. Map the failure point to the correct fix category: creative opening (hook), pacing/structure (hold), message/offer (click), or downstream landing page/audience fit (convert).
4. Route the fix to the appropriate skill: platform creative-strategy skill for hook/hold issues, copywriting skill for click issues, landing-page-audit-equivalent skill for convert issues.

## Outputs
- Funnel breakdown per asset (hook/hold/click/convert performance)
- Failure point diagnosis with the specific stage identified
- Fix category and routing recommendation

## Rules
- Always locate the specific funnel stage where an asset is failing before recommending a fix — a hook problem and a landing page problem can produce identical-looking CPA numbers but need completely different fixes.
- Never compare raw metric values across platforms as if they're on the same scale; compare the funnel-stage pattern, not the absolute numbers.
- Distinguish sustained underperformance from noise, per `creative-testing-framework`'s statistical discipline.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`creative-testing-framework` (statistical rigor behind this analysis), `meta-ads-creative-analytics` (platform-specific application), `google-ads-landing-page-audit` (convert-stage downstream fix), `creative-fatigue-management` (when a previously strong asset starts failing over time rather than from the start).
