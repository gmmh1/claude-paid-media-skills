---
name: ecommerce-creative-system
description: "Build product-forward creative patterns reusable across ad platforms — product hero shots, lifestyle imagery, comparison/demo formats, and catalog-scale creative systems. Triggers on 'ecommerce ad creative', 'product photography for ads', 'creative system for my catalog', or 'how should I show this product across platforms'. Cross-platform ecommerce creative patterns feeding platform-specific execution."
---

# Ecommerce Creative System

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Provide reusable product-forward creative patterns — the shot types, demonstration formats, and catalog-scale systems that work across Google Shopping/PMax, Meta catalog ads, and TikTok Shop — so ecommerce businesses build one coherent creative system rather than reinventing product presentation per platform.

## Trigger Conditions
- "Build ecommerce ad creative for my products"
- "What product photography do I need for ads"
- "Creative system for my whole catalog"
- "How should I show this product across different platforms"

## Required Inputs
- Product catalog size and category (single hero product vs. large multi-SKU catalog changes the creative approach significantly)
- Target platforms (affects format/style requirements)
- Existing product photography/video assets
- Price point and consideration level (impulse-buy low-consideration items need different creative than higher-consideration purchases)

## Core Capabilities

### Core Shot Types
- **Hero/clean product shot**: the foundational asset (white/neutral background, accurate color/detail) required for feed listings, Shopping/PMax feed images, and catalog-driven dynamic ads — this is infrastructure, not optional
- **Lifestyle/in-context shot**: product in real use/environment, builds desire and demonstrates scale/application — stronger for top-funnel and native-feed placements (Meta Feed, Instagram) than for pure feed/Shopping listings
- **Comparison/demonstration**: before/after, size comparison, feature callouts — effective for considered purchases where the buyer needs more information before converting
- **UGC-style/authentic use**: real (or convincingly native-feeling) usage content, the strongest-performing pattern for TikTok and increasingly competitive on Meta — coordinate with `tiktok-ads-creative-strategy` and `meta-ads-video-reels` for platform execution

### Catalog-Scale Creative Systems
- For large catalogs, establishing a repeatable shot template/system (consistent background, lighting, framing) that scales across hundreds/thousands of SKUs efficiently, rather than bespoke creative per product
- Prioritizing bespoke, higher-production creative for bestsellers/high-margin products and using the systematized template for the long tail — matching production investment to revenue concentration
- Custom labels/product segmentation (coordinate with `google-ads-shopping-feed`/`meta-ads-catalog-feed`) determining which products get premium creative treatment vs. template treatment

### Format Translation Across Platforms
- The same product needs different creative treatment per platform: clean hero shot for Shopping/PMax feed, native UGC-style video for TikTok, a mix of lifestyle and hero content for Meta feed/Stories/Reels
- Building each product's asset library once with platform-specific derivatives planned from the start, rather than treating each platform's creative as a separate production effort

### Demonstration & Proof Patterns
- Size/scale reference (showing the product against a recognizable object or in use) to reduce purchase hesitation from uncertainty about actual dimensions — a common ecommerce conversion blocker
- Ingredient/material/feature close-ups for categories where quality perception depends on visible detail
- Social proof integration (review counts, ratings) overlaid on creative where platform format allows

## Workflow
1. Assess catalog size/category and existing asset inventory.
2. Establish the core hero-shot standard as baseline infrastructure for feed/Shopping use.
3. Prioritize bestsellers/high-margin products for bespoke lifestyle/demonstration/UGC-style creative; apply a systematized template to the long tail.
4. Plan platform-specific derivatives from each product's core asset set rather than separate per-platform production efforts.
5. Route platform-native execution to the relevant platform's creative skill (`tiktok-ads-creative-strategy`, `meta-ads-creative-strategy`, `google-ads-shopping-feed` image requirements).

## Outputs
- Core shot-type recommendation per product/catalog tier
- Catalog-scale creative system/template recommendation
- Platform-specific derivative plan per asset
- Production investment prioritization by revenue concentration

## Rules
- Never let hero/clean product shots be an afterthought — they're required infrastructure for Shopping/PMax/catalog ads, not just one creative option among several.
- Match production investment to revenue concentration — bespoke creative for bestsellers, systematized templates for the long tail, not uniform treatment across a large catalog.
- Plan platform-specific derivatives from one core asset set rather than treating each platform as a separate production effort.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-shopping-feed`, `meta-ads-catalog-feed` (feed image requirements), `tiktok-ads-creative-strategy` (UGC execution), `meta-ads-video-reels` (lifestyle/demo video execution), `ai-creative-generation` (scaling shot variants).
