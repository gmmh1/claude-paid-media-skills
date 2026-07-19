---
name: meta-ads-library-intelligence
description: "Research competitor Meta advertising using the public Meta Ad Library. Triggers on 'research competitor Facebook ads', 'what ads is [competitor] running', 'Meta Ad Library search', or 'competitor creative research on Meta'. Meta-specific competitive research — for cross-platform competitive positioning use competitive-intelligence."
---

# Meta Ads Library Intelligence

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Use the public Meta Ad Library (which shows every active ad any Page is running, including political/regulated categories, without needing account access) to research competitor creative, offers, messaging, and campaign patterns.

## Trigger Conditions
- "Research what Facebook/Instagram ads my competitor is running"
- "Search Meta Ad Library for [competitor/keyword]"
- "Competitor creative research on Meta"

## Required Inputs
- Competitor name(s)/Page(s), or a keyword/category to search broadly if specific competitors aren't yet identified
- What's being researched: creative angles, offers, format mix, messaging, or campaign cadence/volume

## Core Capabilities

### Ad Library Search
- Searching by advertiser (Page name) to see everything currently active from a known competitor
- Searching by keyword/topic to discover advertisers in a category not yet on the radar
- Filtering by platform (Facebook, Instagram, Messenger, Audience Network) and region where available

### Creative Pattern Analysis
- Format mix: is the competitor leaning video/Reels, static, carousel, collection — signals where they're finding traction
- Messaging/offer patterns across their active set: recurring angles, pricing/promotion cadence, seasonal shifts
- Ad longevity as a performance proxy: an ad that's been running for weeks/months is very likely a proven winner (advertisers pull underperforming ads quickly), while a large batch of very new ads suggests active testing

### Volume & Cadence Signals
- Number of concurrent active ads as a rough spend/investment signal — a competitor running 40 concurrent ads is investing very differently than one running 3
- Tracking changes over time (checking back periodically) to catch new offers, seasonal campaigns, or strategy shifts as they happen

### Strategic Interpretation
- Translating raw ad examples into actionable findings: messaging gaps competitors aren't claiming, formats they're underusing, offer structures worth testing or differentiating against
- Distinguishing what's actually working (long-running ads) from what's being tested and likely failing (short-lived ads) — don't treat every example found as a proven tactic

## Workflow
1. Identify competitors/Pages to research, or search by category keyword if starting cold.
2. Pull all active ads and note format mix, messaging angles, and offers.
3. Flag long-running ads as likely winners; note high-volume new-ad batches as active testing.
4. Track cadence/volume as an investment-level signal.
5. Synthesize findings into specific angle, format, or offer opportunities — both what to emulate and what gap to differentiate into.

## Outputs
- Competitor creative summary (format mix, messaging angles, offers)
- Likely-winner ads (long-running) vs. active-test ads (short-lived), flagged separately
- Volume/cadence signal per competitor
- Differentiation opportunity recommendations

## Rules
- Never present every ad found as a proven winner — explicitly flag longevity as the signal of likely performance, and treat short-lived ads as unproven.
- Frame findings as directional intelligence, not certainty — the Ad Library doesn't expose performance metrics, only creative and run-time.
- Recheck periodically rather than treating a single snapshot as a permanent picture of competitor strategy.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-creative-strategy` (turning findings into new angles), `competitive-intelligence` (cross-platform battlecards), `meta-ads-audit` (applying findings to an existing account's gaps).
