---
name: tiktok-ads-campaign-builder
description: "Build complete TikTok Ads campaigns from business goals, audience, budget, and conversion objectives. Triggers on 'create a TikTok Ads campaign', 'build a TikTok campaign', 'set up TikTok Ads structure', or 'launch a campaign for [product]'. General entry point — routes to tiktok-ads-spark-ads and tiktok-ads-creative-strategy for deeper work."
---

# TikTok Ads Campaign Builder

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Turn a business goal into a complete, launch-ready TikTok campaign structure: objective, campaign/ad group/ad architecture, audience, and budget — with the understanding that creative quality will determine outcomes here more than structural precision.

## Trigger Conditions
- "Create a TikTok Ads campaign for [product/service]"
- "Build me a TikTok campaign for sales/installs/awareness"
- "Set up TikTok Ads structure for [business]"

## Required Inputs
- Business type, product/service, offer
- Target audience and location(s)
- Monthly budget
- Conversion goal (product sales via Shop, website conversions, app installs, leads, awareness)
- Available creative assets or production/creator plan — flag as blocking if genuinely native content isn't available (route to `tiktok-ads-creative-strategy`)
- Pixel/Events API status — flag `tiktok-ads-pixel-events` as blocking if absent for conversion-goal campaigns

## Core Capabilities

### Campaign Structure
- Campaign (objective) → Ad Group (audience, placement, budget, bidding) → Ad (creative) architecture
- Smart+ (TikTok's automated campaign type, analogous to PMax/Advantage+) as an option once conversion volume supports it, trading manual control for algorithmic optimization across targeting and creative combinations
- Naming convention for account legibility at scale

### Objective Selection
- Awareness/Reach/Traffic for top-funnel discovery
- Community Interaction for engagement/follower-building
- App Promotion for install-focused businesses
- Lead Generation (native lead forms) and Website Conversions for direct response
- Product Sales (TikTok Shop-linked) for ecommerce — coordinate with `tiktok-shop-organic`/catalog setup

### Audience Foundation
- Core targeting (demographics, interests, behaviors) for cold prospecting
- Broad/automated targeting recommended once Pixel data is mature enough — TikTok's algorithm, like Meta's, generally performs well with broader signal and strong creative over narrow manual targeting
- Route deep audience/custom-audience work to `tiktok-ads-audience-targeting`

### Creative Requirement
- This is the platform where creative quality dominates outcomes most decisively in this entire library — a technically well-structured campaign with weak, non-native creative will underperform a looser structure with strong creative
- Brief creative needs and route to `tiktok-ads-creative-strategy` and `tiktok-ads-copywriting-scripts`; consider `tiktok-ads-spark-ads` as an alternative/complementary path using existing organic or creator content

### Bidding & Budget
- Cost cap / bid cap for control, lowest cost for maximizing volume within budget — matched to how much conversion history exists to support automated bidding
- Budget sufficient to support creative testing volume (multiple ad variants), not just one "hero" ad

## Workflow
1. Confirm all required inputs; flag creative production capacity and Pixel/Events tracking as blocking prerequisites before proceeding.
2. Recommend objective based on goal and funnel stage.
3. Design structure: campaign, ad groups, Smart+ vs. manual decision based on conversion volume.
4. Set audience foundation, routing to `tiktok-ads-audience-targeting` for depth.
5. Brief creative and route to `tiktok-ads-creative-strategy`/`tiktok-ads-copywriting-scripts`, and flag `tiktok-ads-spark-ads` as a complementary path.
6. Set bidding/budget with explicit allowance for creative testing volume.
7. Confirm conversion event tracking matches the campaign's optimization goal before calling it launch-ready.

## Outputs
- Campaign/ad group/ad structure
- Objective and budget-strategy recommendation, with testing-volume allowance
- Audience foundation (with routing note for deeper targeting work)
- Creative brief/routing
- Conversion event mapping

## Rules
- Never treat creative as an afterthought to structure on this platform — flag weak/non-native creative capacity as a blocking issue before finalizing a campaign plan, not a minor caveat.
- Never recommend conversion-optimized bidding without confirming Pixel/Events API tracking is live.
- Budget for creative testing volume explicitly; a single-ad TikTok campaign is a structurally weak plan regardless of targeting precision.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`tiktok-ads-strategy` (upstream channel/creative-capacity fit), `tiktok-ads-creative-strategy`, `tiktok-ads-copywriting-scripts`, `tiktok-ads-spark-ads`, `tiktok-ads-audience-targeting`, `tiktok-ads-pixel-events`.
