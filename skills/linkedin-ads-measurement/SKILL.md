---
name: linkedin-ads-measurement
description: "Set up and troubleshoot the LinkedIn Insight Tag, conversion tracking, and attribution. Triggers on 'set up LinkedIn Insight Tag', 'LinkedIn conversion tracking', 'my LinkedIn conversions aren't tracking', or 'LinkedIn attribution window'. Prerequisite for conversion-optimized bidding and Matched Audience retargeting."
---

# LinkedIn Ads Measurement

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get the LinkedIn Insight Tag installed and conversion tracking configured so campaigns can optimize toward real business outcomes and feed Matched Audiences retargeting — without this, both `linkedin-ads-optimization` and `linkedin-ads-audience-targeting`'s retargeting capability are working blind.

## Trigger Conditions
- "Set up the LinkedIn Insight Tag"
- "Set up conversion tracking for LinkedIn Ads"
- "My LinkedIn conversions aren't tracking"
- "What attribution window should I use for LinkedIn"

## Required Inputs
- Website platform/CMS (affects tag deployment: GTM, native integration, or direct install)
- Conversion goal(s): form submits, demo requests, purchases, content downloads, sign-ups
- Whether Lead Gen Form conversions (tracked natively on-platform, no tag needed for those) are the only goal, or website-side conversions also need tracking
- Sales cycle length (informs attribution window selection, similar consideration to other B2B platforms)

## Core Capabilities

### Insight Tag Installation
- Site-wide base tag installation via Google Tag Manager (coordinate with `google-tag-manager`) or direct install
- Conversion actions defined on top of the base tag for specific goal pages/events (thank-you page views, button clicks, form submissions)
- Verifying tag firing via LinkedIn Campaign Manager's tag diagnostic tools before trusting the data

### Conversion Tracking
- Website conversion actions distinct from Lead Gen Form conversions (which are tracked natively without needing the Insight Tag, since they complete on-platform)
- Value-based conversion tracking where deal value data is available, for ROAS-style reporting on higher-ticket B2B sales
- Offline conversion import for businesses whose actual conversion (closed deal) happens well after and outside the website — matching back to the original click, similar in principle to Google's offline conversion import

### Attribution
- Attribution window selection matched to actual B2B sales cycle length — LinkedIn's default windows may undercount influence on long sales cycles if not adjusted
- Understanding that LinkedIn's attribution, like other platforms, will differ from CRM-reported closed-won attribution — explain the mechanical reason (different measurement windows/models) rather than treating either number as simply wrong

### Matched Audiences Dependency
- Insight Tag data directly feeds Matched Audiences website retargeting (`linkedin-ads-audience-targeting`) — flag this dependency explicitly when a business wants retargeting but hasn't installed the tag yet

## Workflow
1. Identify every real conversion event for the business, including on-platform Lead Gen Form completions and website-side goals.
2. Confirm tag deployment method (GTM preferred where already in use) and install the base Insight Tag.
3. Set up conversion actions for each website-side goal.
4. Set up offline conversion import if the sales cycle closes outside the website.
5. Set attribution window matched to actual sales cycle length.
6. Verify tag firing via Campaign Manager diagnostics before declaring tracking complete.

## Outputs
- Conversion action list with type and verification status
- Insight Tag installation confirmation
- Offline conversion import setup, if applicable
- Attribution window recommendation with rationale
- Matched Audiences dependency note, if retargeting is a stated goal

## Rules
- Never let a campaign be judged as underperforming without confirming tracking is verified and complete.
- Always flag the Insight Tag as a prerequisite when a business requests website retargeting via Matched Audiences.
- Explain LinkedIn-vs-CRM conversion count mismatches mechanically (attribution window/model) rather than implying either number is simply broken.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-tag-manager` (if deployment goes through GTM), `linkedin-ads-audience-targeting` (consumes this tag data), `linkedin-ads-optimization` (relies on this data), `linkedin-ads-lead-gen-forms` (native conversion tracking counterpart).
