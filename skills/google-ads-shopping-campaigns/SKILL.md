---
name: google-ads-shopping-campaigns
description: "Build and structure standard Shopping campaigns — product groups, bid strategy, and priority settings — as distinct from Performance Max. Triggers on 'set up a Shopping campaign', 'standard Shopping vs PMax', 'product group structure', or 'Shopping campaign priority settings'. Campaign-structure side of Shopping — for the underlying product feed itself see google-ads-shopping-feed."
---

# Google Ads Shopping Campaigns

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build standard Shopping campaign structure — product groups, bid strategy, priority settings — for ecommerce businesses that want more manual control than Performance Max provides, or that run standard Shopping alongside PMax deliberately.

## Trigger Conditions
- "Set up a Shopping campaign"
- "Should I run standard Shopping or Performance Max"
- "Structure my product groups"
- "Shopping campaign priority settings"

## Required Inputs
- Merchant Center feed status (must be linked and healthy — coordinate with `google-ads-shopping-feed`)
- Product catalog structure: categories, brands, custom labels available for segmentation
- Whether this runs standalone or alongside a PMax campaign (priority conflict management needed if both exist)
- Budget and bid strategy preference (manual CPC for control, or Target ROAS once enough conversion data exists)

## Core Capabilities

### Standard Shopping vs. Performance Max
- Standard Shopping offers channel isolation (Shopping results only, no Display/YouTube/Search text ad mixing) and more granular bid control per product group — the deliberate reason to choose it over PMax
- Common pattern: standard Shopping for granular control over top-revenue/high-margin products, PMax for full-inventory coverage of the long tail — requires priority settings to avoid both competing for the same auction
- Google's default push toward PMax means standard Shopping still exists but requires deliberate setup, not the path of least resistance

### Product Group Structure
- Subdividing "All Products" by category, brand, product type, or custom label to enable different bids per segment based on margin/priority
- Custom label strategy for bid-relevant segmentation (bestseller, high-margin, clearance, seasonal) — defined in the feed (`google-ads-shopping-feed`) and consumed here
- Excluding specific products or product groups that shouldn't advertise (out of stock, discontinued, insufficient margin)

### Bid Strategy
- Manual CPC with enhanced CPC for new accounts without conversion history
- Target ROAS once sufficient conversion volume exists (rule-of-thumb minimum conversion history applies, same consideration as other Smart Bidding strategies)
- Bidding by product group tier so high-margin/bestseller segments can bid more aggressively than long-tail segments

### Campaign Priority (Multi-Campaign Feed Use)
- When multiple Shopping/PMax campaigns share the same feed, campaign priority (low/medium/high) determines which campaign's bid wins for a given product — misconfigured priority silently causes one campaign to never spend
- Recommended pattern: higher priority + tighter targeting for a curated "showcase" campaign, lower priority + broader coverage for the catch-all

## Workflow
1. Confirm feed health and linkage before building campaign structure — a broken feed makes campaign structure irrelevant.
2. Decide standard Shopping vs. PMax vs. both, based on the business's need for channel/bid control vs. full-inventory automation.
3. Build product group structure segmented by the dimensions that matter for bidding (margin, bestseller status, category).
4. Set bid strategy matched to available conversion history.
5. If running alongside PMax, configure campaign priority deliberately and verify with impression share data that both campaigns are actually serving as intended.

## Outputs
- Standard Shopping vs. PMax recommendation with rationale
- Product group structure
- Bid strategy recommendation by segment
- Campaign priority configuration, if multiple campaigns share the feed

## Rules
- Never set up standard Shopping and PMax on the same feed without explicit priority configuration — unconfigured overlap causes one campaign to be silently starved of impressions.
- Confirm feed health before any campaign-structure work; campaign quality cannot compensate for a broken or poorly optimized feed.
- Don't recommend Target ROAS bidding without sufficient conversion history to support it — recommend Manual/Enhanced CPC until that threshold is met.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-shopping-feed` (feed prerequisite), `google-ads-performance-max` (the automated alternative/complement), `google-ads-optimization` (ongoing bid/product-group tuning).
