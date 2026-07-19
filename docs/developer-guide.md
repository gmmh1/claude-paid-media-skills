# Developer Guide

How this library is structured, how to actually use it in a real workflow, and how to extend it for your own business or clients.

## 0. The two lines every skill has, and why they matter

Before anything else: every skill in this repo opens with a **Currency & Scope note** (a dated disclaimer that mechanical specifics aren't guaranteed current) and closes its Rules section with a **Verification Gate** (an instruction requiring human sign-off, checked against live platform docs, before output touches real spend or a real client). These aren't boilerplate — they change how you should read a skill's output:

- Treat anything mechanical (character limits, thresholds, feature names) as "probably right, confirm before you rely on it," not as a settled fact.
- Treat a finished-looking deliverable (a campaign plan, a compliance review, a client proposal) as a draft awaiting your sign-off, not as launch-ready just because it's well-formatted.

If you're building an automated pipeline on top of these skills (no human in the loop), you need to implement that verification step yourself in your own system — a rule inside a Markdown file can prompt an agent to pause, but it can't technically block an API call. See [pros-and-cons.md](pros-and-cons.md#the-honest-limit-of-a-documentation-level-fix) for the full explanation of that limit.

## 1. The three-layer pattern

Every domain in this repo follows the same shape:

```
Master Skill (router)
   │
   ├── Specialist Skill A  (one job, done well)
   ├── Specialist Skill B
   └── Specialist Skill C
```

The **master skill** (`google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads`, `paid-media-strategy`, `ad-creative-intelligence`) never does the work itself. It reads your request, decides which specialist(s) apply, and hands off — often to more than one, in sequence. This mirrors how a real agency is organized: a strategist doesn't personally write RSA headlines, but knows to route that work to a copywriter.

Two more layers sit above the four ad platforms:

- **`paid-media-strategy`** answers channel-level questions ("should I be on Google or TikTok?", "how do I split my budget?") that no single platform's own skill can answer, because they require comparing platforms against each other.
- **`ad-creative-intelligence`** answers craft-level questions (persuasion frameworks, testing methodology, brand voice) that are genuinely reusable no matter which platform the copy ends up on.

**Rule of thumb:** if your question is platform-specific ("write me RSA headlines"), go straight to that platform's skill. If it spans platforms or is about the underlying craft, start one layer up.

## 2. How a skill actually gets invoked

Two paths:

1. **Automatic** — you describe what you want in plain language, and the agent matches your request against every installed skill's `description` frontmatter, picks the best fit, and loads its instructions. This is how most real usage happens.
2. **Explicit** — you type `/skill-name` (e.g. `/google-ads-audit`) to invoke a specific skill directly, bypassing matching. Useful when you know exactly which specialist you want, or when two skills' descriptions could plausibly both match and you want to disambiguate.

Because matching is description-based, **the way you phrase a request matters**. Each skill's description was written with the actual trigger phrases a user would type ("audit my Google Ads account", "why is my TikTok ad fatigued") — using similar language gets you routed correctly faster than a vague request.

## 3. Chaining skills across a real workflow

This is where the library earns its keep — almost no real task lives inside one skill. Here's a full worked example.

**Task:** *"Launch a Google Ads campaign for my new DTC skincare brand, $3k/month budget."*

```
1. google-ads-strategy          → confirms Search + Shopping/PMax fit, funnel sequencing
2. google-ads-account-management → account setup, currency/billing, linking GA4 + Merchant Center
3. google-ads-keyword-research    → intent-classified keyword list, budget forecast
4. google-ads-shopping-feed        → product catalog structured for Shopping/PMax
5. google-ads-campaign-builder      → campaign/ad-group structure, audience foundation
6. google-ads-copywriting            → RSA headlines/descriptions within character limits
7. google-ads-compliance               → claims/policy check before launch
8. google-ads-measurement                → conversion tracking verified before calling it done
```

A second example, cross-platform:

**Task:** *"We're a B2B SaaS company — where should we be advertising, and build out the first campaign."*

```
1. paid-media-channel-selection   → compares Google/Meta/LinkedIn/TikTok against your ICP,
                                      deal size, and sales cycle — likely recommends
                                      LinkedIn (ABM) + Google Search (intent capture)
2. linkedin-ads-abm               → target account list, buying committee mapping
3. linkedin-ads-campaign-builder   → campaign structure, ad format selection
4. linkedin-ads-copywriting          → Sponsored Content / Message Ad copy
5. google-ads-strategy                → parallel Search campaign for self-directed research
6. paid-media-budget-allocation         → splits the total budget across both channels
```

You don't need to name every skill yourself — a capable agent will chain these automatically once it identifies the task spans multiple specialists. But knowing the chain lets you steer ("skip the strategy step, I already know I want LinkedIn") or spot when a step got skipped that shouldn't have been (e.g., a campaign got built without `*-measurement` ever being invoked — that's a real gap, not a shortcut).

## 4. Reading a SKILL.md like a developer

Every specialist skill in this repo follows the same internal structure:

- **Purpose** — the one-sentence job this skill does.
- **Trigger Conditions** — example phrasings that should route here.
- **Required Inputs** — what the skill needs from you before it can do good work; if you're missing one, expect to be asked.
- **Core Capabilities** — the actual domain knowledge, usually broken into sub-areas.
- **Workflow** — the step-by-step process the skill follows.
- **Outputs** — what you should expect to receive.
- **Rules** — hard constraints ("never launch without X", "always flag Y") — these are the guardrails, read them before trusting output blindly.
- **Related Skills** — the upstream/downstream chain, so you can navigate the library manually.

If you only read one section before using a skill, read **Rules** — it tells you what the skill will refuse to do or will always flag, which is your fastest way to know its limits.

## 5. Customizing a skill for your business

These skills are generic by design — they don't know your brand voice, your actual pricing, or your specific client roster. To adapt one:

1. **Fork the file, don't edit in place if you're tracking upstream updates.** Copy `skills/<name>/SKILL.md` to your own project's `.claude/skills/<name>/SKILL.md` — project-scoped skills override global ones with the same name, so you can maintain a customized version without losing the global default for other projects.
2. **Add a "Business Context" section** near the top with your actual brand voice, pricing model, standard deliverables, and client roster patterns. The rest of the skill's domain expertise (character limits, platform mechanics, compliance rules) stays correct and doesn't need touching.
3. **For pricing/client-services skills specifically** (`google-ads-client-services` and siblings), replace the generic pricing-model discussion with your actual rate card once you've decided one — the skill's job is to help you *design* the pricing structure once, not to re-derive it from scratch every conversation.
4. **Extend `brand-voice-ad-adaptation`** with your specific tone guidelines once documented — this is the skill built to carry that context across every platform-specific copywriting skill.

## 6. Adding a new skill to the library

Follow the existing pattern exactly:

```markdown
---
name: your-skill-name
description: "One or two sentences covering what it does and realistic trigger phrases."
---

# Skill Title

> **Currency & scope note (last reviewed YYYY-MM-DD):** [standard disclaimer — copy the exact wording
> from any existing skill, it's identical across all 98 by design].

## Purpose
## Trigger Conditions
## Required Inputs
## Core Capabilities
## Workflow
## Outputs
## Rules
- [your domain-specific rules]
- **Verification gate:** [standard wording — copy from any existing skill].

## Related Skills
```

Then:
- Add a row to the relevant master skill's routing table (e.g., a new Meta Ads specialist gets added to `meta-ads/SKILL.md`'s table and its "Step 1: Classify the Request" list).
- Cross-link it from any skill that should hand off to or receive from it.
- Keep the `description` field written the way a real user would phrase the trigger — this is what makes automatic routing work.
- Add an entry to `../CHANGELOG.md` under a new version heading, or under "Unreleased" if the repo maintainer batches releases.
- Read `../CONTRIBUTING.md` before opening the PR — skills are agent instructions, and PRs to them get reviewed accordingly.

## 7. Common failure modes and how to avoid them

- **Wrong skill triggered because the request was vague.** Be specific about the platform and task ("write TikTok ad scripts" routes cleanly; "help with my ads" might not). Or invoke explicitly with `/skill-name`.
- **A workflow skipped a prerequisite skill.** Most execution skills (`*-campaign-builder`) explicitly flag missing tracking (`*-measurement`, `*-pixel-capi`, `*-pixel-events`) as blocking — if you see a campaign plan with no mention of tracking verification, ask for it explicitly.
- **Stale platform mechanics.** Ad platforms change fast (new campaign types, deprecated features, shifting character limits). This library reflects a snapshot in time — see [pros-and-cons.md](pros-and-cons.md) for how to handle drift.
- **Global vs. project-scoped conflicts.** If you've customized a skill at the project level and it doesn't seem to apply, check you didn't leave a stale copy in the global `~/.claude/skills/` that's shadowing it, or vice versa.
