---
name: meta-ads-strategy
description: "Decide whether and how to use Meta Ads before anything gets built. Triggers on 'should I use Facebook/Instagram Ads', 'what Meta campaign objective should I run', 'plan my Meta Ads funnel', or 'Meta Ads strategy for [business]'. Planning layer — hands off to meta-ads-campaign-builder for execution."
---

# Meta Ads Strategy

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Answer the planning-layer question before campaign structure exists: is Meta the right channel for this goal, which objective/campaign type fits the funnel stage and available assets, and how should budget be allocated.

## Trigger Conditions
- "Should I run Facebook/Instagram Ads for my business?"
- "What Meta campaign objective is right for me?"
- "Plan my Meta Ads funnel"
- "How much budget do I need for Meta Ads?"

## Required Inputs
- Business type, product/service, average order value or deal size
- Primary goal (sales, leads, app installs, awareness, traffic, engagement)
- Available creative assets (photo, video, UGC) and whether the business can produce more
- Existing pixel/CAPI data maturity (informs whether Advantage+ automation has enough signal to work)
- Budget range and time horizon

## Core Capabilities

### Channel Fit Assessment
- Meta rewards visually-led, scroll-native creative more than any other paid channel — a business with no creative production capacity will underperform here regardless of targeting sophistication
- Strong fit: businesses with visual products/services, existing customer data for lookalikes, or UGC-friendly categories
- Weak-fit signals: highly technical B2B with long sales cycles and no visual hook (often better served starting on LinkedIn), or categories with heavy ad policy restriction (route to compliance early)

### Objective & Campaign Type Selection
- Awareness/Traffic/Engagement for top-of-funnel when no retargeting pool exists yet
- Leads (on-platform Lead Ads or website conversion) for mid-funnel
- Sales/Advantage+ Shopping for ecommerce with a catalog and enough conversion volume
- App Promotion for install-focused businesses

### Funnel Mapping
- Sequencing: cold prospecting → retargeting → catalog/dynamic ads for cart abandoners, and why skipping straight to conversion campaigns with no retargeting pool wastes the platform's strongest lever
- Advantage+ automation needs meaningful conversion volume (rule-of-thumb ~50 conversions/week per ad set territory) to exit learning productively — thin budgets should start narrower/manual rather than full automation

### Financial Framing
- Rough CAC/LTV sanity check against AOV/margin
- Flag unrealistic CPA/ROAS targets relative to category and creative maturity rather than agreeing to them

## Workflow
1. Establish business goal and funnel stage.
2. Assess creative production capacity honestly — this determines Meta viability more than most other factors.
3. Recommend objective/campaign type and sequencing (prospecting → retargeting → catalog).
4. Sanity-check budget against realistic CPA/CAC and conversion-volume thresholds for automation.
5. Hand off to `meta-ads-account-management` (if no account) or `meta-ads-campaign-builder`.

## Outputs
- Recommended objective/campaign type with justification
- Funnel sequencing plan
- Budget allocation and realistic CPA/CAC range
- Creative capacity gap flag, if present

## Rules
- Never recommend Meta as the primary channel for a business with no visual creative capacity and no near-term plan to build one.
- Don't agree to unrealistic CPA targets without flagging the math.
- Flag regulated categories (health, finance, housing, employment, political) early — Meta's policy and targeting restrictions in these categories are stricter than general ad policy.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-campaign-builder` (execution), `meta-ads-account-management` (setup), `meta-ads-audit` (re-planning on an existing account).
