---
name: google-search-console
description: "Monitor and fix organic search health using Google Search Console — indexing, Core Web Vitals, search performance, and manual actions. Triggers on 'check Search Console', 'my page isn't indexed', 'organic traffic dropped', 'Core Web Vitals issues', or 'submit a sitemap'. Organic/technical SEO layer — complements, not replaces, paid Google Ads work."
---

# Google Search Console

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Use Search Console to monitor and fix the technical and performance factors controlling organic visibility — indexing status, Core Web Vitals, search query performance, and manual/security issues — as the diagnostic source of truth Google itself provides for organic search.

## Trigger Conditions
- "Check Search Console for issues"
- "My page isn't showing up in Google / isn't indexed"
- "Organic traffic dropped — why?"
- "Core Web Vitals / page experience issues"
- "Submit a sitemap"

## Required Inputs
- Search Console property access (domain property preferred over URL-prefix for full-domain coverage)
- The specific symptom, if any (traffic drop, indexing issue, manual action notice) vs. a general health check
- Sitemap status and CMS/platform (affects how technical fixes get implemented)

## Core Capabilities

### Indexing
- Coverage report: indexed vs. excluded pages, and the specific exclusion reason (noindex, crawl anomaly, duplicate without canonical, discovered-not-indexed due to crawl budget)
- Sitemap submission and validation, and cross-checking sitemap URLs against actual indexing status
- URL inspection tool for diagnosing why a specific page isn't indexed or is indexed incorrectly
- Distinguishing "not indexed yet" (normal for new pages) from "indexing blocked" (a fixable problem)

### Search Performance
- Query and page-level performance: impressions, clicks, CTR, average position
- Identifying high-impression/low-CTR pages — often a title/meta description opportunity, not a ranking problem
- Identifying position-8-to-15 "near miss" pages worth content/link investment to push onto page 1
- Query-to-page mapping mismatches (a page ranking for the wrong query relative to its actual intent)

### Core Web Vitals & Page Experience
- LCP, INP, CLS status by URL group, and which pages are dragging the site's aggregate score
- Mobile usability issues flagged directly by Search Console
- Explaining that Core Web Vitals is one ranking factor among many — don't overstate its isolated impact relative to content relevance and links

### Manual Actions & Security Issues
- Manual action notices (the highest-priority alert type — these directly suppress rankings/indexing until resolved)
- Security issue notices (hacked content, malware) requiring immediate remediation before any other SEO work matters
- Reconsideration request process once the underlying issue is fixed

### Links
- Top linking sites and pages (external link profile visibility, though partial vs. third-party tools)
- Internal linking report to identify orphaned or under-linked important pages

## Workflow
1. Check for manual actions/security issues first — these are blocking and override every other priority.
2. If investigating a traffic drop, compare the date range against the coverage and performance reports to isolate whether it's an indexing problem, a ranking/position problem, or a demand/seasonality change.
3. Review indexing coverage for unexpected exclusions on important pages.
4. Review Core Web Vitals status and flag pages dragging the aggregate score.
5. Review search performance for high-impression/low-CTR pages (metadata opportunity) and near-miss position pages (content/link opportunity).
6. Prioritize fixes by traffic/revenue impact of the affected pages, not by report category.

## Outputs
- Manual action / security issue status (flagged first if present)
- Indexing coverage summary with specific exclusion reasons for important pages
- Core Web Vitals status by page group
- Prioritized opportunity list: metadata fixes (high-impression/low-CTR) and near-miss content/link targets
- Traffic-drop root cause, when investigating one

## Rules
- Always check manual actions and security issues before anything else — no other SEO work matters while either is active.
- Don't conflate "not indexed" with "broken" — new pages and legitimately low-value pages (thin, duplicate) are often correctly excluded.
- Frame Core Web Vitals findings proportionally — it's a real but secondary ranking factor, not a silver bullet fix for a content or authority problem.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-analytics-ga4` (organic traffic behavior once visitors arrive), `google-tag-manager` (implementing technical fixes that require tag/script changes), `google-ads-strategy` (deciding paid vs. organic investment mix), `seo-audit` (broader SEO work beyond Search Console's scope).
