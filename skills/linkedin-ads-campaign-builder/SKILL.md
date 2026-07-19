---
name: linkedin-ads-campaign-builder
description: "Build complete LinkedIn B2B ad campaigns from business goals, ICP, budget, and conversion objectives. Triggers on 'create a LinkedIn Ads campaign', 'build a Sponsored Content/Message Ad campaign', 'set up LinkedIn Ads structure', or 'launch a LinkedIn campaign for [product]'. General entry point — routes to linkedin-ads-abm and linkedin-ads-lead-gen-forms for deeper work."
---

# LinkedIn Ads Campaign Builder

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Turn a B2B business goal into a complete, launch-ready LinkedIn campaign structure: objective, campaign group/campaign architecture, ad format, targeting foundation, and budget.

## Trigger Conditions
- "Create a LinkedIn Ads campaign for [product/service]"
- "Build a Sponsored Content / Message Ad / Conversation Ad campaign"
- "Set up LinkedIn Ads structure for [business]"

## Required Inputs
- Business type, product/service, ICP (industry, company size, job function/seniority)
- Monthly budget
- Conversion goal (leads, website conversions, awareness, event registration, job applications)
- Landing page or Lead Gen Form destination
- Available creative assets
- Insight Tag/conversion tracking status — flag `linkedin-ads-measurement` as blocking if absent

## Core Capabilities

### Campaign Structure
- Campaign Group → Campaign → Ad architecture, campaign groups useful for organizing by product line, region, or funnel stage
- Naming convention (platform / objective / audience / date) for legibility at scale
- Daily vs. lifetime budget, and bid strategy (Maximum Delivery/automated vs. manual CPC/CPM/cost-per-send for message formats)

### Ad Format Selection
- Sponsored Content (Single Image, Video, Carousel, Document Ads) — the default feed-native format for most objectives
- Message Ads / Conversation Ads — direct-to-inbox format, strong for high-value offers (demo booking, gated content) to a precisely targeted list, but higher cost-per-send and requires message copy that doesn't read as spam
- Text Ads / Dynamic Ads — lower-cost, lower-prominence sidebar formats, generally weaker performers, best reserved for brand-awareness top-ups on tight budgets
- Document Ads for gated thought-leadership content (whitepapers, reports) generating leads directly from document engagement

### Targeting Foundation
- Core professional targeting (job title, function, seniority, industry, company size, skills) as the baseline — route to `linkedin-ads-audience-targeting` for full depth
- Audience size warnings: LinkedIn targeting can get precise enough to under-deliver; balance precision against minimum viable reach
- Route to `linkedin-ads-abm` when a defined target account list exists rather than broad ICP targeting

### Conversion Path
- Lead Gen Forms (on-platform, pre-filled from LinkedIn profile data, highest completion rate) vs. website conversion (more qualification friction, better lead quality signal in many cases) — route to `linkedin-ads-lead-gen-forms` for the on-platform path
- Matching ad format and CTA to the actual destination

## Workflow
1. Confirm all required inputs; flag Insight Tag/tracking gaps as blocking before recommending conversion-optimized bidding.
2. Recommend objective and ad format based on goal, budget, and offer type.
3. Design structure: campaign groups/campaigns, budget/bid strategy.
4. Set core targeting foundation, routing to `linkedin-ads-abm` if a target account list exists.
5. Choose conversion path (Lead Gen Form vs. website) and set up accordingly.
6. Brief creative/copy needs and hand off to `linkedin-ads-copywriting`.
7. Confirm conversion tracking matches the campaign's optimization goal before calling it launch-ready.

## Outputs
- Campaign group/campaign/ad structure
- Ad format recommendation with rationale
- Targeting foundation (with ABM routing note if applicable)
- Conversion path recommendation (Lead Gen Form vs. website)
- Creative brief and conversion event mapping

## Rules
- Never recommend conversion-optimized bidding without confirming Insight Tag/tracking is live.
- Recommend Lead Gen Forms when lead volume is the priority and website friction risks killing conversion rate; recommend website conversion when lead quality/qualification matters more than volume.
- Flag when targeting has been narrowed to the point of risking under-delivery.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`linkedin-ads-strategy` (upstream objective/channel fit), `linkedin-ads-abm` (target-account-list campaigns), `linkedin-ads-audience-targeting`, `linkedin-ads-lead-gen-forms`, `linkedin-ads-copywriting`, `linkedin-ads-measurement`.
