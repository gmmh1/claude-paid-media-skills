---
name: tiktok-ads
description: "Master router for the TikTok Ads + Shop + organic skill library. Triggers on 'TikTok Ads', 'run a TikTok campaign', 'TikTok Shop', 'Spark Ads', 'set up TikTok Ads for [business]', or any TikTok advertising/organic request that doesn't obviously belong to one specialist. Routes to the right specialist skill(s) and chains them for end-to-end work."
---

# TikTok Ads Master Skill

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

A complete TikTok expertise system: strategy, account setup, campaign building, audience targeting, native creative strategy and scripting, Spark Ads (organic content boosting), Pixel/Events API tracking, optimization, auditing, client-services packaging, and TikTok Shop plus organic growth.

This skill is a **router**, not an executor. It figures out which specialist skill(s) a request needs, in what order, and hands off cleanly. On this platform more than any other in this library, **creative production capacity is the load-bearing constraint** — always assess it early.

## Specialist Skills

### Foundation & Planning
| Skill | Use for |
|---|---|
| `tiktok-ads-strategy` | "Should I even use TikTok Ads?" / channel & creative-capacity fit |
| `tiktok-ads-account-management` | Business Center setup, asset connections, access |

### Campaign & Targeting
| Skill | Use for |
|---|---|
| `tiktok-ads-campaign-builder` | General campaign build/structure, objective selection |
| `tiktok-ads-audience-targeting` | Custom Audiences, Lookalikes, interest/behavior targeting |
| `tiktok-ads-spark-ads` | Boosting organic/creator posts as paid ads |

### Creative
| Skill | Use for |
|---|---|
| `tiktok-ads-creative-strategy` | Native creative angles, hooks, format, creator partnerships |
| `tiktok-ads-copywriting-scripts` | Script/caption execution, creator briefs |

### Measurement, Optimization & Business
| Skill | Use for |
|---|---|
| `tiktok-ads-pixel-events` | Pixel + Events API setup, deduplication, match quality |
| `tiktok-ads-optimization` | A live campaign is underperforming or fatiguing |
| `tiktok-ads-audit` | Full account health check (weighted toward creative health) |
| `tiktok-ads-client-services` | Pricing, proposals, scope of work, client onboarding |
| `tiktok-shop-organic` | TikTok Shop commerce + organic growth |

## Step 1: Classify the Request

1. **No account yet / evaluating the channel** → `tiktok-ads-strategy` (assess creative capacity honestly) → `tiktok-ads-account-management`
2. **Account exists, campaign type undecided** → `tiktok-ads-campaign-builder`
3. **Proven organic content exists** → `tiktok-ads-spark-ads` before building fresh paid creative from scratch
4. **Campaign built, needs creative/script** → `tiktok-ads-creative-strategy` → `tiktok-ads-copywriting-scripts`
5. **Live and underperforming** → check creative health first (`tiktok-ads-optimization` diagnostic funnel), then targeting/bidding
6. **Tracking questions** → `tiktok-ads-pixel-events`
7. **"How do I sell/price/scope this"** → `tiktok-ads-client-services`
8. **TikTok Shop / organic growth** → `tiktok-shop-organic`

## Step 2: Chain, Don't Silo

Example — "build me a TikTok campaign for my ecommerce brand":
`tiktok-ads-strategy` (confirm creative capacity) → `tiktok-shop-organic` (Shop + organic content to seed from) → `tiktok-ads-creative-strategy` + `tiktok-ads-copywriting-scripts` → `tiktok-ads-spark-ads` (if proven organic exists) or `tiktok-ads-campaign-builder` (fresh) → `tiktok-ads-pixel-events` (verify tracking before launch).

## Step 3: Hand Off

State which specialist(s) you're using and why in one line, then proceed with that skill's workflow. TikTok-specific mechanics (native-creative requirement, fast fatigue cycles, Spark Ads mechanics) are exactly what generic answers miss.

## Rules

- Always assess creative production capacity before recommending TikTok as a channel — this is the platform's hardest, most consequential constraint in this entire library.
- Never diagnose underperformance by starting with targeting/bidding — check creative health (hook rate, completion rate, variant count) first.
- Never use a creator's content in Spark Ads without proper authorization.
- Never recommend conversion-optimized bidding without confirming Pixel/Events API tracking exists.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills

Outside this library: `competitive-intelligence`, `campaign-plan`, `content-creation`, `google-ads`, `meta-ads` (cross-platform paid media context).
