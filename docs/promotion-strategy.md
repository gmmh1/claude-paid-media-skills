# Promotion & Marketing Strategy

How to get this library in front of the people who'd actually use it, and turn that awareness into real installs — not just stars. Written the same way the skills themselves are: concrete, sequenced, and honest about what's actually true today (zero users, zero stars, zero track record) versus what you're promising it'll become.

## 1. Positioning: the one sentence that has to land

> **"98 Claude Skills that turn a general-purpose AI into a paid-media specialist across Google, Meta, LinkedIn, and TikTok — free, open source, and honest about what it doesn't know."**

Three things carry that sentence, and every piece of promotion should reinforce at least one:

1. **Breadth** — six domains, every major campaign type, not a thin wrapper around one platform.
2. **Architecture** — the master-router pattern is a genuinely interesting engineering story, not just a content dump. This is your hook with technical/developer audiences who don't care about Google Ads.
3. **Trust** — the Currency & Scope note and Verification Gate on every skill directly answer the objection every skeptical marketer has about AI-generated ad advice ("how do I know this isn't confidently wrong"). This is your hook with the marketing/agency audience who's been burned by AI hype before.

Don't lead with "best of the best" or "dominates the community" language in anything public-facing — claims like that read as hollow on a brand-new repo with no track record, and they invite exactly the skepticism you're trying to defuse with the trust positioning above. Let the architecture and the honesty do the persuading; that's a stronger, more credible pitch than a superlative would be.

## 2. Who you're actually talking to

Four distinct audiences, four different hooks. Don't write one generic announcement and blast it everywhere — tailor the opening line per audience.

| Audience | What they care about | Opening hook |
|---|---|---|
| **Solo PPC/paid-media freelancers & small agency owners** | Saving time, sounding credible to clients, maybe starting/scaling a service | "I packaged years of paid-media playbooks into something Claude can actually run — including the client proposal templates." |
| **Claude Code / AI power users, indie devs** | Interesting architecture, novel use of a new feature (Skills), something to fork/learn from | "Built a 98-skill library with a master-router pattern on top of Claude Skills — here's how the routing works." |
| **Marketing agency operators (bigger than solo)** | Reliability, whether this replaces or augments staff, risk | "Every skill ships with a built-in verification gate — it's designed to be checked, not blindly trusted." |
| **Aspiring marketers / side-hustlers** | "Can I actually start a business with this" | "Free playbooks for launching a paid-media freelance practice — Google Ads, Meta, TikTok, LinkedIn, plus how to price and pitch it." |

## 3. Pre-launch checklist (do this before any promotion)

Promotion sends people to look at the repo within seconds of clicking — if it doesn't look credible on arrival, every other tactic below is wasted effort.

