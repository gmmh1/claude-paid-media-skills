---
name: google-ads-shopping-feed
description: "Optimize a Google Merchant Center product feed for Shopping and Performance Max campaigns. Triggers on 'optimize my product feed', 'my Shopping ads aren't showing', 'Merchant Center disapprovals', 'improve my product titles for Shopping', or 'feed rules/supplemental feed'. Feed-level work — for campaign structure around the feed, see google-ads-campaign-builder."
---

# Google Ads Shopping Feed

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get a Merchant Center product feed structured, populated, and optimized so Shopping and Performance Max campaigns have accurate, competitive, policy-compliant product data to serve against.

## Trigger Conditions
- "Optimize my product feed for Shopping/PMax"
- "My Shopping ads aren't showing for [product]"
- "Merchant Center disapprovals / feed errors"
- "Improve my product titles/images for Shopping"

## Required Inputs
- Merchant Center account access status and feed source (native ecommerce platform integration, scheduled fetch, or manual upload)
- Product catalog size and category
- Current feed health status (disapprovals, warnings, if known)
- Whether promotions/sales pricing need to be reflected dynamically

## Core Capabilities

### Feed Structure & Attributes
- Required attributes (id, title, description, link, image, price, availability, GTIN/MPN/brand) and category-specific required attributes (e.g., apparel needs size/color/gender)
- GTIN requirement nuance — most products need one; flag when a product legitimately qualifies for an exemption
- Product category (Google product taxonomy) accuracy — miscategorization suppresses Shopping eligibility and PMax asset group matching

### Title & Description Optimization
- Front-load titles with the terms buyers actually search (brand + product type + key attributes) rather than internal SKU naming
- Category-specific title formulas (apparel: brand + gender + product type + attribute + size/color; electronics: brand + model + key spec)
- Descriptions should expand on attributes/use case, not duplicate the title verbatim

### Feed Health & Diagnostics
- Reading Merchant Center diagnostics: disapprovals (policy) vs. warnings (missing/weak data) vs. demoted items
- Common disapproval causes: missing GTIN, price/availability mismatch with landing page, prohibited content, image policy violations (watermarks, placeholder images, text overlay)
- Price/availability accuracy — mismatches between feed and landing page are both a policy risk and a user-trust/conversion killer

### Feed Rules & Supplemental Feeds
- Feed rules for transforming/enriching data at scale (e.g., appending brand to title, normalizing GTIN format) without editing the source feed
- Supplemental feeds for adding data the primary feed lacks (custom labels for segmentation, promotional overlays)
- Custom labels for grouping products by margin, season, bestseller status — used later for bid/campaign segmentation in `google-ads-campaign-builder`/`google-ads-optimization`

### Feed-Driven Segmentation
- Custom labels enabling priority-based campaign structuring (bestsellers vs. long-tail, high-margin vs. low-margin)
- This segmentation is what makes Shopping/PMax bid strategy meaningfully controllable rather than one flat pool of products

## Workflow
1. Confirm feed source and current health status (pull Merchant Center diagnostics if available).
2. Fix disapprovals/critical errors first — these fully block impressions for affected products.
3. Audit and rewrite titles/descriptions for the highest-value or worst-performing products first, not the whole catalog uniformly.
4. Verify price/availability accuracy against live landing pages.
5. Set up custom labels for segmentation if the account will need tiered bidding by product priority.
6. Recommend feed rules/supplemental feeds for any systematic data gaps rather than manual one-off fixes.
7. Hand off segmented feed structure to `google-ads-campaign-builder` for Shopping/PMax campaign structuring.

## Outputs
- Feed health summary (disapprovals/warnings, root causes)
- Optimized title/description formulas by product category
- Custom label segmentation scheme recommendation
- Feed rule recommendations for systematic fixes

## Rules
- Always fix disapprovals before optimization work — a disapproved product gets zero impressions regardless of how good its title is.
- Never let feed price/availability drift from the live landing page; this is both a policy violation risk and a direct trust/conversion problem.
- Don't rewrite an entire large catalog's titles uniformly without prioritizing by revenue/impression share first.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (Shopping/PMax campaign structure), `google-ads-optimization` (product-level performance tuning), `google-ads-compliance` (feed policy issues), `google-ads-account-management` (Merchant Center linking).
