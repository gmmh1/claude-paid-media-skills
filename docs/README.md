# Paid Media & Marketing Skills for Claude

A library of 98 [Claude Skills](https://www.anthropic.com/news/skills) covering paid advertising (Google, Meta, LinkedIn, TikTok, Amazon), the broader Google marketing stack (Analytics, Search Console, Tag Manager, Business Profile), and the cross-platform strategy and creative craft that ties them together — organized as **master router skills** over **specialist skills**, the same pattern used by large agencies to organize domain expertise.

Built and maintained by [GMHCO LTD](http://gmhco.org/). This repo is free to use, fork, and modify under the [MIT License](../LICENSE). It is not affiliated with or endorsed by Anthropic, Google, Meta, LinkedIn, TikTok, or Amazon.

## What makes this different from a pile of prompts

Every one of the 98 skills carries two things a lot of open-source prompt/skill libraries skip:

- **A Currency & Scope note** — an explicit, dated disclaimer that mechanical specifics (character limits, campaign types, thresholds) are a snapshot, not guaranteed current, and need verifying against live platform docs before real use.
- **A Verification Gate rule** — an explicit instruction that the skill's output needs human sign-off, checked against current platform documentation, before it's used to spend real money, make a compliance claim, or go to a client as final.

Neither of these makes the library infallible — see [pros-and-cons.md](pros-and-cons.md) for the honest limits — but it means every skill tells you what it doesn't know instead of quietly implying it's authoritative. `CONTRIBUTING.md` and `CHANGELOG.md` extend that same discipline to how the repo itself gets maintained.

## What's in here

| Domain | Master skill | Specialists | Covers |
|---|---|---|---|
| Google Ads + ecosystem | [`google-ads`](../skills/google-ads/SKILL.md) | 25 + 7 adjacent | Every Google Ads campaign type (Search, PMax, Shopping, Demand Gen, Display, Video, App, AI Max, Local), plus GA4, Search Console, Tag Manager, Business Profile, Looker Studio, YouTube organic, Workspace |
| Meta Ads | [`meta-ads`](../skills/meta-ads/SKILL.md) | 18 + Instagram organic | Facebook/Instagram/Messenger/WhatsApp — Advantage+, catalog ads, audience targeting, video/Reels, Pixel/CAPI, creative analytics, Ad Library research |
| LinkedIn Ads | [`linkedin-ads`](../skills/linkedin-ads/SKILL.md) | 11 + organic | B2B campaigns, ABM, Lead Gen Forms, Insight Tag measurement, organic personal-brand/Company Page growth |
| TikTok Ads | [`tiktok-ads`](../skills/tiktok-ads/SKILL.md) | 11 + Shop/organic | Native creative strategy, Spark Ads, Pixel/Events API, TikTok Shop |
| Paid Media Strategy | [`paid-media-strategy`](../skills/paid-media-strategy/SKILL.md) | 9 | The cross-channel layer: which platform(s) to use, budget allocation, cross-platform audits, Amazon/retail media, targeting-fairness compliance |
| Creative Intelligence | [`ad-creative-intelligence`](../skills/ad-creative-intelligence/SKILL.md) | 8 | The reusable creative craft layer: persuasion frameworks, creative briefs, testing methodology, fatigue management, AI creative generation, brand-voice adaptation |

Every domain also ships a **`*-client-services`** skill (`google-ads-client-services`, `meta-ads-client-services`, `linkedin-ads-client-services`, `tiktok-ads-client-services`, `paid-media-client-services`) — pricing models, proposal structure, scope-of-work boundaries, and onboarding checklists for anyone who wants to run this as an actual agency or freelance service, not just execute campaigns.

Full catalog with one-line descriptions: browse [`/skills`](../skills/) — every folder is one skill, and each `SKILL.md`'s frontmatter `description` is a complete summary.

## How Claude Skills work (in general)

A **Skill** is a folder containing a `SKILL.md` file with two parts:

```markdown
---
name: skill-name
description: "One or two sentences: what this does and when it triggers."
---

# Skill instructions in Markdown — steps, rules, examples, whatever
# the model needs to do this task well.
```

- **`name`** must match the folder name and is how the skill is invoked directly (as a slash command, e.g. `/google-ads-audit`, in tools that support it).
- **`description`** is what Claude reads to decide *whether* a skill is relevant to what you just asked — write it with the trigger phrases a real user would type, because that's what gets matched.
- The **body** is plain Markdown instructions. There's no special syntax beyond standard Markdown — headings, lists, tables, code fences all work exactly as you'd expect.

Skills install into `~/.claude/skills/<skill-name>/SKILL.md` (available in every project) or `<project>/.claude/skills/<skill-name>/SKILL.md` (scoped to one project). Once installed, an agent either invokes one automatically when your request matches its `description`, or you invoke it explicitly with `/skill-name`.

## Quick start

Clone, then run the installer for your platform:

```bash
git clone https://github.com/gmmh1/claude-paid-media-skills.git
cd claude-paid-media-skills

./install.sh          # macOS / Linux / Git Bash
.\install.ps1         # Windows PowerShell
```

That installs all 98 skills globally, to `~/.claude/skills` — available in every Claude Code project. Common variations:

| What you want | macOS/Linux/Git Bash | Windows PowerShell |
|---|---|---|
| Only one domain (e.g. Meta Ads) | `./install.sh --domain=meta-ads` | `.\install.ps1 -Domain meta-ads` |
| This project only, not global | `./install.sh --project` | `.\install.ps1 -Project` |
| Preview without installing | `./install.sh --dry-run` | `.\install.ps1 -DryRun` |
| List domain names | `./install.sh --list` | `.\install.ps1 -List` |
| Full flag reference | `./install.sh --help` | `Get-Help .\install.ps1 -Detailed` |

Valid `--domain`/`-Domain` values: `google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads`, `paid-media`, `creative`.

No shell/PowerShell available, or you'd rather see exactly what's being copied first — plain file copy works identically to what the scripts do under the hood:

```bash
# everything, global
cp -r skills/* ~/.claude/skills/

# just one domain
cp -r skills/meta-ads* ~/.claude/skills/
cp -r skills/instagram-organic-growth ~/.claude/skills/

# project-scoped instead of global
mkdir -p .claude/skills
cp -r skills/* .claude/skills/
```

Either way, restart your Claude Code session (or reload skills, if your client supports hot-reload) and the skills are live. Try: *"audit my Google Ads account"*, *"build a Meta Ads campaign for my new product"*, or just `/google-ads` to talk to the router directly.

## Where to go next

- **[developer-guide.md](developer-guide.md)** — the complete guideline: how the master-router pattern works, how to chain skills across a real workflow, how to extend or fork a skill for your own use case, and worked examples end to end.
- **[pros-and-cons.md](pros-and-cons.md)** — an honest look at the tradeoffs of using (and open-sourcing) a skill library like this one, so you can decide how much to trust it and where to add your own guardrails.
- **[promotion-strategy.md](promotion-strategy.md)** — if you're the one maintaining this fork and want people to actually find and use it: positioning, launch sequencing, ready-to-adapt copy for Show HN/Product Hunt/LinkedIn/Reddit/X, and growth loops.

## Contributing

Issues and PRs welcome — see **[../CONTRIBUTING.md](../CONTRIBUTING.md)** before opening one. Because these files are natural-language instructions an agent executes directly, review here works differently than a normal code repo; the guide explains what that means in practice. Short version: follow the existing pattern (`Purpose / Trigger Conditions / Required Inputs / Core Capabilities / Workflow / Outputs / Rules / Related Skills`, plus the Currency note and Verification Gate), keep the `description` trigger-phrase-rich, update the relevant master skill's routing table, and log the change in **[../CHANGELOG.md](../CHANGELOG.md)**.
