---
name: paid-media-cross-platform-audit
description: "Audit a business's entire paid media presence across Google, Meta, LinkedIn, and TikTok as one system. Triggers on 'audit my whole paid media presence', 'review all my ad accounts', 'cross-channel advertising audit', or 'inherited a multi-platform ad program, check it all'. Calls into each platform's own -audit skill and adds cross-channel findings those miss individually."
---

# Paid Media Cross-Platform Audit

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Audit a business's paid media presence as one connected system rather than a set of disconnected single-platform reviews — surfacing findings that only appear when comparing channels against each other (duplicated audiences, conflicting attribution claims, budget misallocation, inconsistent tracking).

## Trigger Conditions
- "Audit my whole paid media presence"
- "Review all my ad accounts across platforms"
- "Cross-channel advertising audit"
- "I inherited a multi-platform ad program — check it all"

## Required Inputs
- Access (or exports) across all active platforms (Google Ads, Meta Ads, LinkedIn Ads, TikTok Ads, others)
- Business goal(s) and total budget
- How long the overall program has been running

## Core Capabilities

### Per-Platform Audit Aggregation
- Running (or requesting) each platform's own audit skill (`google-ads-audit`, `meta-ads-audit`, `linkedin-ads-audit`, `tiktok-ads-audit`) as the foundation — this skill doesn't duplicate that depth, it aggregates and cross-references it
- Normalizing findings across platforms into a single ranked list by dollar impact, since a "medium" finding on a large-budget channel may outweigh a "high" finding on a small-budget one

### Cross-Channel Findings (The Value-Add)
- Attribution conflicts: multiple platforms claiming credit for the same conversions, inflating the perceived total return when self-reported numbers are simply summed — recommend a blended measurement view (`looker-studio-reporting`/GA4) as the fix
- Audience/targeting overlap across platforms competing for literally the same individuals (e.g., aggressive Meta and Google Display retargeting both hammering the same cart-abandoner simultaneously) — a frequency/experience problem invisible from within any single platform's own reporting
- Budget misallocation relative to genuine channel performance, once attribution is normalized — is spend concentrated where it should be, or historically inertial
- Tracking consistency: are conversion definitions and values consistent across platforms (e.g., does "Purchase" mean the same thing and carry the same value in Google Ads, Meta, and GA4), since inconsistency here corrupts any cross-channel comparison
- Brand/message consistency across platforms — inconsistent offers, pricing, or positioning between channels erodes trust for prospects who encounter more than one

### Scaling Readiness (Program-Level)
- Whether the overall program — not just one channel — has the tracking maturity and creative pipeline to support increased total spend
- Identifying which channel has the most unrealized headroom vs. which are already close to saturated for their current targeting/audience definition

## Workflow
1. Gather access/exports across all active platforms and confirm business goal(s)/budget.
2. Run or request each platform's own audit skill as the foundation layer.
3. Normalize findings into one dollar-impact-ranked list across all platforms.
4. Check specifically for cross-channel issues: attribution conflicts, audience overlap/over-frequency, tracking definition inconsistency, budget misallocation, brand/message inconsistency.
5. Deliver a program-level scaling-readiness verdict alongside platform-specific findings.

## Outputs
- Unified findings list ranked by dollar impact across all platforms
- Cross-channel-specific findings (attribution conflicts, overlap, tracking inconsistency, message inconsistency)
- Program-level scaling readiness verdict with per-channel headroom assessment
- Routing recommendations into platform-specific audits/optimization skills for deeper single-channel fixes

## Rules
- Never simply concatenate each platform's audit output without adding genuine cross-channel analysis — the cross-channel findings are this skill's entire reason to exist beyond the platform audits themselves.
- Always flag attribution double-counting risk when multiple platforms report strong self-attributed performance for what may be overlapping conversions.
- Rank the unified findings list by dollar impact across the whole program, not by which platform happened to be reviewed first.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-audit`, `meta-ads-audit`, `linkedin-ads-audit`, `tiktok-ads-audit` (the per-platform foundation this aggregates), `looker-studio-reporting` (blended measurement), `paid-media-budget-allocation` (acting on the findings).
