---
name: linkedin-ads-strategy
description: "Decide whether and how to use LinkedIn Ads before anything gets built. Triggers on 'should I use LinkedIn Ads', 'what LinkedIn objective should I run', 'plan my LinkedIn B2B funnel', or 'LinkedIn Ads strategy for [business]'. Planning layer — hands off to linkedin-ads-campaign-builder for execution."
---

# LinkedIn Ads Strategy

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Answer the planning-layer question before campaign structure exists: is LinkedIn the right channel (it's a premium-CPC, high-intent-B2B-only channel), which objective fits the funnel stage, and how should budget be allocated given LinkedIn's cost profile.

## Trigger Conditions
- "Should I run LinkedIn Ads for my business?"
- "What LinkedIn campaign objective is right for me?"
- "Plan my LinkedIn B2B funnel"
- "How much budget do I need for LinkedIn Ads?"

## Required Inputs
- Business type, ICP (ideal customer profile), average deal size/ACV
- Primary goal (awareness, leads, website conversions, job applications, event registration)
- Sales cycle length (LinkedIn's cost profile only makes sense against high-enough deal value/LTV)
- Budget range and whether the business has a defined target account list (ABM candidate) or a broader ICP

## Core Capabilities

### Channel Fit Assessment
- LinkedIn CPCs/CPMs run meaningfully higher than Meta/Google Display — the channel is justified by targeting precision (job title, seniority, company) and B2B audience quality, not low cost
- Strong fit: B2B with deal sizes/LTV that can absorb higher CAC, decision-makers reachable by job title/function/seniority, longer consideration sales cycles
- Weak fit: low-ACV B2C, or B2B products cheap enough that LinkedIn's CPC makes unit economics impossible — flag this honestly rather than agreeing to run a channel that can't pencil out

### Objective Selection
- Awareness/Engagement for top-funnel category education when the audience doesn't yet know the problem/solution
- Website Visits/Conversions for mid-funnel content or demo-request campaigns
- Lead Generation (on-platform Lead Gen Forms) for high-friction-reduction lead capture — route to `linkedin-ads-lead-gen-forms`
- Job Applicants for recruitment marketing use cases

### Funnel Mapping
- Sequencing: thought-leadership/awareness content → retargeting website visitors/content engagers → conversion-focused Lead Gen or demo-request campaigns
- ABM-specific sequencing when a target account list exists — route to `linkedin-ads-abm` for the dedicated workflow

### Financial Framing
- CAC/LTV sanity check specific to LinkedIn's cost profile — a $50 CPL that would be alarming on Meta may be entirely reasonable for a $30k ACV B2B deal
- Flag when the stated CPA target is unrealistic given LinkedIn's typical cost floor for the targeting precision requested

## Workflow
1. Establish ICP, deal size/LTV, and sales cycle.
2. Assess whether LinkedIn's cost profile can be justified by the deal economics — say so plainly if it can't.
3. Recommend objective(s) and sequencing matched to funnel stage and whether ABM is warranted.
4. Sanity-check budget against realistic LinkedIn CPL/CPA for the targeting precision needed.
5. Hand off to `linkedin-ads-account-management` (if no account) or `linkedin-ads-campaign-builder`.

## Outputs
- Channel fit verdict with rationale
- Recommended objective(s) and funnel sequencing
- Budget allocation and realistic CPL/CPA range
- ABM candidacy assessment

## Rules
- Never recommend LinkedIn Ads to a business whose deal economics can't reasonably absorb the channel's cost profile — this wastes budget regardless of execution quality.
- Always assess ABM candidacy explicitly when the business has (or could build) a defined target account list — it's LinkedIn's strongest differentiated use case.
- Don't agree to CPA targets that ignore LinkedIn's typical cost floor for precise B2B targeting.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`linkedin-ads-campaign-builder` (execution), `linkedin-ads-abm` (target-account-list workflow), `linkedin-ads-account-management` (setup).
