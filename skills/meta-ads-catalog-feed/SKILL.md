---
name: meta-ads-catalog-feed
description: "Set up and optimize a Meta Commerce Manager product catalog for Advantage+ Shopping and dynamic ads. Triggers on 'set up my Meta product catalog', 'Commerce Manager feed errors', 'my dynamic ads aren't showing', or 'optimize my catalog for Meta'. Feed-level work underneath meta-ads-advantage-plus."
---

# Meta Ads Catalog & Feed

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get a Meta Commerce Manager product catalog structured, populated, and optimized so Advantage+ Shopping and dynamic (retargeting) ads have accurate, competitive product data to serve against.

## Trigger Conditions
- "Set up a product catalog for Meta Ads"
- "Commerce Manager feed errors / disapprovals"
- "My dynamic product ads aren't showing"
- "Optimize my catalog titles/images"

## Required Inputs
- Feed source (ecommerce platform native integration, scheduled feed URL, or manual upload)
- Product catalog size and category
- Current feed health status, if known
- Whether dynamic remarketing (retargeting past viewers/cart abandoners) is a goal, which requires event tracking tied to catalog product IDs

## Core Capabilities

### Feed Structure & Required Attributes
- Required fields (id, title, description, availability, condition, price, link, image_link, brand) and category-specific requirements (apparel needs size/color/gender/age_group)
- GTIN/MPN requirements similar in spirit to Google Merchant Center — flag exemption cases
- Product category/Google product taxonomy mapping, since Meta also uses standardized categories for catalog organization

### Title & Content Optimization
- Search/browse-friendly titles front-loading brand + product type + key attributes
- Image requirements: clean, non-promotional-text-heavy primary images perform better in feed placements than assets designed for other channels

### Feed Health & Diagnostics
- Reading Commerce Manager diagnostics for item-level errors/warnings vs. full feed-level failures
- Common causes: price/availability mismatch with the live page, missing required category attributes, image policy violations
- Price/availability accuracy is both a policy and conversion-trust issue, same as the Google equivalent

### Dynamic Ads & Catalog Events
- Dynamic ads require catalog-linked pixel/CAPI events (ViewContent, AddToCart, Purchase with matching product IDs) — coordinate with `meta-ads-pixel-capi`
- Product sets for segmenting the catalog (bestsellers, category, margin tier) used both for Advantage+ Shopping prioritization and for building targeted dynamic retargeting ad sets (viewed-not-purchased, cart abandoners)

### Feed Rules
- Feed rules for transforming/enriching data at scale without touching the source feed (e.g., appending brand to title, filtering out-of-stock items automatically)
- Supplemental feeds for data the primary feed source lacks

## Workflow
1. Confirm feed source and pull current health status from Commerce Manager.
2. Fix errors/disapprovals first — these block catalog items from serving entirely.
3. Optimize titles/images for the highest-revenue or worst-performing products first.
4. Verify price/availability accuracy against live pages.
5. Set up product sets for segmentation (Advantage+ prioritization and dynamic retargeting audiences).
6. Confirm catalog-linked event tracking is live for dynamic ads to function.
7. Hand off segmented catalog to `meta-ads-advantage-plus` and dynamic retargeting ad sets.

## Outputs
- Feed health summary with root causes
- Optimized title/image guidance by category
- Product set segmentation scheme
- Dynamic ads event-tracking verification status

## Rules
- Always fix feed errors before optimization work — disapproved items get zero delivery regardless of title/image quality.
- Never let catalog price/availability drift from the live product page.
- Don't recommend dynamic retargeting ads without confirming catalog-linked events are firing correctly first.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-advantage-plus` (primary consumer of catalog data), `meta-ads-pixel-capi` (catalog-linked event tracking), `meta-ads-account-management` (Commerce Manager connection).
