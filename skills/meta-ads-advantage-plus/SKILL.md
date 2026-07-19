---
name: meta-ads-advantage-plus
description: "Build and optimize Advantage+ Shopping and Advantage+ App campaigns — Meta's automated, full-funnel campaign types. Triggers on 'set up Advantage+ Shopping', 'Advantage+ App campaign', 'my Advantage+ campaign is underperforming', or 'should I use Advantage+ or manual campaigns'. Meta's PMax-equivalent — deep automation-specific work."
---

# Meta Ads Advantage+

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build and optimize Advantage+ Shopping campaigns (ecommerce, catalog-driven, full-funnel automated) and Advantage+ App campaigns — Meta's answer to Google's Performance Max, trading manual control for algorithmic reach across audience and placement.

## Trigger Conditions
- "Set up Advantage+ Shopping campaign"
- "Advantage+ App campaign for installs"
- "My Advantage+ campaign is underperforming"
- "Should I use Advantage+ or build manual campaigns"

## Required Inputs
- Product catalog status (must be connected via Commerce Manager — coordinate with `meta-ads-catalog-feed`)
- Conversion volume history (Advantage+ needs meaningful data to leave learning productively; thin accounts should expect a longer, rockier ramp)
- Creative asset variety (multiple images/videos across formats — the algorithm needs options to test across placements)
- Whether this replaces or runs alongside existing manual campaigns (overlap/cannibalization risk)

## Core Capabilities

### Advantage+ Shopping Campaigns
- Fully automated targeting, placement, and creative optimization for catalog-driven ecommerce, minimal manual audience input by design
- Custom audience input as optional signal, not hard targeting — similar philosophy to Google PMax's audience signals
- Creative: supports multiple ad formats/creative within one ad set, with the system testing combinations — asset variety and quality remains the primary manual lever available
- Catalog segment/set structure to prioritize specific product groups (bestsellers, high-margin) within Advantage+ Shopping, coordinated with catalog setup

### Advantage+ App Campaigns
- Automated targeting and placement for app install/in-app-event optimization, analogous logic to Google's App campaigns
- Requires app events (via Meta SDK or MMP integration) for in-app-event optimization, not just raw installs

### When to Use vs. Manual
- Best fit: businesses with catalog/app conversion volume sufficient to feed automation, and creative variety to give the algorithm real options
- Weaker fit: brand-new accounts with zero conversion history (expect a rough, expensive learning period), or businesses needing granular audience exclusion control for brand/legal reasons
- Common pattern: run Advantage+ for full-catalog/broad reach alongside a smaller manual campaign for a specific strategic segment (new launches, high-margin push) rather than choosing one exclusively

### Diagnostics
- Limited placement/audience-level reporting by design, same tradeoff as Google PMax — set this expectation before promising granular breakdowns
- Underperformance root causes to check in order: catalog/feed quality, creative asset thinness, insufficient conversion volume for the learning phase, conflicting manual campaigns competing for the same audience

## Workflow
1. Confirm catalog/app event tracking is live and healthy before building.
2. Assess conversion volume and creative asset variety; set expectations on ramp time accordingly.
3. Build the Advantage+ campaign with catalog segments or app event optimization goal set correctly.
4. Add available creative variety across formats.
5. If running alongside manual campaigns, check for audience/budget overlap and adjust to minimize internal competition.
6. When diagnosing underperformance, check catalog/feed health first, then creative variety, then conversion volume — in that order.

## Outputs
- Advantage+ campaign structure (Shopping or App)
- Catalog segment / app event configuration
- Creative variety assessment and gaps
- Overlap check against existing manual campaigns
- Underperformance root-cause diagnosis, when applicable

## Rules
- Never launch Advantage+ Shopping without confirming catalog health first — a broken feed caps performance regardless of algorithm quality.
- Set explicit ramp-time expectations for accounts with thin conversion history; don't imply immediate optimized performance.
- Flag audience/budget overlap between Advantage+ and any concurrent manual campaigns rather than letting them silently compete.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-catalog-feed` (feed prerequisite), `meta-ads-campaign-builder` (overall campaign type fit), `meta-ads-creative-strategy` (asset variety), `meta-ads-optimization` (general performance diagnosis).
