---
name: meta-ads-localization
description: "Expand a Meta Ads campaign into a new country or language market. Triggers on 'localize my Meta Ads', 'expand my Facebook campaign to [country]', 'run Instagram ads in [language]', or 'translate my Meta ad copy for a new market'. Market-specific structure, creative, and compliance — not the initial campaign build."
---

# Meta Ads Localization

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Adapt an existing or new Meta campaign for a specific country/language market — genuinely, through transcreation and local research, not literal translation.

## Trigger Conditions
- "Localize my Meta Ads for [country]"
- "Expand my Facebook/Instagram campaign to [new market]"
- "Run ads in [language]"
- "Translate my ad copy for a new market"

## Required Inputs
- Target country/language market(s)
- Whether this is a net-new campaign or an expansion of an existing one
- Local currency/billing considerations
- Cultural/regulatory context already known about the target market

## Core Capabilities

### Structural Localization
- Separate campaigns/ad sets per language market rather than mixing languages within one ad set
- Local platform usage patterns: Meta's platform mix (Facebook vs. Instagram vs. WhatsApp weighting) varies significantly by market and age demographic — don't assume the source market's platform split transfers directly
- Currency/budget conversion with local CPM/CPC benchmark context, since auction pricing varies widely by market maturity and competition

### Creative & Copy Transcreation
- True transcreation of hooks, offers, and CTAs rather than literal translation — idioms and persuasion styles that work in one culture often read as awkward or ineffective in another
- Visual/creative cultural fit: models, settings, color associations, and gestures that read appropriately in the target market (what performs in one region can misread or offend in another)
- Route copy execution to `meta-ads-copywriting` with a market-specific brief once the local angle/offer is defined

### Compliance Localization
- Country-specific ad policy variations (Meta enforces some categories differently by region — alcohol, gambling, financial services, health claims, political ads with their own disclosure regime in many markets)
- Local advertising law considerations beyond Meta's own policy (mandatory disclosures, data/privacy regimes affecting targeting and tracking)
- Data/privacy considerations affecting Custom Audience and Pixel/CAPI configuration in the new market — coordinate with `meta-ads-pixel-capi`

### Local Market Research
- Local competitor presence via `meta-ads-library-intelligence`, scoped to the target market/language, since the source market's competitive landscape rarely transfers directly
- Local demand/audience research before assuming source-market audience definitions and interests transfer

## Workflow
1. Confirm target market(s) and whether currency/billing needs a new setup.
2. Research local platform usage patterns and competitive landscape for the target market specifically.
3. Define the local offer/angle — pricing, promotions, and messaging may need to differ, not just the language.
4. Brief `meta-ads-copywriting` for market-specific transcreated copy, and adapt visual creative for cultural fit.
5. Check country-specific policy/regulatory variations before launch.
6. Confirm tracking setup accounts for local privacy/consent requirements.
7. Set language/location targeting explicitly per campaign.

## Outputs
- Market-specific campaign structure recommendation
- Transcreated (not translated) copy and creative brief
- Currency/budget conversion with local benchmark context
- Compliance flags specific to the target market
- Local competitive research summary

## Rules
- Never ship literal machine-translated copy as final — frame it as a first draft requiring native-speaker transcreation review.
- Never assume source-market audience/interest definitions or platform-mix assumptions transfer directly to a new market.
- Always check market-specific policy/regulatory differences before recommending launch.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-copywriting` (transcreated copy execution), `meta-ads-library-intelligence` (local competitive research), `meta-ads-pixel-capi` (privacy-aware tracking setup), `meta-ads-campaign-builder` (base structure).
