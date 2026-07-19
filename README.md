# Paid Media & Marketing Skills for Claude

98 [Claude Skills](https://www.anthropic.com/news/skills) for paid advertising and marketing — Google Ads (every campaign type, plus GA4/Search Console/Tag Manager/Business Profile/Workspace), Meta Ads, LinkedIn Ads, TikTok Ads, cross-platform paid media strategy, and cross-platform creative craft. Organized as master router skills over specialist skills, the same way a real agency organizes expertise.

Built and maintained by [GMHCO LTD](http://gmhco.org/). MIT licensed. Not affiliated with Anthropic, Google, Meta, LinkedIn, TikTok, or Amazon.

## Get started

**[→ Full documentation in /docs](docs/README.md)** — what's included, how Claude Skills work, installation, and the complete developer guide.

```bash
git clone https://github.com/gmmh1/claude-paid-media-skills.git
cd claude-paid-media-skills

# macOS / Linux / Git Bash
./install.sh

# Windows PowerShell
.\install.ps1
```

That installs all 98 skills to `~/.claude/skills` (global, every project). Add `--project` (`.\install.ps1 -Project` on Windows) to install into the current project only instead, or `--domain=meta-ads` (`-Domain meta-ads`) to install just one domain. `--dry-run` (`-DryRun`) shows what would happen without copying anything. Full flag reference: `./install.sh --help`.

No script runtime available, or want to see exactly what's being copied first? Plain copy works too:

```bash
cp -r skills/* ~/.claude/skills/
```

## Structure

```
skills/          98 skill folders — one SKILL.md each, ready to install
install.sh       one-command installer (macOS/Linux/Git Bash)
install.ps1      one-command installer (Windows PowerShell)
docs/            README, developer guide, pros/cons writeup, and a promotion/launch playbook
CONTRIBUTING.md  PR review guidance (read before contributing — these files are agent instructions, review them like code)
CHANGELOG.md     what changed, when
LICENSE          MIT
```

Every skill ships with a dated Currency & Scope disclaimer and a Verification Gate rule requiring human sign-off before its output touches real spend or a real client — see [docs/README.md](docs/README.md#what-makes-this-different-from-a-pile-of-prompts).

See [`docs/README.md`](docs/README.md) for the full catalog and [`docs/developer-guide.md`](docs/developer-guide.md) for how to chain skills across a real workflow.
