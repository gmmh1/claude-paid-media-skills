---
name: google-ads-client-services
description: "Package Google Ads expertise into a sellable service — proposals, pricing/retainer structuring, client onboarding, and scope of work. Triggers on 'how do I sell Google Ads management', 'price my Google Ads service', 'write a proposal for a Google Ads client', 'onboard a new Google Ads client', or 'what should I include in my retainer'. Business/agency-operations layer, not ad execution itself."
---

# Google Ads Client Services

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Turn Google Ads expertise (the other specialist skills in this library) into an actual service business: proposals that win clients, pricing that's profitable, onboarding that sets expectations correctly, and scope of work that prevents scope creep.

## Trigger Conditions
- "How do I sell Google Ads management as a service?"
- "Price my Google Ads retainer"
- "Write a proposal for a prospective Google Ads client"
- "Onboard a new Google Ads client"
- "What should be in my scope of work / contract?"

## Required Inputs
- Target client profile (SMB local business, ecommerce, B2B SaaS, agency-to-agency white-label)
- Service scope being offered (full management, audit-only, one-time setup, ongoing optimization)
- Pricing model preference or constraint (flat fee, % of ad spend, hybrid, performance-based)
- Competing offers/market rate context, if known

## Core Capabilities

### Pricing Models
- Flat monthly fee — predictable for both sides, common for SMB/local clients with smaller, stable budgets
- Percentage of ad spend — scales with client growth but creates a perceived conflict of interest at very high spend levels (address transparently in the proposal)
- Hybrid (base fee + % above a spend threshold) — common middle ground for growing accounts
- Performance-based (fee tied to CPA/ROAS targets) — highest client appeal, highest business risk; only recommend once there's enough account history to price the risk correctly
- Setup fee vs. no setup fee — a setup fee filters for serious clients and covers the disproportionate early-account work (audit, tracking setup, first build)

### Proposal Structure
- Lead with the client's specific situation and goal, not a generic capabilities list — reference their actual account/market if an audit was done pre-proposal
- Scope section naming exactly which specialist work is included (campaign build, copywriting, optimization cadence, reporting cadence) so the client knows what they're buying
- Pricing and term length (month-to-month vs. minimum commitment) stated plainly
- What the client needs to provide (access, budget, response time on approvals, creative assets) — unmet client-side dependencies are a leading cause of stalled engagements

### Scope of Work / Contract Boundaries
- Define reporting cadence and format explicitly (route to `google-ads-reporting` conventions)
- Define what counts as "in scope" optimization work vs. billable additional work (e.g., a full new campaign build for a new product line vs. ongoing tuning of existing campaigns)
- Ad spend handling: client-paid-direct (client owns their own billing) vs. agency-billed (agency fronts and marks up spend) — flag the latter's cash-flow and liability implications
- Kill clause / notice period, and what happens to the account (access, historical data) if the engagement ends

### Client Onboarding
- Discovery questionnaire: business goals, target CPA/ROAS, brand guidelines, competitor awareness, existing tracking/asset status
- Access checklist: what account access, billing info, and brand assets are needed before work can start
- Expectation-setting on timeline: campaigns typically need a data-accumulation period before Smart Bidding/optimization is meaningful — communicate this upfront so early "why isn't it working yet" conversations don't erode trust

### Retention & Communication Cadence
- Recommended reporting/check-in rhythm by client size (weekly for high-spend/high-touch, monthly for smaller retainers)
- Proactive communication triggers (major performance shifts, policy issues, budget exhaustion) that should never wait for the next scheduled report

## Workflow
1. Clarify target client profile and service scope being offered.
2. Recommend a pricing model matched to that client profile and the business's risk tolerance.
3. Draft the proposal: client-specific situation, scope (naming the specific specialist work included), pricing, term.
4. Draft scope-of-work boundaries covering reporting cadence, in-scope vs. billable-extra work, spend-handling model, and exit terms.
5. Build the onboarding discovery questionnaire and access checklist for the specific client.
6. Set the expectation-setting communication for the data-accumulation/learning period before results are judged.

## Outputs
- Pricing model recommendation with rationale
- Client-ready proposal draft
- Scope-of-work / contract boundary summary
- Onboarding questionnaire and access checklist
- Recommended reporting/communication cadence

## Rules
- Never propose performance-based pricing without enough account history or category benchmark data to price the downside risk — this protects the business offering the service, not just the client.
- Always state explicitly what's in scope vs. billable-extra in writing before work starts — undefined scope is the most common source of unpaid agency work and client disputes.
- Always set the data-accumulation/learning-period expectation during onboarding, before the first report, not reactively after a client asks why performance looks slow.
- Flag the conflict-of-interest optics of pure percentage-of-spend pricing at high budgets, and offer a hybrid alternative when relevant.
- **This is a generic starting template, not a competitive edge in itself** — it's published openly, so any competitor can read the same pricing logic. Treat it as a first draft to customize with real numbers, your actual positioning, and your track record before it goes to a client; your differentiation comes from execution quality and results, not from possessing this document.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-audit` (pre-proposal account assessment for existing-account prospects), `google-ads-reporting` (ongoing client communication), `google-ads-strategy` (setting realistic client expectations on channel fit and CPA), all other `google-ads-*` skills (the actual scope of work being sold).
