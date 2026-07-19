---
name: google-ads-audit
description: "Perform a full Google Ads account health check. Triggers on 'audit my Google Ads account', 'is this account set up well', 'inherited this account, check it', 'is this account ready to scale', or 'find waste in my Google Ads'. Broad, structural review — for a specific known symptom on a specific campaign, use google-ads-optimization instead."
---

# Google Ads Account Audit

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Give a complete, structured health assessment of a Google Ads account — usually needed when taking over an existing account (new client, agency handoff, or "we've been running this for a year and don't know if it's good").

## Trigger Conditions
- "Audit my Google Ads account"
- "I inherited this account, is it set up well?"
- "Is this account ready to scale spend?"
- "Find waste in my Google Ads"

## Required Inputs
- Account access (read-only is sufficient for the audit itself)
- Business goal(s) the account should be serving, and current budget
- How long the account has been running (affects how much data-driven judgment vs. structural judgment applies)

## Core Capabilities

### Structural Audit
- Campaign type mix vs. business goal fit (is Search running when the business needed brand awareness, etc.)
- Account/campaign/ad group naming and organization — indicates whether the account was built deliberately or accumulated ad hoc
- Budget allocation across campaigns relative to their actual performance/priority

### Tracking Audit
- Conversion actions present, whether they're value-based where appropriate, whether they look complete for the business's actual conversion paths (route deep verification to `google-ads-measurement`)
- GA4 linkage status
- Presence of obviously broken tracking (e.g., a "Contact" conversion action showing zero volume on a lead-gen site with active traffic)

### Waste Detection
- Search terms report scan for obviously irrelevant spend with no negative keywords in place
- Near-duplicate/overlapping keywords across ad groups competing against each other
- Campaigns/ad groups with spend but zero conversions over a meaningful window
- Ads disapproved or limited by policy, silently reducing delivery

### Targeting & Bidding Audit
- Bid strategy appropriateness given conversion volume (Smart Bidding assigned to a campaign with insufficient conversion history to support it)
- Geographic/device targeting misalignment with where the business actually operates or sells
- Audience signal quality on PMax/Display campaigns (broad/default vs. deliberately built signals)

### Scaling Readiness
- Whether current performance and tracking maturity justify increasing budget, or whether foundational issues (tracking gaps, waste) should be fixed first
- Impression share data: is the account budget-constrained (room to scale) or rank-constrained (scaling budget alone won't help)

## Workflow
1. Confirm the business goal(s) and current budget as the baseline the account should be judged against.
2. Review structure: campaign types, naming, organization.
3. Review tracking: conversion actions, GA4 link, obvious gaps.
4. Scan search terms and keyword overlap for waste.
5. Review bid strategy fit and targeting alignment.
6. Assess scaling readiness: is this account healthy enough to scale, or does it need fixes first.
7. Deliver findings ranked by dollar impact, not by category — the biggest leak goes first regardless of which audit section it came from.

## Outputs
- Findings list, ranked by estimated dollar/performance impact
- Scaling readiness verdict (ready / fix-first, with the specific blockers named)
- Routing recommendations to specialist skills for each fix (`google-ads-measurement` for tracking gaps, `google-ads-optimization` for bid/targeting fixes, `google-ads-copywriting` for weak ad relevance, `google-ads-compliance` for policy issues)

## Rules
- Never issue a "this account is fine" verdict without checking tracking completeness first — a well-structured account with broken tracking is not fine.
- Rank findings by dollar impact, not audit-checklist order, so the user knows what to fix first.
- Distinguish clearly between "structural issue" (fix once) and "ongoing optimization opportunity" (needs `google-ads-optimization`'s continuous process) so the user doesn't expect the audit alone to fix performance.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-optimization` (fixes for diagnosed performance issues), `google-ads-measurement` (tracking gap fixes), `google-ads-compliance` (policy issues found), `google-ads-strategy` (if the audit reveals the wrong channel/campaign type was chosen).
