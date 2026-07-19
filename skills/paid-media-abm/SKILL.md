---
name: paid-media-abm
description: "Coordinate Account-Based Marketing across multiple paid channels (LinkedIn, Display/Meta retargeting, Google) as one program targeting the same account list. Triggers on 'cross-channel ABM program', 'coordinate ABM across LinkedIn and Google', or 'multi-touch account-based advertising strategy'. Cross-platform orchestration layer above linkedin-ads-abm."
---

# Paid Media ABM (Cross-Channel)

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Coordinate Account-Based Marketing across multiple paid channels — LinkedIn (primary precision-targeting channel), Display/programmatic retargeting, and Google — as one program hitting the same target accounts with consistent, sequenced messaging, rather than running ABM as a LinkedIn-only tactic.

## Trigger Conditions
- "Build a cross-channel ABM program"
- "Coordinate ABM across LinkedIn and Google/Display"
- "Multi-touch account-based advertising strategy for our target accounts"

## Required Inputs
- Target account list (tiered, ideally already developed via `linkedin-ads-abm`)
- Buying committee role mapping for the product/category
- Which channels are available for account-level or company-list targeting (LinkedIn Matched Audiences is the most precise; Google/Meta support company-list-informed retargeting with less precision)
- Sales alignment status

## Core Capabilities

### Channel Roles in Cross-Channel ABM
- LinkedIn as the precision-targeting anchor — the only channel in this library with reliable job-title/function/seniority + company-list targeting, carrying the bulk of the "reach the right person" job
- Display/programmatic retargeting as the "stay visible" layer once target-account individuals have been reached once via LinkedIn or organic touchpoints, reinforcing awareness without needing the same targeting precision
- Google Search as the "capture demand" layer — target accounts researching relevant solutions will search regardless of channel, so branded/category search coverage ensures the program captures self-directed research from the same accounts

### Multi-Touch Sequencing
- Sequencing touches across channels rather than simultaneous blanket coverage: LinkedIn awareness/thought-leadership content first, retargeting reinforcement second, Search capture running continuously underneath both
- Consistent messaging/offer across channels for the same account tier — fragmented, channel-inconsistent messaging undermines the coordinated feel that makes ABM effective

### Measurement Across Channels
- Account-level engagement tracked across channels (not just per-platform), requiring either a shared tagging convention or CRM-level rollup of engagement signals by account
- Pipeline influence as the ultimate cross-channel ABM measure, since no single platform's native reporting captures the full multi-touch picture

### Sales Alignment
- Coordinating campaign cadence with sales outreach timing across the whole program, not just the LinkedIn component
- Feeding cross-channel engagement signals back to sales as account-prioritization input

## Workflow
1. Confirm or build the target account list and buying committee map (route to `linkedin-ads-abm` if not yet done).
2. Assign channel roles: LinkedIn for precision reach, Display/retargeting for reinforcement, Search for demand capture.
3. Sequence touches across channels with consistent messaging per account tier.
4. Set up cross-channel measurement (shared tagging/CRM rollup) since no single platform captures the full picture.
5. Coordinate cadence and signal-sharing with sales across the whole program.

## Outputs
- Cross-channel role assignment (which channel does what job)
- Multi-touch sequencing plan
- Consistent messaging brief across channels by account tier
- Cross-channel measurement approach
- Sales alignment recommendation

## Rules
- Never run cross-channel ABM with inconsistent messaging/offers between channels for the same account tier — this undermines the coordinated experience that justifies the added complexity.
- Never rely on a single platform's native reporting as the full measurement picture for a cross-channel program — set up shared tagging or CRM-level rollup.
- Keep LinkedIn as the precision-targeting anchor; don't expect Display/Google targeting to match its account-level precision.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`linkedin-ads-abm` (foundation this builds on), `google-ads-remarketing`, `meta-ads-audience-targeting` (retargeting layer), `paid-media-retargeting` (broader cross-channel retargeting principles).
