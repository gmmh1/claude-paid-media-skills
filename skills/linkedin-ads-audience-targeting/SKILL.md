---
name: linkedin-ads-audience-targeting
description: "Build LinkedIn professional targeting and Matched Audiences — job title/function/seniority, company attributes, retargeting, and lookalike-equivalent expansion. Triggers on 'LinkedIn targeting for [role/industry]', 'Matched Audiences setup', 'retarget my website visitors on LinkedIn', or 'LinkedIn audience overlap'. Audience layer feeding linkedin-ads-campaign-builder; for target-account-list ABM see linkedin-ads-abm."
---

# LinkedIn Ads Audience & Targeting

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build LinkedIn's professional targeting (job title, function, seniority, industry, company attributes) and Matched Audiences (retargeting, contact/company list uploads, lookalikes) — the precision that justifies LinkedIn's premium cost, used correctly rather than stacked into an under-delivering audience.

## Trigger Conditions
- "Target [job title/function/industry] on LinkedIn"
- "Set up Matched Audiences / retargeting on LinkedIn"
- "Build a lookalike-style audience on LinkedIn"
- "Check my LinkedIn audience overlap"

## Required Inputs
- ICP definition: industry, company size/revenue, job function, seniority, skills, geography
- First-party data available: website visitor pixel (Insight Tag) data, contact lists (email), company lists (target accounts)
- Whether this is broad ICP prospecting or a defined target account list (route to `linkedin-ads-abm` for the latter)

## Core Capabilities

### Professional Attribute Targeting
- Job title vs. job function/seniority: job title targeting is more precise but has lower reach and title-naming inconsistency across companies; function + seniority is broader and more robust — often the better default, with title-based as a refinement layer for known high-precision use cases
- Company attributes: industry, size, growth rate, named company lists — combining company size with function/seniority is a common effective baseline for B2B SaaS ICPs
- Skills and Groups targeting as supplementary signals, generally lower-precision than title/function/seniority/company

### Matched Audiences
- Website retargeting via the LinkedIn Insight Tag (coordinate with `linkedin-ads-measurement`) — segment by page/content viewed where the pixel supports it
- Contact targeting: uploading a first-party email list (existing leads, newsletter subscribers) to target or exclude directly
- Company targeting: uploading a target account list — the foundation for ABM, though full ABM workflow (contact mapping within accounts, personalization) lives in `linkedin-ads-abm`
- Lookalike-equivalent audience expansion from a Matched Audience seed, with the same seed-quality caveat as other platforms — a tight, high-value seed (closed-won customer list) produces better expansion than a broad newsletter list

### Audience Sizing & Overlap
- LinkedIn's B2B-only population is inherently smaller than consumer platforms — precise targeting can under-deliver quickly; check estimated audience size before finalizing and loosen non-essential filters if reach is too thin
- Checking for overlap between concurrently running campaigns targeting similar ICPs, which compete against each other and inflate costs without expanding real reach

### Exclusions
- Excluding existing customers/closed-won accounts from acquisition campaigns
- Excluding employees of the advertiser's own company (a LinkedIn-specific consideration, since internal employees can accidentally inflate engagement metrics without being real prospects)

## Workflow
1. Define ICP attributes (function/seniority/industry/company size) as the baseline targeting layer.
2. Check estimated audience size; loosen filters if too narrow, add filters if too broad given budget.
3. Layer in Matched Audiences (retargeting, contact/company lists) where first-party data supports it.
4. Route to `linkedin-ads-abm` if a defined target account list exists rather than continuing with broad ICP targeting.
5. Set exclusions (existing customers, own-company employees).
6. Check for overlap against other concurrently running campaigns.

## Outputs
- Professional targeting recommendation (function/seniority/industry/company)
- Matched Audience setup plan
- Audience size check and adjustment recommendation
- Exclusion list
- ABM routing flag, if applicable

## Rules
- Never stack targeting filters without checking estimated audience size — under-delivery from over-precision is a common, avoidable LinkedIn mistake.
- Always exclude the advertiser's own employees from targeting to avoid inflated, non-prospect engagement.
- Confirm any uploaded contact/company list data has a valid basis for advertising use.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`linkedin-ads-abm` (target-account-list workflow), `linkedin-ads-measurement` (Insight Tag data source), `linkedin-ads-campaign-builder` (where audiences deploy).
