---
name: paid-media-safety-compliance
description: "Review paid advertising targeting and creative for fairness, bias, and cross-platform regulatory risk. Triggers on 'is my targeting discriminatory', 'advertising fairness review', 'Special Ad Category compliance', or 'regulated-category advertising across platforms'. Cross-platform ethical/legal review layer above each platform's own -compliance skill."
---

# Paid Media Safety & Compliance

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Review advertising targeting and creative for fairness/bias risk and cross-platform regulatory exposure — particularly relevant for housing, employment, credit, and other protected-class-sensitive categories where targeting itself (not just ad copy) can create legal and ethical risk, and where rules differ meaningfully across platforms and jurisdictions.

## Trigger Conditions
- "Is my targeting discriminatory / could this be a fair-housing issue"
- "Advertising fairness review before we launch"
- "Special Ad Category compliance check"
- "Regulated-category advertising across multiple platforms"

## Required Inputs
- Business category (flag immediately if housing, employment, credit/financial services, or other protected-class-sensitive vertical)
- Platforms in use, since targeting-fairness rules and enforcement mechanisms differ (Meta's Special Ad Category restrictions are the most codified; other platforms have their own, less standardized policies)
- Proposed targeting criteria (demographics, interests, locations, exclusions)
- Ad creative/copy for the campaign

## Core Capabilities

### Targeting Fairness Review
- Protected-class-adjacent targeting risk: age, gender, and proxy variables (certain interests, zip codes strongly correlated with race/ethnicity) that can create discriminatory effect even without explicit protected-class targeting
- Special Ad Category requirements (Meta's codified system for housing, employment, credit, social issues) as the most mature reference framework — flag when a campaign should be in this category even on platforms without an identically formal system, since the underlying legal risk (e.g., US Fair Housing Act, ECOA) isn't platform-specific
- Exclusion-based discrimination risk: excluding audiences can create the same fairness problem as including only certain audiences, and is sometimes less obviously flagged by platform policy tools

### Bias Detection in Automated Targeting
- Awareness that algorithmic/automated targeting (Advantage+, PMax, Smart+) can produce demographically skewed delivery even without explicit demographic targeting input, since the algorithm optimizes for engagement/conversion patterns that can correlate with protected characteristics
- Recommending delivery reporting review (who actually saw the ad, not just who was targeted) for regulated categories, since intended targeting and actual delivery can diverge

### Cross-Platform Regulatory Awareness
- Regulated categories carry different rules per platform and per jurisdiction — housing/employment/credit restrictions, political ad disclosure requirements, health claim substantiation, and financial services regulation all vary; flag the need for jurisdiction-specific and platform-specific verification rather than asserting one-size-fits-all compliance
- Data privacy regime awareness (e.g., regional consent requirements) affecting whether certain targeting/tracking approaches are even legally usable in a given market — coordinate with each platform's own measurement skill for the technical implementation

### Escalation Judgment
- Distinguishing genuine legal/regulatory risk (requiring the business consult actual legal counsel, not just this skill) from best-practice fairness recommendations — this skill supports risk identification and process, not a substitute for qualified legal review in ambiguous or high-stakes cases

## Workflow
1. Identify the business category and flag immediately if it's housing, employment, credit, or another protected-class-sensitive vertical.
2. Review proposed targeting criteria for protected-class-adjacent risk, including proxy variables and exclusion-based risk.
3. If automated/algorithmic targeting is in use, recommend delivery-report review rather than trusting targeting-intent alone.
4. Check platform-specific compliance mechanisms (Special Ad Category or equivalent) across every platform in use.
5. Flag jurisdiction-specific regulatory considerations for verification.
6. Escalate to actual legal counsel for genuinely ambiguous or high-stakes determinations rather than presenting this review as a legal clearance.

## Outputs
- Targeting fairness risk assessment
- Special Ad Category (or equivalent) applicability across each platform in use
- Delivery-report review recommendation for automated targeting in regulated categories
- Jurisdiction-specific flags requiring further verification
- Explicit escalation recommendation for legal counsel where appropriate

## Rules
- Never present this review as a substitute for qualified legal counsel in genuinely ambiguous or high-stakes regulated-category cases — flag escalation explicitly.
- Always check exclusion-based targeting for the same fairness risk as inclusion-based targeting, since it's often less obviously flagged by platform tools.
- Recommend delivery-report (not just targeting-intent) review for regulated categories using any automated/algorithmic targeting.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-compliance`, `meta-ads-campaign-builder` (Special Ad Category handling), `compliance-check`, `legal-risk-assessment`.
