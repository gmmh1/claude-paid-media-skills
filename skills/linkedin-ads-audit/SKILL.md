---
name: linkedin-ads-audit
description: "Perform a full LinkedIn Ads account health check. Triggers on 'audit my LinkedIn Ads account', 'is this LinkedIn account set up well', 'inherited this LinkedIn account, check it', or 'is this account ready to scale'. Broad structural review — for a specific known symptom, use linkedin-ads-optimization instead."
---

# LinkedIn Ads Account Audit

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Give a complete, structured health assessment of a LinkedIn Ads account — usually needed when inheriting an existing account or evaluating whether to scale spend on a B2B program that's been running without clear oversight.

## Trigger Conditions
- "Audit my LinkedIn Ads account"
- "I inherited this LinkedIn account, is it set up well?"
- "Is this account ready to scale spend?"
- "Find waste in my LinkedIn Ads account"

## Required Inputs
- Account access (read-only sufficient)
- Business goal(s), ICP, and current budget
- How long the account has been running

## Core Capabilities

### Structural Audit
- Campaign objective/format mix vs. business goal fit (e.g., relying on low-performing Text Ads when Sponsored Content would serve the goal better)
- Campaign group/campaign organization and naming
- Targeting configuration: checking for over-narrow (under-delivery risk) or over-broad (relevance/cost risk) audiences across active campaigns

### Tracking Audit
- Insight Tag presence and firing verification, conversion action completeness — route deep verification to `linkedin-ads-measurement`
- Lead Gen Form field/qualification appropriateness relative to the offer type

### Waste Detection
- Campaigns/ad sets with meaningful spend and no meaningful conversion activity over a representative window
- Audience overlap across concurrently running campaigns competing against each other for the same narrow B2B segment
- Stale creative running well past typical LinkedIn fatigue signals without refresh
- Text Ads or other low-prominence formats consuming disproportionate budget relative to their typical performance ceiling

### ABM Opportunity Assessment
- Whether the business has (or should build) a target account list and is missing the opportunity to run dedicated ABM (`linkedin-ads-abm`) instead of, or alongside, broad ICP targeting
- Sales-marketing alignment status if ABM is already in use

### Scaling Readiness
- Whether tracking maturity and current CPL/conversion quality justify increasing budget, given LinkedIn's cost profile makes premature scaling expensive to reverse
- Audience headroom: is there room to scale within the current ICP definition, or has the addressable audience already been substantially saturated

## Workflow
1. Confirm business goal(s), ICP, and budget as the baseline.
2. Review structure: objective/format mix, campaign organization, targeting configuration.
3. Review tracking: Insight Tag health, conversion action completeness, Lead Gen Form appropriateness.
4. Scan for waste: zero-conversion spend, audience overlap, stale creative, underperforming formats.
5. Assess ABM opportunity if a target account approach isn't already in use.
6. Deliver scaling-readiness verdict with specific blockers, findings ranked by dollar impact.

## Outputs
- Findings list ranked by estimated dollar/performance impact
- Scaling readiness verdict with specific blockers
- ABM opportunity flag, if relevant
- Routing recommendations to specialist skills for each fix

## Rules
- Never issue a "this account is fine" verdict without checking tracking completeness first.
- Rank findings by dollar impact, not audit-checklist order — LinkedIn's cost profile makes waste especially expensive relative to other platforms.
- Flag ABM candidacy explicitly if the business has a definable target account list but isn't using it — this is commonly the single highest-leverage missed opportunity on this platform.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`linkedin-ads-optimization` (fixes for diagnosed performance issues), `linkedin-ads-measurement` (tracking gap fixes), `linkedin-ads-abm` (target-account-list opportunity), `linkedin-ads-strategy` (if the audit reveals the wrong channel/objective fit).
