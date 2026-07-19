---
name: meta-ads-campaign-builder
description: "Build complete Meta Ads campaigns from business goals, audience, budget, and conversion objectives across Facebook and Instagram. Triggers on 'create a Facebook/Instagram Ads campaign', 'build a Meta campaign', 'set up Meta Ads structure', or 'launch a campaign for [product]'. General entry point — routes to meta-ads-advantage-plus, meta-ads-messenger-whatsapp, or format-specific creative skills for deeper work."
---

# Meta Ads Campaign Builder

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Turn a business goal into a complete, launch-ready Meta campaign structure: objective, campaign/ad set/ad architecture, audience, placements, and budget.

## Trigger Conditions
- "Create a Facebook/Instagram Ads campaign for [product/service]"
- "Build me a Meta campaign for leads/sales/awareness"
- "Set up Meta Ads structure for [business]"

## Required Inputs
- Business type, product/service, offer
- Target audience and location(s)
- Monthly budget
- Conversion goal (purchases, leads, app installs, messages, awareness)
- Landing page or on-platform destination (website, Instant Form, Messenger)
- Available creative assets
- Pixel/CAPI status — flag `meta-ads-pixel-capi` as blocking if absent

## Core Capabilities

### Campaign Structure (CBO-era)
- Campaign (objective) → Ad Set (audience, placement, budget, optimization event) → Ad (creative) architecture
- Advantage Campaign Budget as the default recommendation for most accounts (Meta's automated budget distribution across ad sets), with manual ad-set budgets reserved for cases needing deliberate control (e.g., testing distinct audiences head-to-head)
- Naming convention (platform / objective / audience / date) for account legibility as it scales

### Objective Selection
- Awareness, Traffic, Engagement (top-funnel, no pixel data needed)
- Leads (Instant Forms on-platform or website lead conversion)
- Sales (website or Advantage+ Shopping — route to `meta-ads-advantage-plus` for the automated version)
- App Promotion, Messages (route to `meta-ads-messenger-whatsapp` when the goal is conversation-based)

### Audience Foundation
- Core audience setup (demographics, interests, behaviors) for cold prospecting when no first-party data exists yet
- Broad targeting + Advantage+ audience recommendations once pixel/conversion data is mature enough for the algorithm to find its own audience — narrow manual targeting is usually better only early or in niche B2B cases
- Hand off deep audience/custom-audience/lookalike work to `meta-ads-audience-targeting`

### Placements
- Advantage+ (automatic) placements as the default recommendation — Meta's delivery system generally outperforms manual placement restriction once there's enough creative variety to serve well across surfaces
- Manual placement restriction only for specific creative-format constraints (e.g., a creative that only works in Stories aspect ratio) or brand-safety requirements

### Ad Creation
- Brief creative/copy needs and hand off to `meta-ads-copywriting` and `meta-ads-creative-strategy` for format-specific execution
- Attach the correct conversion event (Purchase, Lead, etc.) matched to what CAPI/pixel is actually tracking

## Workflow
1. Confirm all required inputs; flag pixel/CAPI gaps as blocking before recommending conversion-optimized bidding.
2. Recommend objective based on goal and funnel stage.
3. Design structure: campaign, ad sets (audience/placement), Advantage Campaign Budget vs. manual.
4. Set audience foundation (broad/Advantage+ if data supports it, core targeting if not) — route to `meta-ads-audience-targeting` for custom/lookalike depth.
5. Set placements (Advantage+ default).
6. Brief creative and hand off to `meta-ads-copywriting`/`meta-ads-creative-strategy`/format-specific skills.
7. Confirm conversion event tracking matches the campaign's optimization goal before calling it launch-ready.

## Outputs
- Campaign/ad set/ad structure
- Objective and budget-strategy recommendation
- Audience foundation (with routing note if deeper custom/lookalike work is needed)
- Placement recommendation
- Creative brief (or handoff) and conversion event mapping

## Rules
- Never recommend conversion-optimized bidding (Sales/Leads objective, Purchase/Lead event) without confirming pixel/CAPI tracking is live — route to `meta-ads-pixel-capi` first.
- Default to Advantage+ placements and broad/Advantage+ audiences once there's enough conversion data; don't over-restrict targeting by default on the assumption that narrower is safer.
- Never launch in a regulated category (housing, employment, credit, political, health) without checking Special Ad Category requirements, which restrict targeting options — flag for compliance review.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-strategy` (upstream objective/channel fit), `meta-ads-advantage-plus` (automated shopping/app campaigns), `meta-ads-audience-targeting`, `meta-ads-copywriting`, `meta-ads-creative-strategy`, `meta-ads-pixel-capi`, `meta-ads-messenger-whatsapp`.
