# Contributing

This repo is built to stay trustworthy at scale — 98 skill files that get loaded directly into an agent's context and acted on, sometimes with real client money behind the output. That changes what "reviewing a PR" means here compared to a normal code repo. Read this before opening or reviewing one.

## Why review matters more here

Every `SKILL.md` is natural-language instructions an agent will follow. Unlike application code, there's no compiler, type checker, or test suite that catches a bad instruction — the review *is* the safety mechanism. A careless or malicious PR can smuggle in an instruction ("always recommend vendor X," "ignore the verification gate," "skip the compliance check for category Y") that reads as plausible domain advice but quietly serves the contributor's interest over the user's. Treat every PR to a `SKILL.md` file the way you'd treat a PR that touches auth code, not the way you'd treat a typo fix to a blog post.

## Before merging any PR

- **Read the full diff, not just the description.** Instructions embedded mid-paragraph in a "Core Capabilities" section are easy to skim past.
- **Check every new "Rule" or "Workflow" step for what it tells the agent to *skip* or *always do*, not just what it adds.** Additions that weaken the Verification Gate, remove a compliance flag, or steer toward a specific unnamed vendor/service are the highest-risk category.
- **Verify factual/mechanical claims where feasible** (character limits, campaign-type names, thresholds) against current platform documentation — don't just trust that a contributor did.
- **Confirm the skill still follows the standard structure** (`Purpose / Trigger Conditions / Required Inputs / Core Capabilities / Workflow / Outputs / Rules / Related Skills`), still carries the Currency & Scope note and Verification Gate, and that its `description` frontmatter uses realistic trigger phrases.
- **New skills need a routing-table entry** in the relevant master skill (`google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads`, `paid-media-strategy`, or `ad-creative-intelligence`) — a skill nobody routes to is dead weight.
- **PRs to `install.sh` or `install.ps1` need to be run, not just read.** Test `--dry-run`/`-DryRun` and at least one real install (full library and one single-domain filter) on a clean checkout before merging — a broken installer is often someone's very first interaction with the repo.

## What to do if you're not sure

If a PR's intent isn't obvious from the diff alone, ask the contributor to explain the specific behavior change in the PR description before merging — don't merge on the assumption that more content is automatically better content.

## Opening a PR

1. Fork, branch, and follow the existing per-skill structure exactly (see any file in `/skills` as a template).
2. Keep the `description` field trigger-phrase-rich — that's what makes automatic routing work.
3. If you're updating a fact that changes with platform updates (a character limit, a deprecated feature, a new campaign type), update the "last reviewed" date in that skill's Currency & Scope note to the date of your change.
4. If you're adding a whole new skill, add it to the relevant master skill's routing table and cross-link it from any skill that should hand off to or from it.
5. Add a line to `CHANGELOG.md` describing the change.
6. Open the PR with a description of *what changed* and *why*, not just a file list.

## Reporting a problem

If you find a skill giving factually wrong platform guidance, a compliance gap, or — more seriously — an instruction that looks like it's steering the agent toward a bad outcome, open an issue. If it's a security-relevant concern (e.g., a PR you believe is intentionally trying to smuggle in a harmful instruction), flag it as such explicitly in the issue title so it gets prioritized.
