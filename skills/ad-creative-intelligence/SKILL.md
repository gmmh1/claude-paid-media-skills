---
name: ad-creative-intelligence
description: "Master router for cross-platform advertising creative craft — persuasion frameworks, creative briefs, testing methodology, performance diagnosis, fatigue management, AI creative generation, and brand voice adaptation. Triggers on 'creative strategy across platforms', 'what copywriting framework should I use', 'build a creative brief', or any creative question not tied to one specific platform's format constraints. Sits above google-ads-copywriting, meta-ads-creative-strategy, tiktok-ads-creative-strategy, etc. — the reusable craft layer beneath every platform's execution."
---

# Ad Creative Intelligence Master Skill

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

The creative craft layer beneath every platform-specific creative skill (`google-ads-copywriting`, `meta-ads-creative-strategy`, `linkedin-ads-copywriting`, `tiktok-ads-creative-strategy`, and their siblings). Those skills handle platform-specific execution — character limits, format mechanics, native conventions. This layer handles what's genuinely reusable across all of them: persuasion frameworks, brief structure, testing methodology, performance diagnosis patterns, fatigue signals, AI-assisted generation, and adapting one brand voice across every platform's register.

This skill is a **router**, not an executor for platform-specific copy — for that, go to the relevant platform skill directly.

## Specialist Skills

| Skill | Use for |
|---|---|
| `ad-copywriting-frameworks` | Which persuasion structure (AIDA, PAS, BAB, FAB, 4Ps, StoryBrand) fits this message |
| `creative-brief-generator` | Turning a business goal into a structured brief before any platform-specific copy gets written |
| `creative-testing-framework` | Sample size, statistical significance, and variable-isolation methodology for creative tests |
| `creative-performance-analysis` | The generalized hook→hold→click→convert diagnostic funnel, applicable beyond one platform |
| `creative-fatigue-management` | Cross-platform fatigue signals and refresh cadence |
| `ai-creative-generation` | Prompt engineering for AI image/video generation specifically for ad creative |
| `ecommerce-creative-system` | Product-forward creative patterns reusable across platforms |
| `brand-voice-ad-adaptation` | Keeping one core brand voice coherent while it shifts register across Google/Meta/LinkedIn/TikTok |

## Step 1: Classify the Request

1. **"What framework/angle should I use?"** → `ad-copywriting-frameworks`
2. **Starting from a business goal, nothing scoped yet** → `creative-brief-generator`, then hand off to the relevant platform's creative skill
3. **"How should I test this?"** → `creative-testing-framework`
4. **"Why is this ad underperforming?" across or independent of platform** → `creative-performance-analysis` (platform-specific versions like `meta-ads-creative-analytics` add platform data on top of this framework)
5. **"My ads got stale"** → `creative-fatigue-management`
6. **AI image/video generation for ads** → `ai-creative-generation`
7. **Ecommerce product creative** → `ecommerce-creative-system`
8. **"Does this still sound like us on TikTok/LinkedIn/etc.?"** → `brand-voice-ad-adaptation`
9. **A specific platform's copy/creative needs writing** → go directly to that platform's skill (`google-ads-copywriting`, `meta-ads-video-reels`, `tiktok-ads-copywriting-scripts`, `linkedin-ads-copywriting`) — this layer informs those, it doesn't replace them

## Step 2: This Layer Feeds Platform Execution

The typical flow is: `creative-brief-generator` (define the brief) → `ad-copywriting-frameworks` (choose the persuasion structure) → the relevant platform skill (execute within that platform's format/character/native-convention rules) → `creative-testing-framework` (structure the test) → `creative-performance-analysis`/`creative-fatigue-management` (diagnose results and know when to refresh).

## Rules

- Never let this layer's general creative principles override a platform's specific mechanical constraints (character limits, native format conventions, policy rules) — those always win at execution time.
- Don't duplicate platform-specific creative work here — if the request is "write Meta ad copy," go straight to `meta-ads-copywriting`/`meta-ads-video-reels`, don't route through this layer first unless the underlying framework/brief genuinely needs cross-platform thought.
- Brand voice must flex in register across platforms (`brand-voice-ad-adaptation`) while staying recognizably the same brand — flag when a platform-specific draft has drifted too far from or too close to source brand voice.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills

`paid-media-strategy` (the strategic layer, parallel to this creative layer), every platform's own creative/copywriting skills, `brand-review`, `brand-voice-enforcement`, `frontend-design`.
