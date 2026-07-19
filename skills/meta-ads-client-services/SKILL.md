---
name: meta-ads-client-services
description: "Package Meta Ads expertise into a sellable service — proposals, pricing/retainer structuring, client onboarding, scope of work. Triggers on 'how do I sell Meta Ads management', 'price my Facebook Ads service', 'write a proposal for a Meta Ads client', or 'onboard a new Meta Ads client'. Business/agency-operations layer, not ad execution."
---

# Meta Ads Client Services

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Turn Meta Ads expertise into an actual service business: proposals that win clients, pricing that's profitable, onboarding that sets expectations correctly (especially around Learning Phase and creative production dependency), and scope of work that prevents creep.

## Trigger Conditions
- "How do I sell Meta Ads management as a service?"
- "Price my Meta Ads retainer"
- "Write a proposal for a prospective Meta Ads client"
- "Onboard a new Meta Ads client"

## Required Inputs
- Target client profile (ecommerce, local service, lead-gen, DTC brand)
- Service scope offered (full management, creative-only, audit-only, one-time setup)
- Pricing model preference or constraint
- Client's existing creative production capacity — this is the single biggest scope/expectation variable on Meta specifically

## Core Capabilities

### Pricing Models
- Flat monthly fee, percentage of ad spend, hybrid, or performance-based — same tradeoffs as the Google Ads equivalent, with the added consideration that Meta performance is more creative-dependent, making performance-based pricing riskier unless creative production is also in scope and controlled by the service provider
- Creative production as a distinctly priced line item (separate from media management) since it's often the actual bottleneck on Meta performance, not targeting/optimization

### Proposal Structure
- Lead with the client's specific situation, referencing an audit or Ad Library competitive scan if one was done pre-proposal
- Scope section naming exactly which specialist work is included (campaign build, creative production cadence, optimization, reporting)
- Explicit creative production commitment (whose job is it to keep the creative pipeline fed — client or agency) since this is the most common Meta-specific scope dispute

### Scope of Work Boundaries
- Reporting cadence and format (coordinate with `meta-ads-reporting`-equivalent conventions and `looker-studio-reporting`)
- Creative production volume commitment (e.g., "X new ad concepts per month") as an explicit, billable-bounded deliverable rather than an open-ended promise
- Ad spend handling (client-paid-direct vs. agency-billed) and its cash-flow/liability implications
- Exit terms: account/asset access and historical data handling if the engagement ends

### Client Onboarding
- Discovery questionnaire: business goals, target CPA/ROAS, brand guidelines, existing creative assets/capacity, pixel/CAPI status, prior Meta Ads history
- Access checklist: Business Manager partner access, catalog/Commerce Manager access if ecommerce, brand asset handoff
- Expectation-setting on Learning Phase and creative-testing ramp time before results are judged — the most common early-engagement friction point on this platform specifically

### Retention & Communication
- Recommended reporting/check-in cadence by client size and spend level
- Proactive communication triggers: creative fatigue detected, policy disapprovals, major CPA/ROAS shifts — shouldn't wait for the scheduled report

## Workflow
1. Clarify target client profile and service scope.
2. Recommend pricing, explicitly separating creative production from media management if both are in scope.
3. Draft the proposal: client-specific situation, scope, pricing, term.
4. Draft scope-of-work boundaries including explicit creative volume commitments.
5. Build the onboarding questionnaire and access checklist.
6. Set Learning Phase/creative-ramp expectations during onboarding, before the first report.

## Outputs
- Pricing model recommendation, with creative production priced separately if applicable
- Client-ready proposal draft
- Scope-of-work summary with explicit creative commitment
- Onboarding questionnaire and access checklist
- Recommended reporting/communication cadence

## Rules
- Never propose performance-based pricing without creative production also being in scope and controlled by the service provider — Meta performance is too creative-dependent to price outcome risk on media management alone.
- Always define creative production volume explicitly in the scope of work — this is the most common source of Meta-specific client disputes.
- Set the Learning Phase/ramp-time expectation during onboarding, not reactively after a client asks why performance looks unstable in week one.

- **This is a generic starting template, not a competitive edge in itself** — it's published openly, so any competitor can read the same pricing logic. Treat it as a first draft to customize with real numbers, your actual positioning, and your track record before it goes to a client; your differentiation comes from execution quality and results, not from possessing this document.
- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`meta-ads-audit` (pre-proposal assessment), `meta-ads-creative-strategy` (the production commitment being scoped), all other `meta-ads-*` skills (the actual scope being sold).
