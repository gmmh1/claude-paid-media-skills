---
name: google-ads-strategy
description: "Decide whether and how to use Google Ads before anything gets built. Triggers on 'should I use Google Ads', 'what Google Ads campaign type should I run', 'plan my Google Ads funnel', 'how much budget for Google Ads', or 'Google Ads strategy for [business]'. Answers channel/objective/budget questions at the planning layer — hands off to google-ads-campaign-builder for execution."
---

# Google Ads Strategy

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Answer the planning-layer question before campaign structure exists: is Google Ads the right channel for this goal, which campaign type(s) fit the funnel stage, and how should budget be allocated across them.

## Trigger Conditions
- "Should I run Google Ads for my business?"
- "What Google Ads campaign type is right for me?"
- "How much budget do I need for Google Ads?"
- "Plan my Google Ads funnel"

## Required Inputs
- Business type, product/service, average order value or deal size
- Primary business goal (revenue, leads, app installs, foot traffic, brand awareness)
- Existing demand signal: is there search volume for this product/service today (informs Search viability) or does the audience need to be created (favors Display/Demand Gen/YouTube)
- Budget range and time horizon (testing vs. established scaling)
- Sales cycle length (informs whether conversion-optimized bidding has enough data to work)

## Core Capabilities

### Channel Fit Assessment
- Search: strong when there's existing search demand and clear purchase/lead intent
- Performance Max: strong for ecommerce with a product feed and enough conversion volume (~30+/month) to feed automation
- Display/Demand Gen: strong for creating demand or remarketing, weak as a first channel with zero existing traffic/audience data
- YouTube: strong for brand-building or when video assets already exist; expensive to test cold without them
- Shopping: mandatory consideration for any ecommerce business with a product catalog

### Funnel Mapping
- Awareness → Consideration → Conversion → Retention, and which campaign type serves each stage
- Sequencing recommendation: don't run bottom-funnel Search alone if there's no top-of-funnel demand; don't run only Display if there's no retargeting pool yet

### Budget Allocation
- Minimum viable budget to exit the learning phase for the chosen bid strategy (roughly 15-30 conversions/month per campaign as a rule of thumb, not a guarantee)
- Split across campaign types by funnel role, not equally
- Testing budget vs. scaling budget as distinct phases

### Financial Framing
- Rough CAC/LTV sanity check: does the target CPA leave room for profitable unit economics at the given AOV/margin
- Flag when the ask ("get me leads for $5 CPA in a $2,000 sales-cycle B2B category") is unrealistic given the market, rather than agreeing to an infeasible target

## Workflow
1. Establish the business goal and whether it's revenue, leads, installs, or awareness.
2. Assess whether existing search demand exists for the product/service (quick mental check on category maturity).
3. Recommend campaign type(s) and sequencing based on funnel stage and available assets (feed, video, remarketing pool).
4. Sanity-check the budget against realistic CPA/CAC for the category and AOV.
5. Hand off to `google-ads-account-management` (if no account exists) or directly to `google-ads-campaign-builder`.

## Outputs
- Recommended campaign type(s) with justification
- Funnel sequencing plan
- Budget allocation across campaign types/phases
- Realistic CPA/CAC expectation range, flagged if the user's target is unrealistic

## Rules
- Never recommend a channel or campaign type just because it's popular — tie every recommendation to funnel stage and available assets (feed, creative, remarketing data).
- Don't agree to unrealistic CPA/budget targets without flagging the math; a false "yes" here wastes the client's spend before it's spent.
- If the business is pre-product-market-fit (no proof anyone buys this), flag that paid acquisition will be expensive relative to organic/manual validation first.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (execution), `google-ads-account-management` (setup), `google-ads-audit` (for strategy re-planning on an existing account).
