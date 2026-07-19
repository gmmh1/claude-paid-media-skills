---
name: google-ads-account-management
description: "Set up and administer Google Ads accounts. Triggers on 'create a Google Ads account', 'set up Google Ads for my business', 'MCC structure', 'give my agency access', 'billing setup', or 'link conversion tracking/GA4/Merchant Center'. Handles account creation, MCC hierarchy, user access, billing, and linking prerequisites — not campaign building itself."
---

# Google Ads Account Management

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get a Google Ads account (or a multi-client MCC hierarchy) correctly structured, linked, and access-controlled before any campaign work starts. This is the prerequisite skill — nothing built by `google-ads-campaign-builder` can be tracked or billed correctly without this being done first.

## Trigger Conditions
- "Set up a Google Ads account for [business]"
- "I need an MCC / manager account for my agency"
- "Give my [freelancer/agency] access"
- "How do I set up billing"
- "Link my Merchant Center / GA4 / Google Business Profile"

## Required Inputs
- Business legal name, website, billing country/currency
- Whether this is a single account or an agency managing multiple clients (→ MCC)
- Who needs access and at what level (Admin, Standard, Read-only, Email-only)
- Existing assets to link: GA4 property, Google Merchant Center, Google Business Profile, YouTube channel

## Core Capabilities

### Account Setup
- New account creation and business verification requirements
- MCC (manager account) creation for agencies/multi-brand operators
- Sub-account linking under an MCC, ownership vs. management link distinction
- Time zone and currency lock-in warning (irreversible after first billing profile)

### Access & Permissions
- Access levels: Admin, Standard, Read-only, Email-only, and when to use each
- Third-party/agency access via manager-link invitations (not password sharing)
- Removing access cleanly when an agency relationship ends

### Billing
- Manual vs. automatic payments, invoicing eligibility (spend/history thresholds)
- Budget-at-risk considerations: never store this information in shared docs
- Multiple accounts under one billing profile (MCC-level billing)

### Linking Prerequisites
- GA4 property linking (required before `google-ads-measurement` can import conversions)
- Google Merchant Center linking (required for Shopping/PMax with product feeds)
- Google Business Profile linking (required for location extensions/local campaigns)
- YouTube channel linking (required for video ads attributed to the brand channel)

## Workflow
1. Confirm structure: single account, or MCC managing several accounts (agency/multi-brand).
2. Walk through account creation fields (business name, billing country, time zone, currency) and flag that time zone/currency cannot be changed later.
3. Set up billing (manual/automatic) matching the business's cash flow preference.
4. Grant access at the correct level for each stakeholder — never hand out Admin by default.
5. Link GA4, Merchant Center, Business Profile, YouTube as applicable to the business's goals.
6. Hand off to `google-ads-strategy` or `google-ads-campaign-builder` once the account is link-complete.

## Outputs
- Account/MCC structure recommendation
- Access list with levels assigned per stakeholder
- Linking checklist with what's done vs. outstanding
- Flag of any irreversible settings before they're locked in

## Rules
- Never recommend sharing account passwords — always use manager-link or user-invite access.
- Never finalize time zone/currency without explicit user confirmation; it cannot be undone.
- Do not proceed to campaign building until conversion tracking linkage is at least planned (hand off to `google-ads-measurement`).

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-measurement` (conversion tracking setup), `google-ads-campaign-builder` (next step after account is ready), `google-ads-audit` (for auditing an account someone else set up).
