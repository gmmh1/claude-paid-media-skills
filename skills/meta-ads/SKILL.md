---
name: meta-ads
description: "Master router for the Meta Ads + Instagram ecosystem skill library (Facebook, Instagram, Messenger, WhatsApp). Triggers on 'Meta Ads', 'Facebook Ads', 'Instagram Ads', 'run a Meta campaign', 'set up Meta Ads for [business]', or any Meta advertising/Instagram request that doesn't obviously belong to one specialist. Routes to the right specialist skill(s) and chains them for end-to-end work."
---

# Meta Ads Master Skill

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

A complete Meta advertising expertise system covering Facebook, Instagram, Messenger, and WhatsApp: account setup, strategy, campaign building (including Advantage+), catalog/feed, audience targeting, creative strategy/copywriting/video, pixel/CAPI tracking, optimization, creative analytics, auditing, Ad Library competitor research, automation, localization, client-services packaging, and organic Instagram growth.

This skill is a **router**, not an executor. Its job is to figure out which specialist skill(s) a request needs, in what order, and hand off cleanly — carrying business context (product, audience, budget, geography, goal) across the chain.

## Specialist Skills

### Foundation & Planning
| Skill | Use for |
|---|---|
| `meta-ads-strategy` | "Should I even use Meta Ads?" / objective & funnel planning / budget allocation |
| `meta-ads-account-management` | Business Manager setup, asset connections, billing, access |
| `meta-ads-library-intelligence` | Competitor research via the public Meta Ad Library |

### Campaign Types (Execution)
| Skill | Use for |
|---|---|
| `meta-ads-campaign-builder` | General campaign build/structure — entry point when type isn't yet decided |
| `meta-ads-advantage-plus` | Advantage+ Shopping/App: Meta's automated, PMax-equivalent campaigns |
| `meta-ads-catalog-feed` | Commerce Manager product catalog underneath Advantage+ Shopping/dynamic ads |
| `meta-ads-messenger-whatsapp` | Click-to-Messenger / click-to-WhatsApp conversational campaigns |
| `meta-ads-audience-targeting` | Custom Audiences, Lookalikes, Advantage+ audience, exclusions |

### Creative
| Skill | Use for |
|---|---|
| `meta-ads-creative-strategy` | Creative angles, format selection (feed/Stories/Reels/carousel/collection) |
| `meta-ads-video-reels` | Video/Reels-specific hook, pacing, and script mechanics |
| `meta-ads-copywriting` | Primary text, headlines, CTAs |

### Measurement, Optimization & Reporting
| Skill | Use for |
|---|---|
| `meta-ads-pixel-capi` | Pixel + Conversions API setup, deduplication, event match quality |
| `meta-ads-optimization` | A live campaign is underperforming or needs tuning |
| `meta-ads-creative-analytics` | Which specific creatives are winning/losing and why |
| `meta-ads-audit` | Full account health check |
| `meta-ads-api-automation` | Marketing API scripts, bulk changes, automated rules |

### Localization & Business
| Skill | Use for |
|---|---|
| `meta-ads-localization` | Expanding into a new country/language market |
| `meta-ads-client-services` | Pricing, proposals, scope of work, client onboarding |
| `instagram-organic-growth` | Organic Instagram growth (pairs with paid campaigns) |

## Step 1: Classify the Request

1. **No account yet / evaluating the channel** → `meta-ads-strategy` → `meta-ads-account-management`
2. **Account exists, objective undecided** → `meta-ads-strategy` → `meta-ads-campaign-builder`
3. **Ecommerce with a catalog** → `meta-ads-catalog-feed` → `meta-ads-advantage-plus` or `meta-ads-campaign-builder`
4. **Chat/conversation is the conversion goal** → `meta-ads-messenger-whatsapp`
5. **Campaign built, needs creative/copy** → `meta-ads-creative-strategy` → `meta-ads-video-reels`/`meta-ads-copywriting`
6. **Live and underperforming, cause unknown** → `meta-ads-audit` first, then `meta-ads-optimization`
7. **"Which ad is working"** → `meta-ads-creative-analytics`
8. **Tracking questions** → `meta-ads-pixel-capi`
9. **Competitor research** → `meta-ads-library-intelligence`
10. **New market** → `meta-ads-localization`
11. **"How do I sell/price/scope this"** → `meta-ads-client-services`
12. **Organic Instagram** → `instagram-organic-growth`

## Step 2: Chain, Don't Silo

Example — "build me a Meta Ads campaign for my new DTC brand":
`meta-ads-strategy` → `meta-ads-account-management` (if new) → `meta-ads-pixel-capi` (verify tracking) → `meta-ads-catalog-feed` (if ecommerce) → `meta-ads-campaign-builder`/`meta-ads-advantage-plus` → `meta-ads-creative-strategy` → `meta-ads-video-reels`/`meta-ads-copywriting`.

## Step 3: Hand Off

State which specialist(s) you're using and why in one line, then proceed with that skill's workflow. Do not silently answer from general knowledge when a specialist skill exists — Meta-specific mechanics (Learning Phase, EMQ, Advantage+ signal behavior, format-native creative rules) are exactly what generic answers miss.

## Rules

- Never recommend conversion-optimized bidding without confirming pixel/CAPI tracking exists (`meta-ads-pixel-capi`) — an untracked or poorly-tracked campaign cannot be optimized.
- Never generate ad copy or claims requiring substantiation without flagging for policy review, especially in Special Ad Category-covered verticals (housing, employment, credit, political, health).
- Creative is the dominant performance lever on this platform — don't let targeting/bidding discussions crowd out creative strategy (`meta-ads-creative-strategy`, `meta-ads-video-reels`) when diagnosing underperformance.
- Don't treat paid and organic Instagram as separate conversations — `instagram-organic-growth` and Meta paid creative should inform each other.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills

Outside this library: `competitive-intelligence`, `campaign-plan`, `content-creation`, `dataviz`, `google-ads` (cross-platform paid media context).
