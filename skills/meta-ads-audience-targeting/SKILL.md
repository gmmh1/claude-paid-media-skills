---
name: meta-ads-audience-targeting
description: "Build Meta audience infrastructure — Custom Audiences, Lookalikes, Advantage+ audience, interest/behavior targeting, and exclusions. Triggers on 'build a lookalike audience', 'set up Meta retargeting', 'Custom Audience from my customer list', 'who should I target on Facebook', or 'audience overlap/saturation'. Audience layer feeding meta-ads-campaign-builder."
---

# Meta Ads Audience & Targeting

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build the audience infrastructure — Custom Audiences, Lookalikes, interest/behavior signals, and exclusions — that campaigns target against, and diagnose audience-level performance issues (overlap, saturation, fatigue).

## Trigger Conditions
- "Build a lookalike audience from my customers"
- "Set up retargeting for website visitors"
- "Create a Custom Audience from my email list"
- "Who should I target on Facebook/Instagram"
- "Check my audience overlap/saturation"

## Required Inputs
- First-party data available: customer lists (email/phone), website pixel/CAPI events, app events, engagement data (video views, page/Instagram engagers)
- Business type (ecommerce, lead-gen, local) — affects which audience types are highest-value
- Existing campaign audience structure, if diagnosing overlap/saturation

## Core Capabilities

### Custom Audiences
- Customer list uploads (hashed email/phone) for winback, exclusion of existing customers, or lookalike seed
- Website/app Custom Audiences by event (all visitors, ViewContent by category, AddToCart, Purchase) via pixel/CAPI — coordinate with `meta-ads-pixel-capi`
- Engagement Custom Audiences (video viewers by watch %, Instagram/Facebook Page engagers, Lead Form openers) — a first-party pool that exists even for businesses without a mature pixel yet

### Lookalike / Advantage+ Audience
- Lookalike Audiences built from a Custom Audience seed, with seed quality (size, specificity, recency) directly determining lookalike quality — a Purchase-based seed outperforms a broad-visitor seed for finding actual buyers
- Percentage/size tradeoff: narrower lookalikes (1%) are more precise but smaller; broader (2-10%) trade precision for reach
- Advantage+ audience as Meta's recommended default once conversion data is mature — treats manual interest/lookalike input as a signal rather than a hard boundary

### Interest & Behavior Targeting
- Interest/behavior targeting as the fallback for cold prospecting when no first-party seed data exists yet (new business, new market)
- Layering interests too narrowly risks under-delivery; broader interest targeting combined with strong creative often outperforms hyper-narrow stacking

### Exclusions & Overlap Management
- Excluding recent purchasers from acquisition campaigns, excluding existing audiences from lookalike-seed campaigns to avoid overlap
- Ads Manager audience overlap tool to check competing ad sets aren't bidding against each other for the same users
- Frequency/saturation monitoring for always-on retargeting pools, recommending creative refresh or pool expansion when frequency climbs without proportional results

### Structuring for Testing
- Isolating audience as the sole test variable when comparing performance, rather than changing audience and creative simultaneously

## Workflow
1. Inventory available first-party data (customer lists, pixel/CAPI events, engagement data).
2. Build the audience architecture: retargeting segments by funnel stage, lookalikes from the best-available seed, interest/behavior fallback for cold prospecting.
3. Set exclusions so acquisition and retention audiences don't compete against each other.
4. Check for overlap between concurrent ad sets targeting similar pools.
5. For an existing account, review frequency/saturation on always-on retargeting audiences and recommend refresh/expansion as needed.
6. Hand the finished audience set to `meta-ads-campaign-builder` for ad set assignment.

## Outputs
- Custom Audience architecture (by funnel stage/event)
- Lookalike audience recommendation with seed source and size tradeoff
- Interest/behavior fallback targeting, if needed
- Exclusion logic
- Overlap/saturation findings

## Rules
- Never build a Lookalike from a low-quality or too-small seed audience without flagging the reliability risk.
- Always pair acquisition-focused audiences with exclusion of recent purchasers/existing customers.
- Don't stack interest/behavior targeting so narrowly that the ad set risks under-delivery — check estimated audience size before finalizing.
- Confirm any data used for Custom Audiences was collected with a valid consent/privacy basis.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-pixel-capi` (event data source), `meta-ads-campaign-builder` (where audiences deploy), `meta-ads-catalog-feed` (product-based dynamic retargeting audiences), `meta-ads-optimization` (audience-driven performance issues).