- [x] **Fill in the LICENSE copyright name** — done, held by GMHCO LTD.
- [x] **Add GitHub topics/tags** — done: `claude`, `claude-skills`, `claude-code`, `ai-agents`, `llm`, `marketing-automation`, `google-ads`, `meta-ads`, `paid-media`, `ppc`, `agency-tools`.
- [x] **Write a tight repo description** — done, set on the GitHub repo itself at creation time.
- [ ] **Add a social preview image** (GitHub Settings → Social Preview) — a plain card with the repo name and "98 Claude Skills for Paid Media" reads far better in a shared link than GitHub's default blank preview. Still open — needs an actual image asset.
- [ ] **Pin the repo** on your GitHub profile.
- [ ] **Do a cold read of the README** as if you're a stranger — does the value land in the first two lines, before anyone has to scroll?
- [x] **Test `install.sh` and `install.ps1` on a clean checkout right before launch** — done during development (dry-run + real install, both platforms, full library and single-domain filters).
- [x] **Confirm `git init` + first commit is done and pushed** — live at [github.com/gmmh1/claude-paid-media-skills](https://github.com/gmmh1/claude-paid-media-skills).

## 4. Launch sequence

Don't post everywhere on day one. Sequence it so early feedback improves later posts, and so you're not visibly cross-posting the identical message everywhere (which reads as spam and gets flagged by community moderators).

### Day 0 — soft launch
- Push to GitHub, make it public.
- Post in **one** low-stakes place first to catch obvious mistakes: a Claude/AI-focused Discord or subreddit (r/ClaudeAI) where the audience is technically literate and will tell you directly if something's broken or confusing, without it being your one shot at a big audience.
- Fix anything that comes up.

### Week 1 — primary launch
Pick 2–3 of these, not all of them at once:
- **Show HN** (Hacker News) — technical audience, rewards the architecture story over the marketing-use-case story. Post title should describe what it *is*, not sell it ("Show HN: 98 Claude Skills for paid-media advertising, organized as router + specialists").
- **Product Hunt** — better fit for the "tool you can use today" framing than the architecture framing. Needs a tagline, a short description, and ideally a short screen-recording or GIF showing a skill actually being invoked.
- **Reddit**: r/PPC, r/DigitalMarketing, r/agency, r/juststart, r/Entrepreneur — each has different self-promotion norms (some require a flair, some ban link-only posts, some want a "what I learned" narrative instead of a launch announcement). Read each subreddit's rules before posting; a post that reads as pure self-promotion gets removed on most of these.
- **LinkedIn** — this is arguably your strongest channel given the audience overlap (marketers, agency owners) is exactly who's active there. A short post + the repo link outperforms a long one; lead with the client-services angle for this audience specifically.
- **X/Twitter** — a thread works better than a single post here. Thread structure: hook tweet (the positioning sentence) → 3-4 tweets on the architecture (router pattern, verification gates) with a screenshot each → closing tweet with the link and a direct ask ("try it, tell me what's missing").

### Month 1 — sustained/compounding channels
These take longer to pay off but compound instead of spiking-and-fading:
- **`awesome-claude-code` / `awesome-claude-skills`-style GitHub lists** — submit a PR adding your repo to any curated list you can find covering Claude Skills or Claude Code resources. These lists get sustained organic traffic long after a launch post is buried.
- **A written launch/build story** (dev.to, a personal blog, Anthropic's own community forum if one exists) — "why I built a 98-skill library and what the master-router pattern taught me" is evergreen, gets indexed by search, and is a different value prop (learning, not just using) than the tool-announcement posts above.
- **Indie Hackers** — post as a build-in-public update, especially useful if you plan to develop the client-services angle into an actual paid offering later; that audience specifically likes watching free-tool-to-business narratives.

## 5. Ready-to-adapt copy

Starting points, not final copy — put your own voice on these before posting, and never post the identical wording across every platform simultaneously.

**Show HN title:**
> Show HN: 98 Claude Skills for paid-media advertising (Google, Meta, LinkedIn, TikTok)

**Show HN body opener:**
> I built a library of 98 Claude Skills covering paid advertising across four platforms, organized as master-router skills over specialists — the same pattern a real agency uses to organize expertise (a strategist doesn't personally write ad copy, they route to a copywriter). Every skill carries a dated "currency" disclaimer and a verification-gate rule requiring human sign-off before real spend, since ad platforms change fast and I didn't want this to quietly imply more authority than a snapshot deserves. One-command install (`install.sh` / `install.ps1`, with a domain filter and a dry-run flag) if you just want to try it. MIT licensed, no affiliation with any of the platforms named. Feedback on the architecture (or gaps in coverage) very welcome.

**LinkedIn post opener (agency-owner audience):**
> If you run paid media for clients — or want to — I open-sourced 98 Claude Skills covering Google, Meta, LinkedIn, and TikTok Ads: campaign building, compliance, optimization, and the pricing/proposal frameworks for running it as an actual service. Free, MIT licensed. [link]

**X/Twitter thread hook tweet:**
> Spent a while building this: 98 Claude Skills for paid media — Google, Meta, LinkedIn, TikTok, plus the cross-platform strategy and creative layers. Free, MIT licensed. Thread on how it's structured 🧵

**Product Hunt tagline:**
> Paid-media expertise for Claude — 98 skills, 6 platforms, one open architecture.

## 6. Growth loops (make the project promote itself)

- **Dogfood it visibly.** Use `google-ads-client-services`/`meta-ads-client-services` to actually draft your own launch proposal-style content, and say so when you post it — "this LinkedIn post's structure came from one of the skills in the repo" is a better demo than any description could be.
- **Encourage forks with a visible payoff.** The developer guide already tells people how to fork and customize a skill with their own brand voice/pricing — that's a reason to fork beyond "I want the free code," which means forks are more likely to turn into engaged users, not just a number.
- **Lower the bar for a first contribution.** A "last reviewed" date going stale is an easy, low-risk first PR for someone who spots an outdated character limit — call this out explicitly (e.g., a `good-first-issue`-labeled GitHub Issue template) so casual users have a path from "I use this" to "I contribute to this."
- **Answer every issue and PR fast, especially early.** The first handful of external contributors set the tone for whether this looks like an active, trustworthy project or an abandoned one — response speed matters disproportionately in the first month.

## 7. What to avoid

- **Don't claim traction you don't have.** No "trusted by," "used by thousands," or star-count claims until they're true — a marketing-tools repo caught inflating claims is a uniquely bad look given the audience.
- **Don't imply platform endorsement.** The repo already disclaims non-affiliation with Google/Meta/LinkedIn/TikTok/Amazon — keep that discipline in every promotional post too, not just the docs. Don't use platform logos in promotional graphics.
- **Don't cross-post identical copy everywhere simultaneously.** Beyond reading as spam, it also means you get one shot at feedback instead of iterating between posts.
- **Don't over-promise on maintenance.** If you can't commit to active upkeep, say that plainly (the pros-and-cons doc already models this honesty) rather than implying a cadence you won't sustain — a project that's honest about being lightly maintained is more trustworthy than one that goes quiet after implying otherwise.

## 8. Minimal tracking

You don't need elaborate analytics for a static-file repo. Track what's cheap and meaningful:
- GitHub stars/forks over time (directional interest signal, not usage).
- Which launch post actually drove traffic — use a distinct UTM-tagged link or platform-specific short link per channel if you want to compare Show HN vs. LinkedIn vs. Reddit, since GitHub referrer data alone (Insights → Traffic) only retains ~14 days.
- Issues/PRs opened by people who aren't you — the real signal that this crossed from "seen" to "used."
