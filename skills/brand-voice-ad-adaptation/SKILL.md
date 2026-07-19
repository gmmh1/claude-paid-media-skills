---
name: brand-voice-ad-adaptation
description: "Adapt one core brand voice coherently across every ad platform's native register — professional on LinkedIn, native/casual on TikTok, conversational on Meta, direct on Google Search. Triggers on 'does this still sound like us', 'adapt our brand voice for TikTok', 'keep our voice consistent across ad platforms', or 'this ad doesn't sound on-brand'. Cross-platform consistency layer feeding every platform's copywriting skill."
---

# Brand Voice Ad Adaptation

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Keep a brand recognizably itself while its advertising voice flexes register across platforms with genuinely different native conventions — professional B2B tone on LinkedIn, casual/native slang on TikTok, conversational feed tone on Meta, direct and keyword-relevant on Google Search — without drifting into either generic sameness or unrecognizable platform-chameleon inconsistency.

## Trigger Conditions
- "Does this ad still sound like us?"
- "Adapt our brand voice for TikTok / LinkedIn / etc."
- "Keep our voice consistent across all our ad platforms"
- "This ad doesn't sound on-brand"

## Required Inputs
- Existing brand voice guidelines, if documented (tone words, vocabulary do's/don'ts, example copy) — route to `discover-brand`/`brand-voice-enforcement` if no guidelines exist yet and need to be extracted from existing content
- Which platforms need adaptation
- Example copy the brand considers strongly on-voice, as a reference anchor

## Core Capabilities

### The Core-vs-Register Distinction
- **Core voice** (should stay constant across every platform): the brand's fundamental personality traits, values, vocabulary preferences, and what it would never say — this is the identity layer
- **Register** (should flex per platform): formality level, sentence length/pacing, slang usage, emoji/punctuation conventions — this is the presentation layer that platform-native conventions genuinely require flexing
- Confusing these two layers produces one of two failure modes: forcing one rigid voice everywhere (reads as tone-deaf on native-format platforms like TikTok) or letting the voice drift so much per platform that the brand becomes unrecognizable between them

### Platform Register Calibration
- **LinkedIn**: formal-to-semi-formal, credibility-forward, data/outcome-specific — the brand's most "buttoned-up" register, per `linkedin-ads-copywriting`
- **Meta (Feed/Stories/Reels)**: conversational, native-feed-appropriate, can carry more personality/casualness than LinkedIn while staying more polished than TikTok, per `meta-ads-copywriting`
- **TikTok**: the most register-flexible platform — genuinely casual, native vernacular, willing to sound unpolished — per `tiktok-ads-copywriting-scripts`; brands with a naturally formal core voice need the most deliberate, conscious adaptation here rather than a lighter touch-up
- **Google Search**: the most compressed and utilitarian register — little room for personality expression within character limits, voice shows up mainly through word choice and offer framing rather than tone, per `google-ads-copywriting`

### Consistency Checks
- Reviewing a set of cross-platform ad copy together (not one platform in isolation) to check the core voice — vocabulary, values, personality — reads as the same brand even as register shifts
- Flagging when a platform-specific draft has over-adapted (lost recognizable brand identity entirely) or under-adapted (ignored the platform's native conventions, producing copy that reads as foreign/inauthentic on that platform)
- Maintaining a living reference set of approved cross-platform examples so future creative work (human or AI-assisted) has consistent anchors

### When No Brand Voice Guidelines Exist Yet
- Extracting an implicit voice from the brand's best-performing or most-authentic existing content as a starting reference point, rather than inventing one from scratch — coordinate with `discover-brand`
- Building lightweight guidelines (a handful of tone words, a few do/don't examples per register) rather than an exhaustive style guide, sufficient for ad-copy purposes specifically

## Workflow
1. Gather existing brand voice guidelines or extract an implicit voice from best-performing existing content.
2. Separate core voice (constant) from register (platform-flexible) explicitly.
3. Review draft copy across platforms together, checking core voice consistency while allowing register to flex per platform's native conventions.
4. Flag over-adapted (unrecognizable) or under-adapted (platform-inauthentic) drafts specifically.
5. Maintain a reference example set for future consistency checks.

## Outputs
- Core voice vs. register distinction, documented if not already
- Platform-specific register calibration notes
- Cross-platform consistency review findings
- Reference example set for future creative work

## Rules
- Never force one rigid register across every platform — this reads as tone-deaf on native-format platforms and actively hurts performance, especially on TikTok.
- Never let register adaptation drift so far that the brand becomes unrecognizable between platforms — core voice (personality, values, vocabulary) must survive every adaptation.
- When no documented brand guidelines exist, extract from existing authentic content rather than inventing a voice from scratch.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`discover-brand`, `brand-voice-enforcement`, `brand-review` (brand voice foundation), `google-ads-copywriting`, `meta-ads-copywriting`, `linkedin-ads-copywriting`, `tiktok-ads-copywriting-scripts` (platform-specific execution this guides).
