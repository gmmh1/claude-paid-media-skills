---
name: tiktok-ads-audience-targeting
description: "Build TikTok audience infrastructure — Custom Audiences, Lookalikes, interest/behavior targeting, and exclusions. Triggers on 'build a TikTok lookalike audience', 'set up TikTok retargeting', 'Custom Audience from my customer list', or 'who should I target on TikTok'. Audience layer feeding tiktok-ads-campaign-builder."
---

# TikTok Ads Audience & Targeting

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build the audience infrastructure — Custom Audiences, Lookalikes, interest/behavior signals — that TikTok campaigns target against, with an emphasis on broad/automated targeting once data supports it, since TikTok's algorithm is engagement/creative-driven more than precision-targeting-driven.

## Trigger Conditions
- "Build a lookalike audience from my customers on TikTok"
- "Set up retargeting for website visitors"
- "Create a Custom Audience from my email list"
- "Who should I target on TikTok"

## Required Inputs
- First-party data available: customer lists, Pixel/Events API events, engagement data (video views, profile engagers)
- Business type (ecommerce, app, lead-gen)
- Existing campaign audience structure, if diagnosing overlap

## Core Capabilities

### Custom Audiences
- Customer list uploads (hashed email/phone) for winback, exclusion, or lookalike seed
- Website/app Custom Audiences by Pixel/Events API event (all visitors, ViewContent, AddToCart, Purchase) — coordinate with `tiktok-ads-pixel-events`
- Engagement Custom Audiences (video viewers by watch %, profile engagers) — valuable even for businesses without a mature Pixel yet, since TikTok's own engagement data is a rich first-party signal

### Lookalike Audiences
- Built from a Custom Audience seed, with the same seed-quality principle as other platforms — a Purchase-based seed outperforms a broad-visitor seed
- Percentage/size tradeoff between precision and reach

### Interest & Behavior Targeting
- Interest/behavior/hashtag-engagement targeting as the cold-prospecting fallback when no first-party seed exists yet
- TikTok's algorithm tends to reward broader targeting combined with strong creative over narrow interest-stacking — narrow manual targeting is a common overcorrection for advertisers used to more precision-oriented platforms

### Exclusions & Overlap
- Excluding recent purchasers/existing customers from acquisition audiences
- Checking overlap between concurrent ad groups targeting similar pools

## Workflow
1. Inventory available first-party data (customer lists, Pixel/Events events, engagement data).
2. Build audience architecture: retargeting segments, lookalikes from best-available seed, interest/behavior fallback for cold prospecting.
3. Recommend broad/automated targeting once conversion data supports it, rather than defaulting to narrow manual targeting.
4. Set exclusions so acquisition and retention audiences don't compete.
5. Check overlap between concurrent ad groups.
6. Hand the finished audience set to `tiktok-ads-campaign-builder`.

## Outputs
- Custom Audience architecture
- Lookalike audience recommendation with seed source
- Interest/behavior fallback targeting, if needed
- Exclusion logic
- Overlap findings

## Rules
- Never build a Lookalike from a low-quality or too-small seed without flagging reliability risk.
- Recommend broad/automated targeting over narrow interest-stacking once conversion data supports it — this is a common overcorrection mistake on TikTok specifically.
- Confirm any uploaded customer data has a valid consent/privacy basis.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`tiktok-ads-pixel-events` (event data source), `tiktok-ads-campaign-builder` (where audiences deploy), `tiktok-ads-optimization` (audience-driven performance issues).
