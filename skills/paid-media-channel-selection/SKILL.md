---
name: paid-media-channel-selection
description: "Decide which paid advertising platform(s) fit a business — comparing Google, Meta, LinkedIn, TikTok, Amazon and others head-to-head. Triggers on 'which platform should I advertise on', 'Google Ads vs Meta Ads for my business', 'should I be on TikTok or Instagram', or 'where should I spend my ad budget'. Cross-platform decision layer — hands off to the chosen platform's own -strategy skill for depth."
---

# Paid Media Channel Selection

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Compare platforms head-to-head against a specific business's goals, audience, creative capacity, and economics — the decision that has to happen before any single platform's own strategy skill (`google-ads-strategy`, `meta-ads-strategy`, etc.) can add value, since those assume the platform is already chosen.

## Trigger Conditions
- "Which platform should I advertise on?"
- "Google Ads vs. Meta Ads for my business"
- "Should I be on TikTok or Instagram?"
- "Where should I spend my ad budget?"

## Required Inputs
- Business type, product/service, average order value/deal size
- Primary goal and funnel stage
- Audience: B2C vs. B2B, and if B2B, deal size/sales cycle (a strong LinkedIn signal)
- Existing demand signal: is there active search demand (Google-favoring) or does interest need to be created (Meta/TikTok-favoring)
- Creative production capacity, especially for native short-form video (a hard TikTok gate) vs. static/moderate video (Meta) vs. minimal creative need (Google Search)
- Budget

## Core Capabilities

### Platform Comparison Framework
- **Google Search**: best when active search demand already exists and purchase/lead intent is expressed through queries — weak when the category has no search volume yet
- **Google Shopping/PMax**: strong default inclusion for any ecommerce business with a product catalog
- **Meta**: strong for visually-led products/services with at least moderate creative capacity, strong first-party data reuse (retargeting, lookalikes) once running
- **LinkedIn**: justified only when B2B deal economics can absorb its premium CPC — the strongest platform for precise professional/ABM targeting, weakest for low-ACV or B2C
- **TikTok**: strongest ROI-per-dollar-of-creative-effort for businesses that can produce or source genuinely native short-form video; a poor fit for businesses that will only supply repurposed traditional ad assets
- **Amazon/retail media**: essentially mandatory consideration for any business selling through Amazon or a major retail marketplace, largely independent of the other four channels' fit

### Multi-Channel Sequencing
- Most viable businesses end up on 2-3 channels playing different funnel roles rather than one channel doing everything — e.g., Meta/TikTok for demand creation, Google Search/Shopping for intent capture, LinkedIn for B2B ABM overlay
- Recommending a phased rollout (prove one channel first, then expand) for constrained budgets rather than thin simultaneous coverage across all channels

### Decision Output
- A ranked recommendation (not just a list) with the top 1-2 channels clearly prioritized and the rationale tied to the specific business inputs, not generic platform strengths
- Explicit "don't bother yet" calls for channels that don't fit current constraints (e.g., "skip LinkedIn until deal size or ABM strategy justifies the CPC")

## Workflow
1. Gather business type, goal, audience (B2C/B2B), demand signal, creative capacity, and budget.
2. Score each candidate platform against these inputs using the comparison framework.
3. Produce a ranked recommendation with the top 1-2 channels prioritized and clear rationale.
4. Recommend sequencing/phasing if budget is constrained rather than thin simultaneous coverage.
5. Hand off to the chosen platform's own `-strategy` skill (`google-ads-strategy`, `meta-ads-strategy`, `linkedin-ads-strategy`, `tiktok-ads-strategy`) for execution-level planning.

## Outputs
- Ranked channel recommendation with rationale per platform
- Explicit deprioritization calls for poor-fit channels
- Sequencing/phasing recommendation if budget-constrained
- Handoff to the chosen platform's strategy skill

## Rules
- Never recommend a channel purely because it's currently popular/trendy — tie every recommendation to the specific business's goal, audience, creative capacity, and economics.
- Prefer concentrated investment in 1-2 well-executed channels over thin coverage across many for constrained budgets.
- Be willing to say "not yet" about a channel plainly, especially LinkedIn (deal-economics gate) and TikTok (creative-capacity gate).

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`paid-media-budget-allocation` (once channels are chosen, how to split spend), `google-ads-strategy`, `meta-ads-strategy`, `linkedin-ads-strategy`, `tiktok-ads-strategy` (platform-specific depth after this decision).
