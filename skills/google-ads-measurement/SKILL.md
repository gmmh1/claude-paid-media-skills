---
name: google-ads-measurement
description: "Set up and troubleshoot Google Ads conversion tracking, GA4 linking, offline conversion imports, and attribution. Triggers on 'set up conversion tracking', 'link GA4 to Google Ads', 'import offline conversions', 'my conversions aren't tracking', or 'which attribution model should I use'. This is a prerequisite for any optimization or reporting work — untracked campaigns can't be trusted."
---

# Google Ads Measurement

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Ensure Google Ads has accurate, complete conversion data flowing in — without this, every other skill in this library (campaign building, optimization, reporting) is working blind.

## Trigger Conditions
- "Set up conversion tracking for Google Ads"
- "Link my GA4 to Google Ads"
- "Import offline conversions"
- "My conversions aren't tracking / numbers look wrong"
- "Which attribution model should I use"

## Required Inputs
- Conversion goal(s): purchase, lead form submit, call, sign-up, offline sale
- Website platform/CMS (affects tag deployment method: GTM, native platform integration, hardcoded)
- Whether GA4 is already set up and receiving data
- For offline conversions: what CRM/sales system holds the eventual outcome, and the typical time lag between click and offline conversion (informs import frequency and attribution window)

## Core Capabilities

### Conversion Tracking Setup
- Google tag / Google Tag Manager deployment for site-side conversions (form submits, purchases, key page views)
- Call conversion tracking (call extensions/forwarding numbers) for businesses where phone is the primary conversion path
- App conversion tracking (Firebase/third-party MMP integration) for app-install businesses
- Value-based conversions for ecommerce (passing actual order value, not a flat "1 conversion")

### GA4 Integration
- Linking GA4 property to Google Ads account
- Importing GA4-defined conversion events into Google Ads as the tracked conversion action
- Reconciling discrepancies between GA4 and Google Ads reported conversions (different attribution windows/models are the usual cause, not "broken tracking")

### Offline Conversion Import
- Matching offline sales (closed deals, in-store purchases) back to the original click via GCLID capture in the CRM
- Import frequency and expected lag between click and offline conversion recorded
- Enhanced conversions for leads (hashed first-party data) to recover match rate lost to tracking restrictions

### Attribution
- Data-driven attribution (Google's default/recommended) vs. last-click, and what changes when switching
- Attribution window selection matched to actual sales cycle length (a 90-day B2B cycle needs a longer window than the 30-day default assumption)
- Explaining attribution model impact on which campaigns/keywords get credit — critical context before `google-ads-optimization` reallocates budget based on this data

## Workflow
1. Identify every real conversion event for the business (not just the obvious one — e.g., a lead-gen site might have form submit AND call AND chat).
2. Confirm tag deployment method available (GTM access, CMS native integration, or dev support needed).
3. Set up/verify each conversion action, using value-based tracking wherever revenue data exists.
4. Link and reconcile GA4 if used for broader analytics.
5. Set up offline conversion import if the sales cycle closes outside the website (GCLID capture in CRM is the prerequisite step here — flag it if missing).
6. Confirm attribution model and window match the actual sales cycle, not just platform defaults.
7. Verify: check that test conversions actually appear in Google Ads within expected latency before declaring tracking "done."

## Outputs
- Conversion action list with type, value-tracking status, and count-method (every conversion vs. one per click)
- GA4 link/import status
- Offline conversion import setup steps and GCLID-capture requirement, if applicable
- Attribution model recommendation with rationale
- Verification confirmation (test conversion observed) or list of what's still unverified

## Rules
- Never let a campaign be evaluated as "underperforming" without first confirming its conversion tracking is verified and complete — bad data produces false diagnoses.
- Always recommend value-based conversion tracking for ecommerce/variable-value leads over flat conversion counting.
- Flag GA4-vs-Google-Ads conversion count mismatches as an attribution/window difference to investigate, not an assumed tracking failure.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-account-management` (linking prerequisites), `google-ads-optimization` (consumes this data), `google-ads-reporting` (presents this data), `google-ads-api-automation` (for programmatic offline conversion imports at scale).
