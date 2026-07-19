---
name: google-ads-remarketing
description: "Build remarketing and first-party audience infrastructure for Google Ads — RLSA, dynamic remarketing, Customer Match, similar segments. Triggers on 'set up remarketing', 'retarget my website visitors', 'Customer Match list', 'RLSA', or 'build a remarketing funnel'. Audience-infrastructure work — for the campaigns that use these audiences, see google-ads-campaign-builder."
---

# Google Ads Remarketing

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build the first-party audience infrastructure (remarketing lists, Customer Match, dynamic remarketing feeds) that makes retargeting and audience-based bidding possible across Search, Display, YouTube, and PMax.

## Trigger Conditions
- "Set up remarketing for my website"
- "Retarget people who visited but didn't buy"
- "Build a Customer Match list from my email list"
- "RLSA for my Search campaigns"
- "Dynamic remarketing with product ads"

## Required Inputs
- Website tagging status (Google tag/GTM installed and firing)
- Business type (ecommerce → dynamic remarketing with product feed; lead-gen/SaaS → standard RLSA)
- Available first-party data: customer email/phone lists, CRM export capability
- Funnel stages worth segmenting (all visitors, product viewers, cart abandoners, past purchasers, leads who didn't convert)

## Core Capabilities

### Remarketing List Architecture
- Segment by intent, not just "all visitors": page-category viewers, cart abandoners, checkout starters, past purchasers, repeat-visit-no-conversion
- Membership duration matched to actual purchase cycle (7 days for impulse/low-consideration, 90-540 days for considered/high-ticket purchases)
- Exclusion lists (e.g., exclude recent purchasers from acquisition-focused remarketing) to avoid wasted spend and poor experience

### RLSA (Remarketing Lists for Search Ads)
- Layering remarketing audiences onto Search campaigns for bid adjustments or audience-only targeting
- Use case: bidding more aggressively on generic/broad keywords when the searcher is already a known warm visitor

### Dynamic Remarketing (Ecommerce)
- Requires product feed (coordinate with `google-ads-shopping-feed`) tagged with dynamic remarketing parameters (ecomm_prodid, ecomm_pagetype, ecomm_totalvalue) on-site
- Shows the specific products a visitor viewed/abandoned, not generic brand creative

### Customer Match
- Uploading hashed first-party data (email/phone/address) to build audiences from CRM/customer lists
- Use cases: winback campaigns to lapsed customers, exclusion of existing customers from acquisition campaigns, seed audiences for similar-segment expansion
- Data policy requirements: only use data collected with appropriate consent/privacy basis

### Similar/Lookalike-Equivalent Segments
- Expansion audiences built from remarketing or Customer Match seed lists to reach new users resembling known converters
- Sizing/quality tradeoff: too-narrow seed lists produce unreliable expansion audiences

## Workflow
1. Confirm tagging is live and collecting audience data (verify with `google-ads-measurement` if uncertain).
2. Design the list architecture: which funnel stages/segments matter for this business, with appropriate membership durations.
3. For ecommerce, confirm the product feed supports dynamic remarketing parameters.
4. Set up Customer Match lists from available first-party data where a use case exists (winback, exclusion, expansion seed).
5. Recommend where these audiences plug into campaigns — RLSA bid adjustments, standalone remarketing campaigns, PMax audience signals — and hand off to `google-ads-campaign-builder`.
6. Build exclusion logic so acquisition and retention campaigns don't compete against each other for the same users.

## Outputs
- Remarketing list architecture (segments, membership durations, exclusions)
- Dynamic remarketing setup requirements, if ecommerce
- Customer Match list plan and use cases
- Recommended audience-to-campaign mapping

## Rules
- Never recommend Customer Match uploads without confirming the underlying data was collected with a valid consent/privacy basis for advertising use.
- Always pair acquisition campaigns with exclusion of recent-converter lists to avoid wasting budget re-targeting existing customers as if they were new.
- Don't set membership durations by default (Google's 30-day default) without checking them against the business's actual purchase/consideration cycle.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (where these audiences get deployed), `google-ads-shopping-feed` (dynamic remarketing feed requirement), `google-ads-measurement` (tagging prerequisite), `google-ads-compliance` (data use/privacy considerations).
