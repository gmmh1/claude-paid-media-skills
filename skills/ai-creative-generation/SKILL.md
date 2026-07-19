---
name: ai-creative-generation
description: "Generate ad creative assets (images, video, copy variants) using AI tools — prompt engineering specifically for advertising output, brand consistency, and platform-format fit. Triggers on 'generate ad images with AI', 'AI video for my ads', 'use AI to create ad variants', or 'prompt engineering for advertising creative'. Cross-platform generation layer feeding every platform's creative execution."
---

# AI Creative Generation

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Generate ad creative assets — images, video, copy variants — using AI generation tools, with the prompt engineering discipline and brand-consistency controls specific to advertising output (as opposed to general-purpose AI image/video generation).

## Trigger Conditions
- "Generate ad images with AI for [product]"
- "Create AI video ads"
- "Use AI to produce multiple ad variants quickly"
- "Prompt engineering for advertising creative"

## Required Inputs
- Product/service, brand visual identity (colors, style, existing photography if available for reference/consistency)
- Target platform(s) and their format requirements (aspect ratio, safe zones, native style expectations — coordinate with the relevant platform's creative skill)
- Whether AI generation is filling a gap (no product photography available) or accelerating variant production (many angle/background variations of an existing hero shot)

## Core Capabilities

### Prompt Engineering for Advertising Output
- Advertising prompts need more specificity than general creative prompts: exact product placement/framing, intended emotional tone, platform-native style cues (e.g., "handheld, natural lighting, UGC-style" for TikTok vs. "clean studio product shot" for a Google Shopping feed image)
- Negative prompting to avoid common AI-generation ad-creative failure modes: uncanny/artificial-looking faces or hands, illegible or garbled text-in-image, overly generic "stock photo" composition that reads as inauthentic on native-format platforms
- Iterative refinement: generating a batch, identifying the closest hits, and refining prompts toward those rather than expecting a single perfect prompt on the first attempt

### Brand & Product Accuracy Consistency
- Reference-image/style-lock techniques (where the tool supports them) to keep a product's actual appearance accurate across generated variants — critical for product ads, since a hallucinated/incorrect product rendering is a compliance and trust problem, not just an aesthetic one
- Flagging that AI-generated product imagery showing an inaccurate product (wrong color, wrong feature, distorted proportions) is a policy and trust risk, not just a quality issue — never ship AI product imagery without accuracy verification against the real product

### Platform-Format Fit
- Generating natively in the aspect ratio/format the target platform needs (vertical 9:16 for TikTok/Reels, square/landscape for Feed/Search) rather than generating one format and cropping, which often produces poor composition
- Matching generation style to platform-native creative conventions established in each platform's own creative-strategy skill (e.g., generating deliberately less-polished, UGC-style output for TikTok rather than defaulting to polished studio-quality renders everywhere)

### Video Generation Considerations
- AI video generation for ads is generally best suited to short, simple B-roll-style or supplementary clips rather than a full scripted ad end-to-end at current typical quality/consistency levels — flag realistic expectations rather than overpromising a fully AI-generated hero video
- Combining AI-generated visual elements with real footage/voiceover often produces more reliable results than pure AI video generation for anything requiring precise messaging timing

### Compliance & Disclosure
- Awareness that some platforms and jurisdictions have emerging disclosure requirements for AI-generated or digitally-altered advertising content — flag this as an area requiring verification against current platform policy at execution time, since rules are evolving
- Never using AI generation to fabricate claims, testimonials, or "proof" that doesn't exist (fake reviews, fabricated before/after results) — this is a policy and, in many cases, legal risk regardless of the tool used

## Workflow
1. Confirm product/brand visual identity references and target platform format requirements.
2. Determine whether AI generation is filling a photography gap or accelerating variant production from an existing asset.
3. Write platform-native, specific prompts (framing, tone, style cues) with negative prompting against common failure modes.
4. Generate iteratively, refining toward the strongest results rather than expecting one-shot perfection.
5. Verify product accuracy against the real product before shipping any AI-generated product imagery.
6. Check current platform policy on AI-generated content disclosure requirements before finalizing.

## Outputs
- Platform-native prompt set (per format/platform)
- Generated asset batch with accuracy verification notes
- Flagged compliance/disclosure considerations requiring verification

## Rules
- Never ship AI-generated product imagery without verifying accuracy against the real product — inaccurate product representation is a compliance and trust risk, not a minor quality issue.
- Never use AI generation to fabricate testimonials, reviews, or results that don't exist.
- Generate natively in the target format/aspect ratio rather than cropping after the fact.
- Flag emerging AI-content disclosure requirements as needing verification against current platform policy, since this area is still evolving.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`creative-brief-generator` (defines what to generate), platform-specific creative-strategy skills (`meta-ads-creative-strategy`, `tiktok-ads-creative-strategy`) for native-format requirements, `ai-artist`/`ai-multimodal` (broader AI generation tooling), `google-ads-compliance`/`meta-ads` policy skills (disclosure/claims verification).
