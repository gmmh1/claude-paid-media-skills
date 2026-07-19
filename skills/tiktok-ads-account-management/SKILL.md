---
name: tiktok-ads-account-management
description: "Set up and administer TikTok Ads Manager and Business Center accounts. Triggers on 'set up TikTok Ads Manager', 'create a TikTok ad account', 'give my agency access to TikTok Ads', or 'connect TikTok Shop to my ad account'. Prerequisite skill before campaign work."
---

# TikTok Ads Account Management

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get TikTok Business Center, ad accounts, and asset connections (TikTok profile, TikTok Shop, Pixel) correctly structured and access-controlled before campaign work starts.

## Trigger Conditions
- "Set up TikTok Ads Manager for [business]"
- "Create a TikTok ad account"
- "Give my agency/freelancer access"
- "Connect TikTok Shop to my ad account"

## Required Inputs
- Business legal name, billing country/currency
- Assets to connect: TikTok business profile, TikTok Shop, Pixel
- Who needs access and at what role
- Whether this is agency-managed or in-house

## Core Capabilities

### Business Center & Account Setup
- Business Center creation as the top-level structure for managing ad accounts, assets, and team access (analogous to Meta's Business Manager)
- Ad account creation with currency/billing setup and business verification requirements, which have grown stricter for certain categories and spend levels
- Asset connection: TikTok profile (organic account), TikTok Shop, Pixel/Events API setup

### Access & Permissions
- Role-based access within Business Center (Admin, Standard, Analyst-equivalent roles) matched to actual need
- Partner/agency access via Business Center sharing rather than individual credential handoff
- Asset-level permission granularity where supported (ad account only vs. full Business Center admin)

### Billing
- Payment method and billing setup, spend limits as a budget-safety measure
- Multiple ad accounts under one Business Center for multi-brand operators

### TikTok Shop Integration
- Connecting TikTok Shop to the ad account as a prerequisite for Shop ads and product-linked campaigns — coordinate with `tiktok-shop-organic` for the Shop setup itself
- Catalog/product feed connection for Shop-driven ad campaigns

## Workflow
1. Confirm Business Center status (new or existing) and assets to connect.
2. Create/verify Business Center and complete business verification if required.
3. Create the ad account with correct currency/billing.
4. Connect TikTok profile, Shop, and Pixel as applicable.
5. Grant access matched to each stakeholder's actual need.
6. Hand off to `tiktok-ads-strategy` or `tiktok-ads-campaign-builder`.

## Outputs
- Business Center/ad account structure
- Asset connection checklist (profile, Shop, Pixel)
- Access list with roles assigned
- Billing setup confirmation

## Rules
- Never grant full Business Center Admin access when a narrower role covers the actual need.
- Never finalize ad account currency without explicit confirmation — difficult to change later.
- Confirm business verification requirements early for regulated or high-spend categories, since this can introduce launch delays if not anticipated.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`tiktok-ads-pixel-events` (tracking setup after account creation), `tiktok-shop-organic` (Shop setup), `tiktok-ads-campaign-builder` (next step).
