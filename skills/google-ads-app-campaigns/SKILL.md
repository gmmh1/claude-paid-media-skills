---
name: google-ads-app-campaigns
description: "Build App campaigns for install and in-app action goals across Search, Display, YouTube, Discover, and Google Play. Triggers on 'set up an App campaign', 'get more app installs', 'app engagement campaign', or 'App campaigns for engagement'. Fully automated app-promotion format — distinct from web-focused campaign types."
---

# Google Ads App Campaigns

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build App campaigns (App Installs and App Engagement/pre-registration variants) — Google's fully automated format for driving app installs and in-app actions across Search, Display, YouTube, Discover, and Google Play from minimal creative inputs.

## Trigger Conditions
- "Set up an App campaign"
- "Get more app installs through Google Ads"
- "Run an app engagement/re-engagement campaign"
- "App pre-registration campaign for Android"

## Required Inputs
- App store listing (iOS App Store and/or Google Play) — the campaign pulls creative and metadata directly from the store listing, so listing quality directly affects ad quality
- Campaign goal: installs, in-app action (e.g., registration, purchase) post-install, or engagement/re-engagement of existing users
- Mobile measurement partner (MMP) or Firebase/Google Analytics for Firebase integration status — required for the app to report conversion events back to Google Ads
- Creative assets beyond the store listing: text ideas, images, video (optional but improves performance beyond auto-generated creative)
- Target CPI (cost-per-install) or CPA for the desired in-app action, and budget

## Core Capabilities

### Campaign Type Selection
- App Installs campaign: optimizes for install volume, or for install + a specific in-app action if conversion tracking supports it
- App Engagement campaign: targets existing app users to re-engage them (requires linking the app's user base via deep links) — a retention play, not acquisition
- Pre-registration campaigns (Android): building install intent before an app's launch date

### Conversion Tracking Prerequisite
- Firebase/Google Analytics for Firebase or an approved third-party MMP (e.g., AppsFlyer, Adjust) must be integrated before the campaign can optimize toward in-app actions rather than raw installs
- Deep linking setup required for App Engagement campaigns to route existing users to specific in-app content
- This is a hard blocking prerequisite — flag it before setting install-cost or CPA targets that assume tracking exists

### Creative Inputs
- The algorithm assembles ads from supplied text, images, and video across all placements automatically — App campaigns give far less manual creative control than other campaign types by design
- Supplying strong, varied text ideas (headlines/descriptions) and multiple images/video still meaningfully improves output quality over relying purely on store-listing scraping
- Video assets, if supplied, get used across YouTube placements within the same campaign — same "native, hook-first" creative principles as `google-ads-video` apply

### Bidding & Budget
- Target CPI for install-focused campaigns, Target CPA for in-app-action-focused campaigns, Target ROAS for campaigns optimizing toward in-app purchase value
- Budget needs to support enough install/conversion volume for the algorithm to learn — thin budgets on App campaigns tend to underperform disproportionately since there's minimal manual control to compensate

### Store Listing Optimization (Adjacent, High-Leverage)
- Store listing quality (screenshots, description, ratings) directly affects both organic app-store conversion and paid App campaign performance, since ad creative is partly sourced from it — flag store listing improvement as a lever even though it sits outside Google Ads itself

## Workflow
1. Confirm conversion tracking (Firebase/MMP) is integrated before setting any CPA/ROAS-based target — install-only tracking is the fallback if it isn't.
2. Clarify goal: install volume, in-app action, or re-engagement of existing users.
3. Review store listing quality and flag improvements, since it feeds ad creative directly.
4. Supply the richest possible set of text/image/video creative inputs, don't rely solely on auto-scraped store assets.
5. Set bidding target (CPI/CPA/ROAS) matched to goal and realistic given current conversion volume.
6. Set expectations that manual optimization levers are minimal by design — most iteration happens through creative asset refresh and target adjustment, not granular targeting control.

## Outputs
- Campaign type recommendation (Installs / Engagement / Pre-registration)
- Conversion tracking prerequisite checklist (Firebase/MMP integration, deep linking if engagement-focused)
- Creative asset brief
- Bidding target recommendation
- Store listing improvement flags, if relevant

## Rules
- Never set a CPA or ROAS bidding target without confirming in-app conversion tracking is actually integrated — an untracked App campaign can only optimize toward raw installs, not the real business goal.
- Flag App Engagement campaigns as requiring deep linking setup — they will not function as intended without it.
- Set realistic expectations about minimal manual control in this format; don't imply the granular targeting/placement control available in Search or Display applies here.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-measurement` (Firebase/MMP conversion tracking setup), `google-ads-video` (video asset principles for YouTube placements within App campaigns), `google-ads-campaign-builder` (overall campaign type fit for app-install businesses).
