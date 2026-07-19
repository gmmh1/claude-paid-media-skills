---
name: google-ads-local-campaigns
description: "Set up and run Local Services Ads and location-based Google Ads campaigns for service-area and brick-and-mortar businesses. Triggers on 'Local Services Ads', 'get Google Guaranteed', 'local campaign for my store', 'ads for my service area business', or 'drive foot traffic with Google Ads'. Distinct product/workflow from standard Search/PMax — see google-ads-campaign-builder for those."
---

# Google Ads Local Campaigns

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Set up and run the Google Ads products built specifically for local/service-area businesses: Local Services Ads (LSA, pay-per-lead, Google Guaranteed) and location-focused Search/Display/Local campaigns aimed at foot traffic or service-area calls.

## Trigger Conditions
- "Set up Local Services Ads for my business"
- "How do I get Google Guaranteed / Google Screened"
- "Drive foot traffic to my store with Google Ads"
- "Ads for my service-area business (plumber, contractor, lawyer, etc.)"

## Required Inputs
- Business type and whether it's eligible for Local Services Ads (home services, legal, real estate, and other approved categories vary by country)
- Service area (radius or list of cities/zip codes) vs. fixed storefront location(s)
- Licensing, insurance, and background-check documentation needed for LSA verification (varies by category)
- Google Business Profile status (required/strongly linked for local visibility)
- Budget model preference: LSA is pay-per-lead, not pay-per-click — different budgeting logic than standard Search

## Core Capabilities

### Local Services Ads (LSA)
- Eligibility check by category and country; verification requirements (business license, insurance, background checks for the business and relevant staff)
- Google Guaranteed / Google Screened badge process and why it matters for trust/click-through
- Pay-per-lead model: budgeting by weekly lead cap rather than CPC, and how lead pricing varies by category/location competition
- Lead quality dispute process — LSA allows disputing invalid leads (spam, out-of-area, wrong category); flag this as an ongoing account-management task, not a one-time setup step
- Profile optimization: reviews, response time, business hours accuracy directly affect ranking in the LSA unit

### Location-Based Standard Campaigns
- Location extensions/assets pulling from a verified Google Business Profile
- Radius targeting around physical location(s) vs. named-area targeting for service-area businesses without a public storefront
- "Near me" and local-intent keyword themes for standard Search campaigns supplementing LSA
- Local campaigns (Google's campaign type optimized for driving store visits across Search, Display, Maps, YouTube) when the goal is foot traffic to a specific location

### Multi-Location Management
- Location groups/feeds for businesses with many locations, so ads and extensions auto-populate the nearest relevant location
- Budget and performance splitting across locations to identify underperforming markets

### Review & Reputation Signal
- Google Business Profile review volume/rating materially affects both LSA ranking and standard local ad click-through — flag review generation as a lever, not just an ads lever

## Workflow
1. Confirm business category eligibility for LSA and gather verification documentation requirements.
2. Set up/verify Google Business Profile completeness (hours, category, photos, service area) as the foundation both LSA and standard local campaigns depend on.
3. Complete LSA verification (license, insurance, background check) and get Google Guaranteed/Screened status.
4. Set weekly lead budget and target service categories/area within LSA.
5. Layer in standard Search local-intent campaigns and/or a Local campaign if goals extend beyond LSA's lead-gen model (e.g., store visits, broader keyword coverage).
6. Set up lead dispute monitoring as an ongoing task, not a launch-day item.

## Outputs
- LSA eligibility and verification checklist
- Weekly lead budget recommendation with expected lead-cost range for the category/area
- Google Business Profile completeness checklist
- Standard local campaign recommendation, if applicable, with location targeting setup
- Ongoing lead-dispute and review-generation action items

## Rules
- Never treat LSA and standard Search/PMax campaigns as interchangeable — LSA is pay-per-lead with its own verification and dispute process, not just another campaign type.
- Always flag Google Business Profile completeness and review volume as prerequisites, not afterthoughts — they materially drive both eligibility and performance for local products.
- Set expectation that lead disputes and review management are recurring operational tasks, not a one-time setup checklist item.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-account-management` (Google Business Profile linking), `google-ads-campaign-builder` (standard Search/Display alongside LSA), `google-ads-measurement` (call/lead tracking for LSA), `google-ads-audit` (auditing an existing local ads setup).
