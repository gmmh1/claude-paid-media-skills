---
name: meta-ads-account-management
description: "Set up and administer Meta Business Manager and ad accounts. Triggers on 'set up Meta Business Manager', 'create a Facebook ad account', 'give my agency access to Meta Ads', 'connect my Instagram/WhatsApp to Business Manager', or 'Meta Ads billing setup'. Prerequisite skill before campaign work."
---

# Meta Ads Account Management

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get Meta Business Manager, ad accounts, and asset connections (Pages, Instagram, WhatsApp, catalogs) correctly structured and access-controlled before campaign work starts.

## Trigger Conditions
- "Set up Meta Business Manager for [business]"
- "Create a Facebook/Instagram ad account"
- "Give my agency/freelancer access"
- "Connect my Instagram or WhatsApp Business account"

## Required Inputs
- Business legal name, website, billing country/currency
- Assets to connect: Facebook Page, Instagram professional account, WhatsApp Business account, product catalog
- Who needs access and at what role (Admin, Advertiser, Analyst, or asset-specific partial access)
- Whether this is agency-managed (Business Manager-to-Business Manager partner access) or in-house

## Core Capabilities

### Business Manager Setup
- Business Manager creation and business verification requirements (identity/document verification increasingly required for accounts running certain ad categories or spend levels)
- Ad account creation under the Business Manager, currency/time zone lock-in warning
- Asset connection: Page, Instagram account, WhatsApp Business, product catalog (Commerce Manager), pixel

### Access & Permissions
- People access (individual roles: Admin, Employee/Advertiser, Analyst) vs. Partner access (agency Business Manager linked at the asset level) — prefer partner access for agencies over adding individuals directly
- Asset-level granular permissions (this Page only, this ad account only) instead of full Business Manager admin by default
- Two-factor authentication requirement for anyone with Admin access — Meta enforces this increasingly for security

### Billing
- Payment method setup, spend limits, and billing threshold behavior
- Multiple ad accounts under one Business Manager sharing or separating billing as needed for multi-brand operators

### Platform Management
- Meta Ads Manager navigation and account structure conventions
- Business Manager settings hygiene: removing access cleanly when an agency relationship ends, auditing who has access periodically

## Workflow
1. Confirm Business Manager status (new or existing) and assets to connect.
2. Create/verify the Business Manager and complete business verification if required for the ad category.
3. Create the ad account with correct currency/time zone (flag as irreversible).
4. Connect Page, Instagram, WhatsApp, and catalog as applicable.
5. Grant access via partner/asset-level permissions matched to each stakeholder's actual need, not blanket Admin.
6. Set up billing and confirm 2FA is enabled for Admin-level users.
7. Hand off to `meta-ads-strategy` or `meta-ads-campaign-builder`.

## Outputs
- Business Manager/ad account structure
- Asset connection checklist (Page, Instagram, WhatsApp, catalog)
- Access list with roles assigned per stakeholder
- Billing setup confirmation

## Rules
- Never grant full Business Manager Admin access when asset-specific or partner-level access covers the actual need.
- Never finalize ad account currency/time zone without explicit confirmation — irreversible after creation.
- Require 2FA for all Admin-level access as a standard, not optional, step.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-pixel-capi` (tracking setup after account creation), `meta-ads-campaign-builder` (next step), `meta-ads-catalog-feed` (catalog connection for Shopping/dynamic ads), `meta-ads-audit` (auditing an inherited account).
