---
name: linkedin-ads
description: "Master router for the LinkedIn Ads + organic skill library. Triggers on 'LinkedIn Ads', 'run a LinkedIn campaign', 'B2B advertising on LinkedIn', 'ABM on LinkedIn', 'set up LinkedIn Ads for [business]', or any LinkedIn advertising/organic request that doesn't obviously belong to one specialist. Routes to the right specialist skill(s) and chains them for end-to-end work."
---

# LinkedIn Ads Master Skill

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

A complete LinkedIn B2B expertise system: strategy, account/Campaign Manager setup, campaign building, professional and Account-Based Marketing targeting, copywriting, Lead Gen Forms, conversion tracking, optimization, auditing, client-services packaging, and organic growth (personal brand and Company Page).

This skill is a **router**, not an executor. It figures out which specialist skill(s) a request needs, in what order, and hands off cleanly — carrying business context (ICP, deal size, budget, goal) across the chain.

## Specialist Skills

### Foundation & Planning
| Skill | Use for |
|---|---|
| `linkedin-ads-strategy` | "Should I even use LinkedIn Ads?" / objective planning / deal-economics fit |
| `linkedin-ads-account-management` | Campaign Manager setup, Company Page connection, access |

### Campaign & Targeting
| Skill | Use for |
|---|---|
| `linkedin-ads-campaign-builder` | General campaign build/structure, ad format selection |
| `linkedin-ads-audience-targeting` | Professional targeting, Matched Audiences, retargeting |
| `linkedin-ads-abm` | Target account list / buying-committee ABM campaigns |
| `linkedin-ads-lead-gen-forms` | On-platform Lead Gen Form design and lead-quality tuning |

### Creative & Measurement
| Skill | Use for |
|---|---|
| `linkedin-ads-copywriting` | Sponsored Content, Message/Conversation Ad, Document Ad copy |
| `linkedin-ads-measurement` | Insight Tag, conversion tracking, attribution |
| `linkedin-ads-optimization` | A live campaign is underperforming or needs tuning |
| `linkedin-ads-audit` | Full account health check |

### Business & Organic
| Skill | Use for |
|---|---|
| `linkedin-ads-client-services` | Pricing, proposals, scope of work, client onboarding |
| `linkedin-organic-growth` | Personal brand / Company Page organic growth |

## Step 1: Classify the Request

1. **No account yet / evaluating the channel** → `linkedin-ads-strategy` → `linkedin-ads-account-management`
2. **Account exists, campaign type undecided** → `linkedin-ads-campaign-builder`
3. **A defined target account list exists or should exist** → `linkedin-ads-abm`
4. **Campaign built, needs copy** → `linkedin-ads-copywriting`
5. **On-platform lead capture needed** → `linkedin-ads-lead-gen-forms`
6. **Live and underperforming, cause unknown** → `linkedin-ads-audit` first, then `linkedin-ads-optimization`
7. **Tracking questions** → `linkedin-ads-measurement`
8. **"How do I sell/price/scope this"** → `linkedin-ads-client-services`
9. **Organic/personal brand/Company Page** → `linkedin-organic-growth`

## Step 2: Chain, Don't Silo

Example — "build a LinkedIn ABM campaign for our enterprise target accounts":
`linkedin-ads-strategy` (confirm deal economics justify LinkedIn) → `linkedin-ads-abm` (account list, buying committee) → `linkedin-ads-audience-targeting` (Matched Audiences layer) → `linkedin-ads-copywriting` (tiered messaging) → `linkedin-ads-lead-gen-forms` or website conversion → `linkedin-ads-measurement` (verify tracking before launch).

## Step 3: Hand Off

State which specialist(s) you're using and why in one line, then proceed with that skill's workflow. LinkedIn-specific mechanics (cost profile, audience-size fragility, ABM structure, professional-register copy) are exactly what generic answers miss.

## Rules

- Never agree to a LinkedIn budget/CPA target without checking it against the platform's premium cost profile relative to the client's deal economics (`linkedin-ads-strategy`).
- Never recommend conversion-optimized bidding without confirming Insight Tag tracking exists.
- Always assess ABM candidacy when a business has or could build a target account list — it's LinkedIn's strongest differentiated use case and is easy to underuse by defaulting to broad ICP targeting.
- Match copy tone to LinkedIn's professional register (`linkedin-ads-copywriting`) — consumer-platform tactics (urgency language, casual tone) underperform here.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills

Outside this library: `competitive-intelligence`, `campaign-plan`, `account-research`, `content-creation`, `google-ads`, `meta-ads` (cross-platform paid media context).
