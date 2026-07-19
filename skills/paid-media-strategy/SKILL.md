---
name: paid-media-strategy
description: "Master router for cross-platform paid media strategy — deciding across Google, Meta, LinkedIn, TikTok, Amazon and other channels, budget allocation, and cross-channel audits. Triggers on 'which platform should I advertise on', 'allocate my paid media budget', 'cross-channel advertising strategy', or any paid-media question spanning more than one platform. Sits above google-ads, meta-ads, linkedin-ads, and tiktok-ads — routes into those for platform-specific execution."
---

# Paid Media Strategy Master Skill

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

The strategic layer above the platform-specific skill libraries (`google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads`). Platform skills answer "how do I run this campaign on X?" — this layer answers "which platform(s) should I even be on, how do I split budget across them, and how do I manage the account as one coherent system rather than four disconnected ones?"

This skill is a **router**. It doesn't replace the platform-specific skills — it decides which ones to engage and how to weigh them against each other.

## Specialist Skills

| Skill | Use for |
|---|---|
| `paid-media-channel-selection` | Which platform(s) fit this business — the cross-platform version of each platform's own `-strategy` skill |
| `paid-media-budget-allocation` | Splitting budget across channels, not just within one |
| `paid-media-cross-platform-audit` | Auditing a business's entire paid media presence, not one account |
| `paid-media-competitor-intelligence` | Aggregating competitor research across Google/Meta/LinkedIn/TikTok |
| `paid-media-abm` | Cross-channel Account-Based Marketing (LinkedIn + Display + retargeting as one coordinated program) |
| `paid-media-retargeting` | Sequencing retargeting across channels rather than siloed per-platform pools |
| `paid-media-marketplace-ads` | Amazon and other retail-media advertising, not covered by the four platform libraries |
| `paid-media-safety-compliance` | Cross-platform advertising fairness/targeting-bias review |
| `paid-media-client-services` | Selling multi-channel paid media management as one service |

## Step 1: Classify the Request

1. **"Which platform should I use?"** → `paid-media-channel-selection`
2. **"How should I split my budget?"** → `paid-media-budget-allocation`
3. **A specific platform is already named** → go directly to `google-ads`, `meta-ads`, `linkedin-ads`, or `tiktok-ads`; don't route through this layer unnecessarily
4. **"Audit my whole paid media presence"** → `paid-media-cross-platform-audit`, which itself calls into each platform's `-audit` skill and adds cross-channel findings
5. **Competitor research spanning platforms** → `paid-media-competitor-intelligence`
6. **B2B target-account campaigns across channels** → `paid-media-abm`
7. **Amazon/retail media** → `paid-media-marketplace-ads`
8. **Regulated category / targeting fairness concern** → `paid-media-safety-compliance`
9. **Selling this as a multi-channel service** → `paid-media-client-services`

## Step 2: When to Skip This Layer

If the user already knows they want Google Ads, Meta Ads, LinkedIn Ads, or TikTok Ads specifically, route directly to that platform's master skill — don't force a cross-platform strategy conversation onto a request that doesn't need one. This layer earns its keep only when the decision or activity genuinely spans channels.

## Step 3: Chain Into Platform Skills

Once channel selection and budget allocation are decided here, hand off execution entirely to the relevant platform skill(s) (`google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads`) — this layer should not re-implement campaign building, copywriting, or platform-specific optimization, all of which already exist with real depth one level down.

## Rules

- Never let this layer's strategic recommendations override platform-specific mechanics (character limits, tracking prerequisites, policy rules) — those live in the platform skills and take precedence at execution time.
- Don't recommend spreading thin budget across many channels when concentrating on one or two well-executed channels would perform better — channel proliferation is not inherently a strategy.
- Always name the specific platform skill(s) being handed off to, so the user can follow the chain.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills

`ad-creative-intelligence` (cross-platform creative layer, parallel to this strategic layer), `google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads` (execution layer), `competitive-intelligence`, `campaign-plan`.
