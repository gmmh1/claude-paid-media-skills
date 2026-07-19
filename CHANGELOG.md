# Changelog

All notable changes to this skill library are logged here. Each skill also carries its own "last reviewed" date in its Currency & Scope note — check that for a single skill's own freshness; check here for the shape of the whole library over time.

## [1.4.1] — 2026-07-19

### Changed
- GitHub topics set on the live repo: `claude`, `claude-skills`, `claude-code`, `ai-agents`, `llm`, `marketing-automation`, `google-ads`, `meta-ads`, `paid-media`, `ppc`, `agency-tools`.
- `docs/promotion-strategy.md`: checked off the now-complete pre-launch checklist items (LICENSE, topics, repo description, installer testing, git push) — social preview image and profile pin remain open.

## [1.4.0] — 2026-07-19

### Added
- Public GitHub repository created: [github.com/gmmh1/claude-paid-media-skills](https://github.com/gmmh1/claude-paid-media-skills) (public, MIT licensed).

### Changed
- `README.md` and `docs/README.md`: replaced the placeholder `https://github.com/<your-org>/<this-repo>.git` clone URL with the real repo, `https://github.com/gmmh1/claude-paid-media-skills.git`.
- Added `.gitignore` excluding the internal `skills creation instruction.md` planning notes from the public repo.

## [1.3.2] — 2026-07-19

### Changed
- `LICENSE`: copyright holder set to GMHCO LTD, replacing the `[Your Name or Organization]` placeholder — the last open item blocking publication.
- `README.md` and `docs/README.md`: added "Built and maintained by [GMHCO LTD](http://gmhco.org/)" attribution.
- `docs/promotion-strategy.md`: checked off the LICENSE item in the pre-launch checklist now that it's resolved.

## [1.3.1] — 2026-07-19

### Changed
- Full documentation reconciliation pass following the v1.3.0 installer addition: verified every doc file (`README.md`, `docs/README.md`, `docs/developer-guide.md`, `docs/pros-and-cons.md`, `docs/promotion-strategy.md`, `CONTRIBUTING.md`) cross-references correctly and no file describes the repo as it existed before installers existed.
- `README.md`: corrected the `docs/` line in the Structure section to mention `promotion-strategy.md`, which it had omitted.
- `docs/pros-and-cons.md`: Advantage #1 now names `install.sh`/`install.ps1` concretely instead of the generic "an install step."
- `CONTRIBUTING.md`: added a requirement to actually run (not just read) `install.sh`/`install.ps1` changes — dry-run plus at least one real install — before merging a PR that touches either script.

## [1.3.0] — 2026-07-19

### Added
- `install.sh` — one-command installer for macOS/Linux/Git Bash. Supports `--project` (project-scoped instead of global), `--domain=<name>` (install a single domain: `google-ads`, `meta-ads`, `linkedin-ads`, `tiktok-ads`, `paid-media`, `creative`), `--dry-run` (preview without copying), `--list`, and `--help`. Tested against all six domains plus a full install.
- `install.ps1` — equivalent one-command installer for Windows PowerShell, same flag set (`-Project`, `-Domain`, `-DryRun`, `-List`). Tested against a full install and a project-scoped single-domain install.

### Changed
- `README.md` and `docs/README.md`: Quick Start sections now lead with the installer scripts, with manual `cp -r` kept as a documented fallback for anyone who wants to see exactly what's being copied, or has no shell/PowerShell available.
- `docs/promotion-strategy.md`: added installer testing to the pre-launch checklist, and mentioned the one-command install in the Show HN draft copy as a friction-reduction point.

## [1.2.0] — 2026-07-19

### Added
- `docs/promotion-strategy.md` — positioning, target audiences, a pre-launch checklist, a sequenced launch plan across GitHub/Hacker News/Product Hunt/Reddit/LinkedIn/X, ready-to-adapt launch copy, growth loops, and explicit guardrails against overclaiming traction or implying platform endorsement.

### Changed
- `docs/README.md`: added a pointer to `promotion-strategy.md` under "Where to go next."

## [1.1.1] — 2026-07-19

### Changed
- Documentation consistency pass across `README.md`, `docs/README.md`, `docs/developer-guide.md`, `docs/pros-and-cons.md`, `CONTRIBUTING.md`, and `CHANGELOG.md` so all six cross-reference each other correctly and none describe the repo as it existed before v1.1.0.
- `docs/developer-guide.md`: added a "Section 0" explaining the Currency & Scope note and Verification Gate up front, since they now shape how every skill's output should be read; updated the "adding a new skill" template to include both plus a reminder to log the change here.
- `CONTRIBUTING.md`: added a step requiring a `CHANGELOG.md` entry as part of opening a PR.

## [1.1.0] — 2026-07-19

### Added
- **Currency & Scope note** on all 98 skills: an explicit, standardized disclaimer that platform mechanics (character limits, campaign types, thresholds, policy specifics) are a snapshot as of the review date, not guaranteed current, and that the skill is an independent/unofficial resource — not legal, tax, or financial advice.
- **Verification Gate rule** on all 98 skills: a standardized rule requiring mechanical specifics be checked against current platform documentation and explicit human sign-off obtained before output is used to spend real money, make a compliance-sensitive claim, or go to a client as final.
- **Differentiation note** on all five `*-client-services` skills (`google-ads-client-services`, `meta-ads-client-services`, `linkedin-ads-client-services`, `tiktok-ads-client-services`, `paid-media-client-services`): explicit framing that the pricing/proposal logic is a public starting template, not a competitive edge in itself.
- Strengthened legal-escalation language in `google-ads-compliance`.
- `CONTRIBUTING.md` — PR review guidance specifically addressing the prompt-injection/trust-surface risk of accepting community contributions to files an agent executes directly.
- `docs/pros-and-cons.md` — a full accounting of the tradeoffs of using and open-sourcing a skill library like this one, including which risks are structurally inherent vs. actively mitigated in this repo.

### Notes
This release directly addresses the disadvantages identified in `docs/pros-and-cons.md`'s first pass: platform drift, no-official-endorsement, no built-in enforcement, compliance-isn't-legal-advice, and exposed-business-logic are now mitigated at the content level (not just documented as a risk to manage yourself). Fork fragmentation and maintenance burden are mitigated via this changelog plus per-skill review dates. Prompt-injection/trust-surface risk is mitigated via `CONTRIBUTING.md`'s review process. Over-trust risk is mitigated by the Currency & Scope note's explicit hedging language. None of these are fully eliminable by editing Markdown — see `docs/pros-and-cons.md` for what remains structurally true regardless.

## [1.0.0] — 2026-07-19

### Added
- Initial public release: 98 skills across six domains — Google Ads + ecosystem (33), Meta Ads (20), LinkedIn Ads (13), TikTok Ads (13), Paid Media Strategy (10), and Creative Intelligence (9) — plus root `README.md`, `docs/README.md`, `docs/developer-guide.md`, and `LICENSE` (MIT).
