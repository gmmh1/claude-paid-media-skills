---
name: linkedin-ads-account-management
description: "Set up and administer LinkedIn Campaign Manager accounts. Triggers on 'set up LinkedIn Campaign Manager', 'create a LinkedIn ad account', 'give my agency access to LinkedIn Ads', or 'connect my Company Page to Campaign Manager'. Prerequisite skill before campaign work."
---

# LinkedIn Ads Account Management

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get LinkedIn Campaign Manager, ad accounts, and Company Page connections correctly structured and access-controlled before campaign work starts.

## Trigger Conditions
- "Set up LinkedIn Campaign Manager for [business]"
- "Create a LinkedIn ad account"
- "Give my agency/freelancer access"
- "Connect my Company Page"

## Required Inputs
- Business legal name, Company Page status (must exist and be linked)
- Billing country/currency
- Who needs access and at what role (Account Manager, Campaign Manager, Creative, Viewer)
- Whether this is agency-managed (partner access) or in-house

## Core Capabilities

### Account Setup
- Campaign Manager account creation, linked to a Company Page (required — LinkedIn ads run through a Page identity, unlike some platforms)
- Ad account creation with currency/billing setup
- Multiple ad accounts under one Campaign Manager for multi-brand operators

### Access & Permissions
- Role-based access: Account Manager (full control), Campaign Manager (campaign-level, no billing), Creative Manager, Viewer — matching role to actual need rather than defaulting to Account Manager
- Company Page admin access as a separate, related permission (needed for organic content and for the Page itself, distinct from Campaign Manager ad account access)
- Agency access via a shared Campaign Manager invite rather than individual credential sharing

### Billing
- Payment method and billing threshold setup
- Spend caps at the campaign/account level as a budget-safety measure, especially relevant given LinkedIn's higher CPC profile

### Platform Management
- Campaign Manager navigation and account structure conventions
- Periodic access audits, removing agency/freelancer access cleanly when relationships end

## Workflow
1. Confirm Company Page exists and is accessible; this is a hard prerequisite.
2. Create/verify Campaign Manager account linked to that Page.
3. Set up billing and currency (flag as difficult to change later).
4. Grant role-based access matched to each stakeholder's actual need.
5. Set spend caps appropriate to the account's budget given LinkedIn's cost profile.
6. Hand off to `linkedin-ads-strategy` or `linkedin-ads-campaign-builder`.

## Outputs
- Campaign Manager/ad account structure
- Company Page connection confirmation
- Access list with roles assigned
- Billing and spend-cap setup

## Rules
- Never proceed with campaign building without a connected, accessible Company Page — it's a structural prerequisite on LinkedIn specifically.
- Never grant Account Manager (full/billing) access when Campaign Manager or Creative-level access covers the actual need.
- Recommend spend caps given LinkedIn's higher cost-per-result profile, to prevent budget surprises for new accounts.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`linkedin-ads-measurement` (Insight Tag setup after account creation), `linkedin-ads-campaign-builder` (next step), `linkedin-organic-growth` (Company Page organic use, distinct permission but same asset).
