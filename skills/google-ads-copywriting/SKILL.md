---
name: google-ads-copywriting
description: "Write Google Ads copy — Responsive Search Ad headlines/descriptions, Performance Max asset text, extensions, and Display/Demand Gen copy. Triggers on 'write Google Ads copy', 'RSA headlines', 'write ad descriptions', 'sitelinks/callouts copy', or 'improve my Google Ads copy'. Focused on the words themselves within Google's exact character limits and policy constraints — for full campaign structure see google-ads-campaign-builder."
---

# Google Ads Copywriting

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Write high-converting Google Ads copy that fits Google's exact character limits, matches search intent, and survives policy review.

## Trigger Conditions
- "Write RSA headlines/descriptions for [product]"
- "Improve my Google Ads copy"
- "Write sitelinks/callouts for [business]"
- "Give me ad copy variants for testing"

## Required Inputs
- Product/service and core offer
- Target keyword(s) or search intent this ad group is built around
- Audience pain point(s) the offer solves
- Landing page URL (copy must promise only what the page delivers)
- Brand voice constraints, if any

## Core Capabilities

### Responsive Search Ads
- Headlines: up to 15, each ≤ 30 characters, mix of keyword-insertion, benefit, offer, and brand headlines so Google's combinatorial testing has real variety (not 15 near-duplicates)
- Descriptions: up to 4, each ≤ 90 characters, lead with benefit or proof, end with a soft or direct CTA
- Pinning guidance: pin sparingly (usually only brand/compliance-required headlines) — over-pinning kills RSA's optimization value

### Copywriting Frameworks
- AIDA, PAS, Before/After for descriptions where there's room to build a case
- Benefit-first headlines for high-intent transactional keywords ("Buy," "Order," "Near Me")
- Question/curiosity headlines for informational or comparison-stage keywords
- Numbers and specificity (price, timeframe, quantity) outperform vague claims — use them when true and substantiated

### Extensions/Assets
- Sitelinks: distinct destinations (Pricing, Reviews, Contact, specific category pages), each with its own 25-char headline + 2×35-char description lines
- Callouts: short trust/benefit fragments (≤ 25 chars), no CTAs, no duplicated claims across callouts
- Structured snippets: category-appropriate headers (Brands, Services, Types) with real, distinct values
- Call, location, price, promotion extensions where applicable to the business type

### Testing Variants
- Produce 2-3 distinct angle variants per ad group (e.g., price-led, benefit-led, urgency-led) rather than many trivial rewordings, so results are actually diagnostic

## Workflow
1. Confirm the ad group's keyword theme/intent and the specific offer.
2. Draft 8-15 headlines spanning: keyword-relevant, benefit, offer/price, urgency, brand, and a question or curiosity angle.
3. Draft 2-4 descriptions expanding the strongest headline angles with proof and a CTA.
4. Write extensions (sitelinks/callouts/snippets) that add distinct information, not repeated headlines.
5. Check every line against character limits before presenting.
6. Flag any claim (price, "#1," guarantees, health/financial claims) that needs substantiation or `google-ads-compliance` review.

## Outputs
- Headline list (labeled by angle) with character counts shown
- Description list with character counts shown
- Extension/asset copy
- Notes on which headlines are safe to pin (if any) and why

## Rules
- Never exceed 30/90/25/35 character limits (headlines/descriptions/sitelink title/sitelink description) — count characters, don't estimate.
- Never write claims the landing page or business can't substantiate — flag instead of writing.
- Avoid excessive capitalization, exclamation points, or "guaranteed"/"best"/"#1" language that risks policy disapproval unless verifiably true and compliant with `google-ads-compliance`.
- Don't submit 15 headlines that are trivial variations of one idea — variety drives RSA performance.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (structure this copy fits into), `google-ads-compliance` (claims/policy check), `google-ads-landing-page-audit` (message match verification), `google-ads-optimization` (data-driven copy iteration on a live campaign).
