---
name: google-ads
description: "Master router for the full Google Ads + Google marketing ecosystem skill library. Triggers on 'Google Ads', 'Google marketing', 'run a Google Ads account', 'set up Google Ads for [business]', 'help with my Search/PMax/Display/Shopping/Video/App/Demand Gen campaigns', or any Google Ads/Analytics/Search Console/Business Profile request that doesn't obviously belong to one specialist. Routes to the right specialist skill(s) and chains them for end-to-end work."
---

# Google Ads & Google Ecosystem Master Skill

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

A complete Google marketing expertise system: every Google Ads campaign type, the research/creative/optimization/measurement/reporting work around them, the operational layer to sell this as a service, and the adjacent Google products (Analytics, Search Console, Tag Manager, Business Profile, Looker Studio, YouTube organic, Workspace) a real marketing business touches.

This skill is a **router**, not an executor. Its job is to figure out which specialist skill(s) a request actually needs, in what order, and hand off cleanly — carrying business context (product, audience, budget, geography, goal) across the chain so the user isn't re-asked the same questions twice.

## Specialist Skills

### Foundation & Planning
| Skill | Use for |
|---|---|
| `google-ads-strategy` | "Should I even use Google Ads?" / channel & funnel planning / budget allocation before anything is built |
| `google-ads-account-management` | New account setup, MCC structure, billing, user access, linking prerequisites |
| `google-ads-keyword-research` | Keyword Planner-depth research: volume, CPC, competition, forecasting, intent classification |
| `google-ads-competitor-research` | Auction Insights, competitor ad/offer monitoring |

### Campaign Types (Execution)
| Skill | Use for |
|---|---|
| `google-ads-campaign-builder` | General campaign build/structure across any type — the entry point when the type isn't yet decided |
| `google-ads-performance-max` | PMax-specific: asset groups, signals, listing groups, diagnostics |
| `google-ads-shopping-campaigns` | Standard Shopping campaign structure (product groups, priority vs. PMax) |
| `google-ads-shopping-feed` | The Merchant Center product feed underneath Shopping/PMax |
| `google-ads-demand-gen` | Shorts/Discover/Gmail visually-led campaigns |
| `google-ads-display` | Display Network banner/responsive ads, prospecting and remarketing |
| `google-ads-video` | YouTube ads: bumper, skippable in-stream, video action campaigns |
| `google-ads-app-campaigns` | App install/engagement campaigns |
| `google-ads-ai-max-search` | AI Max feature layer on top of an existing Search campaign |
| `google-ads-local-campaigns` | Local Services Ads (pay-per-lead, Google Guaranteed) and location-based campaigns |
| `google-ads-remarketing` | Audience infrastructure (RLSA, Customer Match, dynamic remarketing) feeding the above |

### Creative & Compliance
| Skill | Use for |
|---|---|
| `google-ads-copywriting` | RSA headlines/descriptions, extensions/assets, ad copy frameworks |
| `google-ads-landing-page-audit` | Message match, Quality Score-relevant page factors |
| `google-ads-compliance` | Ad disapprovals, policy risk, trademark/claims review |
| `google-ads-localization` | Expanding a campaign into a new country/language market |

### Measurement, Optimization & Reporting
| Skill | Use for |
|---|---|
| `google-ads-measurement` | Conversion tracking, GA4 linking, offline conversions, attribution |
| `google-ads-optimization` | A live campaign is underperforming or needs tuning |
| `google-ads-audit` | Full account health check, usually for a new client or before scaling |
| `google-ads-reporting` | Turning account data into a stakeholder-ready report |
| `google-ads-api-automation` | Scripts, bulk changes, automated rules, API/MCP work |

### Running This as a Business
| Skill | Use for |
|---|---|
| `google-ads-client-services` | Pricing, proposals, scope of work, client onboarding for selling this as a service |

