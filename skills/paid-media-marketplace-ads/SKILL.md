---
name: paid-media-marketplace-ads
description: "Build and optimize Amazon Ads and other retail-media advertising (Sponsored Products, Sponsored Brands, Sponsored Display, DSP). Triggers on 'Amazon Ads', 'Sponsored Products campaign', 'Amazon DSP', 'retail media advertising', or 'sell more on Amazon with ads'. A genuinely separate ecosystem from Google/Meta/LinkedIn/TikTok — not covered by those platform libraries."
---

# Paid Media Marketplace Ads (Amazon & Retail Media)

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build and optimize advertising within retail marketplaces — primarily Amazon Ads, plus the broader retail media pattern (Walmart Connect, Target Roundel, Instacart Ads follow similar logic) — a fundamentally different ecosystem from open-web platforms since campaigns run inside a marketplace with its own search behavior, ranking algorithm, and purchase-intent profile.

## Trigger Conditions
- "Set up Amazon Ads for my products"
- "Build a Sponsored Products campaign"
- "Should I use Amazon DSP"
- "Retail media advertising strategy"

## Required Inputs
- Marketplace(s) the business sells on (Amazon primary; note if also on Walmart, Target, Instacart)
- Product catalog and current organic ranking/reviews status (marketplace ads amplify existing listing quality more than they can compensate for a weak one)
- Budget and goals (new product launch visibility, defending market share against competitors, or scaling an already-proven listing)
- ACOS/TACOS targets if the business has historical data

## Core Capabilities

### Amazon Ads Campaign Types
- Sponsored Products: keyword/product-targeted ads appearing in search results and product pages — the default starting point for most sellers, closest in mechanics to Google Shopping/Search
- Sponsored Brands: brand-level ads (logo, headline, multiple products) appearing above search results — better for brand awareness and multi-product showcasing than single-SKU Sponsored Products
- Sponsored Display: retargeting shoppers who viewed the product (on and off Amazon) — Amazon's equivalent of Display/remarketing
- Amazon DSP: programmatic display/video across Amazon-owned and third-party inventory, using Amazon's shopping-behavior data — a more advanced, higher-minimum-spend tool best reserved for brands with established Amazon presence and clear incremental-reach goals beyond Sponsored formats

### Listing Quality Dependency
- Ad performance on Amazon is unusually dependent on organic listing quality (title, images, bullet points, reviews, pricing competitiveness) — flag listing optimization as a prerequisite lever, since strong ads driving traffic to a weak listing (poor images, few reviews, uncompetitive price) waste spend converting at a low rate
- Review volume/rating as a major conversion-rate factor largely outside the ads system itself — a new listing with few reviews should expect a materially lower conversion rate than an established one regardless of ad quality

### Keyword & Targeting Strategy
- Search-term research within Amazon's own search behavior (which often differs from Google's, skewing toward more literal, purchase-ready phrasing) rather than assuming Google keyword research transfers directly
- Automatic vs. manual targeting: automatic campaigns useful for discovery/harvesting new keyword ideas, manual campaigns for precise control once winning terms are identified — a common effective pattern is running both, mining automatic campaign search-term reports to feed manual campaign keyword lists
- Defensive campaigns bidding on the brand's own product terms to prevent competitor ads from capturing branded search traffic

### ACOS/TACOS Optimization
- ACOS (Advertising Cost of Sales) as the primary campaign-level efficiency metric; TACOS (Total ACOS, ad spend against total sales including organic) as the business-level health metric showing whether ads are truly driving incremental revenue or just capturing sales that would have happened organically anyway
- New product launches often justify a higher acceptable ACOS temporarily to build review velocity and organic ranking, which then allows ad spend to taper as organic visibility takes over

### Retail Media Beyond Amazon
- Walmart Connect, Target Roundel, Instacart Ads follow broadly similar Sponsored Products-style mechanics — same core principles (listing quality dependency, search-term research, ACOS-style efficiency metrics) transfer, with each platform's own targeting/reporting specifics needing individual verification at execution time

## Workflow
1. Assess current listing quality (images, reviews, pricing) and flag improvements as a prerequisite alongside/before scaling ad spend.
2. Recommend campaign type mix: Sponsored Products as the default foundation, Sponsored Brands for brand-level goals, Sponsored Display for retargeting, DSP only for established brands with clear incremental-reach goals.
3. Set up automatic campaigns for keyword discovery, feeding winning terms into manual campaigns for control.
4. Set up defensive branded-term campaigns.
5. Set ACOS targets appropriate to the goal (higher for launch/visibility, lower for mature/profitable scaling), and track TACOS as the business-level check.

## Outputs
- Listing quality assessment and improvement flags
- Campaign type recommendation and structure
- Keyword/targeting strategy (automatic-to-manual harvesting plan)
- Defensive branded-campaign recommendation
- ACOS/TACOS targets with rationale

## Rules
- Never recommend scaling ad spend on a listing with clear quality gaps (poor images, thin reviews, uncompetitive pricing) without flagging the listing fix as the higher-priority, cheaper lever first.
- Distinguish ACOS (campaign efficiency) from TACOS (true incremental business impact) explicitly when discussing performance — conflating them misrepresents whether ads are actually growing the business or just reallocating organic sales.
- Recommend defensive branded campaigns as a standard inclusion, not an afterthought, for any brand with meaningful organic branded search volume.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-shopping-feed` (parallel feed-optimization discipline), `paid-media-strategy` (whether marketplace ads fit the overall channel mix).
