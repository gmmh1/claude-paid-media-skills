---
name: google-ads-landing-page-audit
description: "Audit a landing page against a Google Ads campaign for message match, Quality Score-relevant factors, and conversion friction. Triggers on 'audit my landing page for Google Ads', 'does my landing page match my ads', 'why is my Quality Score low', or 'improve my landing page experience'. Focused on the ad-to-page connection, not general CRO/copywriting."
---

# Google Ads Landing Page Audit

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Verify that a landing page will actually convert the traffic a Google Ads campaign sends to it, and diagnose page-side causes of low Quality Score or high CPA.

## Trigger Conditions
- "Audit my landing page for this campaign"
- "Why is my Quality Score low"
- "Does my page match my ad copy"
- "My CTR is fine but conversions are low — check my landing page"

## Required Inputs
- Landing page URL
- The ad copy (headlines/descriptions) or keyword themes driving traffic to it
- The campaign's conversion goal (purchase, lead form, call, sign-up)
- Mobile vs. desktop traffic split, if known

## Core Capabilities

### Message Match
- Headline/offer on the page must mirror the ad's promise (same offer, same price if mentioned, same product)
- Keyword-to-page relevance: does on-page content reflect the search terms triggering the ad
- Mismatch between ad promise and landing destination is the single most common cause of high bounce + low Quality Score's "Landing Page Experience" component

### Quality Score-Relevant Page Factors
- Page load speed (mobile especially — Google weights mobile experience heavily)
- Clear, single primary CTA above the fold
- Transparency: business info, pricing, terms visible (not hidden behind extra clicks)
- Mobile usability: tap targets, readable text without zoom, no interstitials blocking content
- Original, relevant content — thin or duplicate content hurts relevance scoring

### Conversion Friction
- Form length vs. offer value (long forms kill low-commitment offers)
- Trust signals present: reviews, guarantees, security badges, real contact info
- Distracting navigation/exit links that let visitors leave before converting
- Page-to-conversion-goal alignment (e.g., a page selling the visitor before showing the form, not burying the CTA in paragraph three)

### Compliance-Adjacent Checks
- Claims on the page must match claims in the ad (both are subject to policy review)
- Required disclosures for the vertical (pricing, terms, refund policy) present and accessible

## Workflow
1. Pull the ad copy/keyword themes for the campaign in question.
2. Load and review the landing page against message match: does headline/offer/price match the ad?
3. Check page-speed and mobile experience factors.
4. Assess the conversion path: CTA clarity, form length, trust signals, distractions.
5. Flag any claim mismatches between ad and page for `google-ads-compliance`.
6. Deliver a prioritized fix list — message match and CTA clarity first, since those move Quality Score and conversion rate fastest.

## Outputs
- Message match assessment (pass/fail per ad group with specifics)
- Page speed/mobile experience notes
- Conversion friction list, prioritized by likely impact
- Ranked action list (highest-impact fix first)

## Rules
- Never approve a campaign launch when the landing page promise diverges from the ad's headline or offer — flag it as blocking, not a nice-to-have.
- Don't recommend generic CRO tactics unrelated to the ad's specific traffic intent; keep findings tied to the keywords/audience actually being sent to the page.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-campaign-builder` (upstream — page should be checked before launch), `google-ads-compliance` (claims consistency), `google-ads-optimization` (when the page is fine but bidding/targeting is the issue).