### Broader Google Ecosystem
| Skill | Use for |
|---|---|
| `google-analytics-ga4` | GA4 setup, event tracking, exploration analysis, audiences |
| `google-search-console` | Organic/technical SEO health: indexing, Core Web Vitals, search performance |
| `google-tag-manager` | Tag/trigger/variable infrastructure underneath GA4, Ads, and other pixels |
| `google-business-profile` | Organic local listing, reviews, posts (pairs with `google-ads-local-campaigns` for paid) |
| `looker-studio-reporting` | Cross-source dashboards blending Ads, GA4, Search Console |
| `youtube-organic-growth` | Organic channel growth (pairs with `google-ads-video` for paid) |
| `google-workspace` | Gmail/Calendar/Drive/Docs/Sheets/Forms — the operational layer for running the business |

## Step 1: Classify the Request

1. **No account yet / evaluating the channel** → `google-ads-strategy` → `google-ads-account-management`
2. **Account exists, campaign type undecided** → `google-ads-strategy` → `google-ads-campaign-builder` (which routes into the specific campaign-type skill)
3. **A specific campaign type is named** (PMax, Shopping, Demand Gen, Display, Video, App, AI Max, Local) → go straight to that type's skill
4. **Campaign built, needs copy/assets** → `google-ads-copywriting`
5. **About to launch** → `google-ads-compliance` + `google-ads-landing-page-audit`
6. **Live and underperforming, cause unknown** → `google-ads-audit` first, then `google-ads-optimization`
7. **Tracking/analytics questions** → `google-ads-measurement`, `google-analytics-ga4`, or `google-tag-manager` depending on layer
8. **Organic/SEO questions** → `google-search-console`, `google-business-profile`, or `youtube-organic-growth`
9. **Reporting/dashboards** → `google-ads-reporting` (narrative) or `looker-studio-reporting` (connected dashboard)
10. **Repetitive/bulk work** → `google-ads-api-automation`
11. **New market** → `google-ads-localization`
12. **"How do I sell/price/scope this"** → `google-ads-client-services`
13. **Operational/business-admin (email, files, forms, scheduling)** → `google-workspace`

## Step 2: Chain, Don't Silo

Most real requests span several specialists. Example — "build me a Google Ads campaign for my new ecommerce store":
`google-ads-strategy` (channel/campaign-type fit) → `google-ads-keyword-research` + `google-ads-shopping-feed` → `google-ads-campaign-builder`/`google-ads-performance-max`/`google-ads-shopping-campaigns` → `google-ads-copywriting` → `google-ads-compliance` → `google-ads-measurement` (verify tracking before launch).

## Step 3: Hand Off

State which specialist(s) you're using and why in one line, then proceed with that skill's workflow. Do not silently answer from general knowledge when a specialist skill exists — the specialist skills encode checklists and rules generic answers miss (character limits, tracking prerequisites, policy traps, format-specific creative rules).

## Rules

- Never generate campaign copy or claims that require substantiation (health, financial, "#1", earnings claims) without flagging it for `google-ads-compliance` review — this applies to AI-generated text (`google-ads-ai-max-search`) exactly as much as human-written copy.
- Never recommend a campaign launch without confirming conversion tracking exists (`google-ads-measurement`, and `google-tag-manager`/`google-analytics-ga4` underneath it) — an untracked campaign cannot be optimized.
- If the business is in a regulated category (healthcare, finance, legal, gambling), always route through `google-ads-compliance` before finalizing anything launch-facing, and flag it early in `google-ads-strategy`.
- Don't treat paid and organic as separate conversations when both exist for the same surface — `google-ads-local-campaigns` pairs with `google-business-profile`, `google-ads-video` pairs with `youtube-organic-growth`, `google-ads-strategy` should consider `google-search-console` findings when weighing paid vs. organic investment.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills

Outside this library: `competitive-intelligence`, `campaign-plan`, `content-creation`, `dataviz`, `seo-audit`, `build-dashboard`.
