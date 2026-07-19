---
name: paid-media-client-services
description: "Package multi-channel paid media management into a sellable agency service — cross-platform proposals, pricing, and onboarding. Triggers on 'how do I sell full-service paid media management', 'price a multi-channel ad retainer', 'write a proposal covering Google and Meta and TikTok', or 'build my agency's service packages'. Cross-platform business layer above each platform's own -client-services skill."
---

# Paid Media Client Services (Cross-Channel)

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Package multi-channel paid media management into a coherent agency service — pricing, proposals, and onboarding for clients who need Google, Meta, LinkedIn, and/or TikTok managed as one program, not four separate disconnected engagements.

## Trigger Conditions
- "How do I sell full-service paid media management?"
- "Price a multi-channel ad retainer"
- "Write a proposal covering Google, Meta, and TikTok"
- "Build my agency's service package tiers"

## Required Inputs
- Target client profile and which channels are actually relevant to them (route to `paid-media-channel-selection` if unclear)
- Service tier structure the agency wants to offer (single-channel, multi-channel bundle, full-service)
- Pricing model and whether it varies by channel within one client (common, since Google/Meta/LinkedIn/TikTok each have different cost/complexity profiles)

## Core Capabilities

### Service Packaging
- Tiered offerings: single-channel management, a bundled 2-3 channel package, or full-service across everything relevant to the client — packaging as discrete, clearly-scoped tiers rather than infinitely customized one-offs, which are harder to price and deliver consistently
- Bundling logic: which channels naturally pair (e.g., Meta + Google as a common ecommerce bundle, LinkedIn + a retargeting layer as a common B2B bundle) rather than arbitrary bundling

### Cross-Channel Pricing
- Pricing that reflects each channel's real management complexity and cost profile rather than a flat per-channel rate — LinkedIn ABM work, for instance, is more labor-intensive per dollar of spend than a mature, largely-automated Google Shopping account
- Volume/bundle discount logic for multi-channel engagements, balanced against the reality that managing four channels well is more total work than managing one, not proportionally less

### Proposal Structure
- Leading with the cross-channel strategy (`paid-media-channel-selection` output) rather than a menu of platform capabilities — the client is buying a coordinated program, and the proposal should read that way
- Explicit reporting structure showing both per-channel performance and the blended cross-channel view (coordinate with `looker-studio-reporting` and `paid-media-budget-allocation`)

### Onboarding for Multi-Channel Clients
- A single unified discovery process covering all channels at once (goals, ICP/audience, budget, tracking status, creative capacity) rather than repeating platform-specific onboarding per channel
- Access checklist spanning every platform's Business Manager/Campaign Manager/Business Center equivalent
- Setting expectations that different channels will show results on different timelines (Google Search often fastest, TikTok/Meta creative-testing-dependent, LinkedIn B2B slowest) — a client judging all channels on the same timeline will misjudge some of them

### Team & Delivery Structure
- Staffing implications of multi-channel delivery — does the agency have (or need) channel specialists, or is one generalist expected to run everything, which affects both service quality and realistic account capacity
- Recommending against overcommitting to channels the agency/freelancer doesn't have genuine expertise in, even if the client would pay for it — quality dilution across channels erodes the value of the whole engagement

## Workflow
1. Clarify target client profile and determine relevant channels via `paid-media-channel-selection` if not already decided.
2. Recommend service tier and channel bundling logic.
3. Price reflecting true per-channel complexity, with bundle logic that accounts for genuine multi-channel workload.
4. Draft a cross-channel-first proposal (strategy-led, not a platform capability menu).
5. Build unified onboarding covering all channels in one process.
6. Set channel-specific timeline expectations during onboarding.
7. Flag any channel the agency/freelancer lacks genuine expertise in before committing to deliver it.

## Outputs
- Service tier/bundle recommendation
- Cross-channel pricing structure
- Strategy-led, cross-channel proposal draft
- Unified onboarding questionnaire and access checklist
- Timeline expectation-setting by channel

## Rules
- Never bundle a channel into a package the agency/freelancer can't genuinely deliver well — quality dilution across channels damages the whole client relationship, not just the weak channel.
- Always set differentiated timeline expectations per channel during onboarding rather than one blanket "results in 30 days" promise across all channels.
- Lead proposals with the cross-channel strategy, not a feature-by-platform capability list.

- **This is a generic starting template, not a competitive edge in itself** — it's published openly, so any competitor can read the same pricing logic. Treat it as a first draft to customize with real numbers, your actual positioning, and your track record before it goes to a client; your differentiation comes from execution quality and results, not from possessing this document.
- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-client-services`, `meta-ads-client-services`, `linkedin-ads-client-services`, `tiktok-ads-client-services` (per-platform depth this bundles), `paid-media-channel-selection`, `paid-media-budget-allocation`.
