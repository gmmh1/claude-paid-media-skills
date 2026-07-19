---
name: google-ads-localization
description: "Expand a Google Ads campaign into a new country or language market. Triggers on 'localize my Google Ads', 'expand my campaign to [country]', 'run Google Ads in [language]', or 'translate my ads for a new market'. Handles market-specific structure, language, and compliance — not the initial campaign build (see google-ads-campaign-builder)."
---

# Google Ads Localization

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Adapt an existing (or new) Google Ads campaign for a specific country/language market — correctly, not just via literal translation.

## Trigger Conditions
- "Localize my Google Ads for [country]"
- "Expand my campaign to [new market]"
- "Run Google Ads in [language]"
- "Translate my ads" (flag that translation alone is insufficient — see below)

## Required Inputs
- Target country/language market(s)
- Whether this is a net-new campaign for the market or an expansion of an existing campaign
- Local currency and whether billing/account currency needs to change (it typically can't be changed on an existing account — may require a new account)
- Any local competitors, regulations, or cultural context already known

## Core Capabilities

### Structural Localization
- Separate campaigns per country/language (Google recommends this over mixing languages in one campaign) — language and location targeting should be set per-campaign, not assumed from geography alone
- Keyword research done natively in-market, not just translated from the source-market keyword list — search behavior and phrasing differ by market even for the same product
- Currency/budget conversion and local market CPC benchmarks (a $2 CPC market and a $0.20 CPC market need very different budget-per-click assumptions)

### Language & Copy Adaptation
- True transcreation, not literal translation — idioms, CTAs, and persuasion angles that work in one language often fall flat or read as awkward machine-translation in another
- Local currency formatting, date formats, and units in ad copy and extensions
- Route actual copy generation to `google-ads-copywriting` once the local angle/offer is defined, but supply the market-specific brief

### Regulatory & Compliance Localization
- Country-specific Google Ads policy variations (some categories restricted differently by region — gambling, pharma, financial services, alcohol)
- Local advertising law considerations (e.g., mandatory disclosures) — route to `google-ads-compliance` with the specific market flagged
- Data/privacy considerations affecting tracking setup in the new market (may affect `google-ads-measurement` configuration)

### Local Market Research
- Local competitor presence and positioning (differs from source market — a category leader at home may be unknown elsewhere)
- Local search volume/demand validation before assuming source-market keyword strategy transfers directly

## Workflow
1. Confirm target market(s), and whether this needs a new account/currency or fits under the existing one.
2. Research local search behavior/keywords natively — don't just translate the source keyword list.
3. Define the local offer/angle (pricing, promotions, and messaging may need to differ, not just the language).
4. Brief `google-ads-copywriting` for market-specific transcreated copy.
5. Check country-specific policy variations via `google-ads-compliance` before launch.
6. Confirm tracking setup accounts for any local privacy/consent requirements.
7. Set campaign-level language and location targeting explicitly — never rely on defaults.

## Outputs
- Market-specific campaign structure recommendation
- Localized (transcreated, not translated) keyword and copy brief
- Currency/budget conversion with local CPC benchmark context
- Compliance flags specific to the target market
- Launch checklist for the new-market campaign

## Rules
- Never ship literal machine-translated copy as final — always frame it as a first draft requiring transcreation review, ideally by a native speaker.
- Never assume a source-market keyword list transfers directly — search intent and phrasing vary by market even for identical products.
- Always check for market-specific policy/regulatory differences before recommending launch; a compliant ad in one country can be a policy violation in another.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (base structure), `google-ads-copywriting` (transcreated copy execution), `google-ads-compliance` (market-specific policy check), `google-ads-measurement` (privacy/consent-aware tracking setup).
