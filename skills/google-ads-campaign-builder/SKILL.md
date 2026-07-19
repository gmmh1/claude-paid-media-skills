---
name: google-ads-campaign-builder
description: "Build complete Google Ads campaigns from business goals, audience, budget, and conversion objectives. Triggers on 'create a Google Ads campaign', 'build a Search/PMax/Display/Shopping/YouTube campaign', 'set up Google Ads structure', or 'launch a campaign for [product]'. Produces full campaign architecture, keywords, ads, and budget — not strategy-level channel decisions (see google-ads-strategy) or ad copy polish alone (see google-ads-copywriting)."
---

# Google Ads Campaign Builder

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Turn a business goal into a complete, launch-ready Google Ads campaign structure: campaign type, account architecture, keywords, ads, extensions/assets, and budget.

## Trigger Conditions
- "Create a Google Ads campaign for [product/service]"
- "Build me a Search campaign" / "Set up Performance Max" / "Launch a Shopping campaign"
- "Set up Google Ads structure for [business]"

## Required Inputs
Collect before building (ask only for what's missing):
- Business type and product/service
- Target audience and location(s)
- Monthly budget
- Conversion goal (leads, sales, calls, app installs, foot traffic)
- Landing page URL
- Offer (what makes this ad worth clicking)
- Known competitors (optional, sharpens keyword/angle choices)
- Conversion tracking status — if absent, flag `google-ads-measurement` as a blocking prerequisite

## Core Capabilities

### Campaign Type Selection
- Search (intent-driven, keyword-based)
- Performance Max (full-inventory automated, requires strong asset group + feed if ecommerce)
- Display (awareness/remarketing, image-based)
- Shopping (product feed via Merchant Center)
- Video/YouTube (awareness, consideration, or action campaigns)
- Demand Gen (visually-led, social-style placements across YouTube/Discover/Gmail)
- Match campaign type to funnel stage and conversion goal, not to what's trendy

### Account Structure
- Campaign → Ad Group → Ad/Asset architecture
- Naming convention (platform / campaign type / audience / geo / date)
- Single-keyword ad groups (SKAGs) vs. themed ad groups — recommend themed for most accounts, SKAGs only for high-spend precision cases
- Budget allocation across campaigns by priority/funnel stage

### Keyword Research (Search/Shopping)
- Seed keyword generation from product/service + intent modifiers
- Match type strategy (exact, phrase, broad — with Smart Bidding context)
- Negative keyword list to exclude irrelevant/competitor/low-intent traffic
- Search intent classification (informational vs. commercial vs. transactional) to filter out low-value terms

### Ad Creation
- Hand off headline/description writing to `google-ads-copywriting`, but define the brief: angle, offer, proof points, CTA
- Assets/extensions: sitelinks, callouts, structured snippets, call, location, price, promotion
- Character limits: 30 chars/headline, 90 chars/description, 15 headlines / 4 descriptions max for RSA

### Audience & Targeting (PMax/Display/Video/Demand Gen)
- Audience signals: custom segments, in-market, affinity, remarketing lists
- Asset groups for PMax (images, logos, headlines, descriptions, videos per theme)
- Geographic and device targeting decisions

## Workflow
1. Confirm all required inputs; do not guess budget, geography, or conversion goal.
2. Recommend campaign type(s) based on goal and funnel stage — explain the "why," not just the pick.
3. Design account structure: campaigns, ad groups/asset groups, naming convention.
4. Generate keyword themes + match types + negative keyword starter list (Search/Shopping).
5. Brief and generate ad assets (hand off copy specifics to `google-ads-copywriting` if depth is needed).
6. Attach relevant extensions/assets.
7. Propose budget split and bid strategy (Maximize Conversions, Target CPA/ROAS, Manual CPC only for new accounts with no conversion history).
8. Route through `google-ads-compliance` for a policy check before calling it launch-ready.

## Outputs
- Campaign structure (campaigns → ad groups/asset groups)
- Keyword list with match types
- Negative keyword list
- Ad copy/assets (or a copy brief if handed to the copywriting skill)
- Extensions/assets list
- Budget and bid strategy recommendation
- Launch checklist

## Rules
- Never launch a campaign recommendation without conversion tracking confirmed or explicitly flagged as missing.
- Never recommend keywords without intent analysis — high-volume ≠ high-intent.
- Never ignore landing page fit; if the landing page doesn't match the ad's promise, flag `google-ads-landing-page-audit` before finalizing.
- Respect RSA character limits exactly; do not output copy that would be rejected at save time.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-strategy` (upstream — confirms this is the right channel/objective first), `google-ads-copywriting` (deeper ad copy work), `google-ads-landing-page-audit`, `google-ads-compliance`, `google-ads-measurement`.
