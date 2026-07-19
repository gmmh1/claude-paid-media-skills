---
name: paid-media-retargeting
description: "Sequence retargeting and cart-recovery across multiple platforms as one coordinated system rather than siloed per-platform pools. Triggers on 'coordinate my retargeting across platforms', 'cart abandonment strategy across channels', 'cross-platform frequency management', or 'my retargeting ads are everywhere at once'. Cross-channel orchestration above google-ads-remarketing, meta-ads-audience-targeting, and tiktok-ads-audience-targeting."
---

# Paid Media Retargeting (Cross-Channel)

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Coordinate retargeting and cart/lead recovery across every platform a business runs, so the same prospect isn't hit simultaneously by uncoordinated retargeting from Google, Meta, and TikTok at once — a common, avoidable failure mode once a business runs more than one channel.

## Trigger Conditions
- "Coordinate my retargeting across platforms"
- "Build a cart abandonment strategy across channels"
- "Manage frequency across my ad platforms"
- "My retargeting feels like it's everywhere at once"

## Required Inputs
- Which platforms are running retargeting (Google Display/RLSA, Meta, TikTok, LinkedIn if applicable)
- Funnel stages/segments being retargeted (all visitors, product viewers, cart abandoners, leads)
- Recovery sequence timing already in place, if any (email/SMS as well as ads)

## Core Capabilities

### Sequenced, Not Simultaneous, Coverage
- Assigning different platforms to different time windows or funnel micro-stages rather than letting every platform's retargeting pool fire simultaneously at the same abandoned-cart user — e.g., email/SMS immediate (15min-1hr), Meta/TikTok retargeting picking up hours 1-24, Google Display/RLSA picking up days 2-7 for users who haven't converted yet
- This reduces both ad fatigue/annoyance and wasted overlapping spend, versus each platform independently trying to "win" the same conversion at the same time

### Frequency Budget Across Channels
- Setting a mental (or literal, where tooling allows) total cross-channel frequency cap per user, since each platform's individual frequency cap only governs its own delivery — a user can still be over-exposed in aggregate even with reasonable per-platform caps
- Prioritizing the channel most likely to convert a given segment (e.g., dynamic product retargeting on the platform where the user showed the strongest engagement) rather than running full-intensity retargeting on every channel simultaneously for every segment

### Cart & Lead Recovery Sequencing
- Coordinating owned channels (email, SMS) with paid retargeting as one sequence, not separate efforts — owned channels are typically cheaper and should fire first, with paid retargeting reinforcing for users who don't respond
- Segment-specific recovery: cart abandoners (high-intent, short recovery window) vs. general browsers (lower intent, longer/lighter-touch recovery) getting different sequences

### Exclusion Coordination
- Ensuring purchase/conversion events suppress retargeting across all platforms promptly, not just the platform where the conversion happened — a delayed cross-platform suppression means continuing to retarget someone who already converted, wasting spend and irritating the customer
- Coordinating this typically requires a shared event source (GA4, CRM, or a tag management layer) feeding all platforms' pixels/audiences consistently

## Workflow
1. Inventory which platforms are running retargeting and their current audience/segment definitions.
2. Design a sequenced timeline assigning different channels to different recovery windows/funnel micro-stages.
3. Set a cross-channel frequency budget per user, prioritizing the highest-converting channel per segment.
4. Coordinate owned-channel (email/SMS) and paid retargeting into one sequence.
5. Verify conversion events suppress retargeting across all platforms promptly via a shared event source.

## Outputs
- Cross-channel retargeting sequence/timeline by funnel stage
- Cross-channel frequency budget recommendation
- Owned + paid recovery sequence
- Conversion-suppression verification plan across all platforms

## Rules
- Never let multiple platforms' retargeting pools fire at full intensity simultaneously for the same segment without a sequencing plan — this wastes spend and degrades the prospect's experience.
- Always verify conversion events suppress retargeting across every platform, not just the one where the conversion occurred.
- Prioritize owned channels (email/SMS) before paid retargeting in the recovery sequence where both are available — they're typically cheaper and faster.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-remarketing`, `meta-ads-audience-targeting`, `tiktok-ads-audience-targeting` (per-platform mechanics this coordinates), `google-tag-manager`/`google-analytics-ga4` (shared event source for suppression).
