---
name: google-ads-display
description: "Build Display Network campaigns — responsive display ads, placement targeting, and remarketing display. Triggers on 'set up a Display campaign', 'banner ads on Google', 'Display Network targeting', or 'remarketing display ads'. Standalone Display campaign type — for the Display asset groups inside Performance Max see google-ads-performance-max."
---

# Google Ads Display

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build standalone Display Network campaigns — banner/image and responsive display ads served across the Google Display Network's millions of publisher sites and apps — for awareness, remarketing, or affinity/in-market prospecting.

## Trigger Conditions
- "Set up a Display campaign"
- "Run banner ads through Google"
- "Display Network targeting strategy"
- "Remarketing display ads"

## Required Inputs
- Campaign purpose: prospecting (cold audience awareness) vs. remarketing (warm audience re-engagement) — these need different structure and budget expectations
- Creative assets: images at required responsive display sizes, logos, headlines/descriptions for responsive display ads
- Audience data available for remarketing (coordinate with `google-ads-remarketing`) or targeting signals for prospecting (in-market, affinity, custom segments)

## Core Capabilities

### Campaign Purpose Split
- Remarketing Display: highest-ROI use of the Display Network for most businesses — re-engaging known site visitors at low cost; should almost always be running if the business has meaningful site traffic
- Prospecting Display: cold-audience awareness/consideration; much harder to prove direct ROI, best justified by brand-building goals or as a demand-creation layer feeding remarketing pools, not judged on last-click ROAS alone

### Responsive Display Ads
- Multiple headlines, descriptions, images (landscape and square), and logos supplied so Google's system can assemble combinations across the network's varied ad slot sizes
- Asset quality bar: Display performance is disproportionately creative-driven since click intent is near-zero (users aren't searching, they're browsing) — weak creative underperforms regardless of targeting precision

### Placement & Targeting Control
- Contextual targeting (topics, keywords the surrounding content relates to) vs. audience targeting (who the user is) — can combine both for precision
- Placement exclusions: actively excluding low-quality placements (certain apps, sites, mobile games known for accidental clicks) rather than only relying on Google's default brand safety controls
- Placement performance review as an ongoing task — Display inherently includes a long tail of low-quality inventory that needs active pruning

### Frequency & Fatigue Management
- Frequency capping to avoid oversaturating a remarketing audience (diminishing returns and brand annoyance beyond a reasonable cap)
- Creative rotation cadence to prevent banner blindness/fatigue, especially for always-on remarketing campaigns

## Workflow
1. Clarify purpose: remarketing, prospecting, or both (as separate campaigns with separate budget logic).
2. For remarketing, confirm audience lists exist and are of sufficient size (coordinate with `google-ads-remarketing`).
3. Gather/brief responsive display assets across required size variants, prioritizing creative quality given Display's low native intent.
4. Set contextual/audience targeting signals matched to purpose (broader for remarketing since the audience is already qualified, more precise for cold prospecting).
5. Set frequency caps and establish a placement-exclusion review cadence.
6. Judge remarketing and prospecting campaigns against different success bars — direct ROAS for remarketing, assisted-conversion/reach metrics for prospecting.

## Outputs
- Campaign purpose classification (remarketing/prospecting) with separate budget logic
- Responsive display asset requirements and brief
- Targeting configuration (contextual, audience, placement exclusions)
- Frequency cap and creative rotation recommendation
- Success metric framing appropriate to purpose

## Rules
- Never judge a prospecting Display campaign purely on last-click ROAS — frame success around reach/assisted conversions/downstream remarketing pool growth instead.
- Always recommend remarketing Display be running before prospecting Display for a business with existing site traffic — it's the higher-confidence, lower-risk use of the channel.
- Set frequency caps explicitly; don't leave remarketing campaigns uncapped and risk fatigue/negative brand sentiment.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-remarketing` (audience source for remarketing display), `google-ads-performance-max` (automated alternative that includes Display inventory), `google-ads-copywriting` (headline/description assets), `google-ads-optimization` (placement performance pruning).
