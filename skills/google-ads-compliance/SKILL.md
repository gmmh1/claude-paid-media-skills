---
name: google-ads-compliance
description: "Review Google Ads copy, targeting, and landing pages for policy risk before or after launch. Triggers on 'is this ad compliant', 'check my ads for policy issues', 'my ad got disapproved', 'can I run ads for [regulated category]', or 'trademark/claims check'. Use before finalizing any campaign in a regulated category or making a substantiated claim, and whenever an ad has been disapproved."
---

# Google Ads Compliance

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Catch Google Ads policy violations, trademark risk, and unsubstantiated claims before they cause disapprovals, account warnings, or worse (account suspension).

## Trigger Conditions
- "Is this ad copy compliant?"
- "Check my ads for policy issues before launch"
- "My ad got disapproved — why?"
- "Can I run Google Ads for [regulated category]?"
- "Check my copy for trademark/claims issues"

## Required Inputs
- The ad copy, targeting, and/or landing page in question
- Business category (flag immediately if it's a restricted/regulated category: healthcare, finance/crypto, gambling, alcohol, pharma, political, adult content)
- Target market/country (policy varies by region)
- Any specific claims being made (results, pricing, guarantees, comparisons, "#1"/awards)

## Core Capabilities

### Restricted & Regulated Categories
- Categories requiring certification before ads can run at all (healthcare, pharma, gambling, financial services in many markets)
- Categories with hard restrictions regardless of certification (some substances, weapons, counterfeit goods)
- Country-specific variations — a compliant category in one market may be restricted in another (route to `google-ads-localization` context if multi-market)

### Claims & Substantiation
- Superlative claims ("#1," "best," "guaranteed") require substantiation Google can verify — flag any such claim without backing evidence
- Health/medical claims face the strictest scrutiny — near-zero tolerance for unsubstantiated efficacy claims
- Financial claims (guaranteed returns, "get rich," specific ROI promises) are high-risk for disapproval and, in some cases, account suspension
- Pricing claims must match what the landing page actually shows (route to `google-ads-landing-page-audit` for verification)

### Trademark & IP
- Use of competitor/third-party trademarks in ad copy (generally restricted; different rules apply to trademarks in keywords vs. ad text)
- Use of the business's own trademark — confirm proper authorization if the account isn't the trademark owner (agency running ads for a client)

### Editorial & Technical Policy
- Capitalization, punctuation, and formatting rules (excessive caps/exclamation points trigger review)
- Destination URL requirements (must be functional, match displayed domain, no cloaking)
- Prohibited content: misleading claims, clickbait, inappropriate content for the audience/placement

### Disapproval Diagnosis
- Reading a disapproval reason and mapping it to the actual policy violated (Google's stated reason is sometimes broad — diagnose the specific line/element that triggered it)
- Appeal path: when to edit and resubmit vs. when to appeal a mistaken enforcement

## Workflow
1. Identify the business category and flag immediately if it's restricted/regulated — this can require certification lead time before any ads run.
2. Review every claim in the copy for substantiation; flag unsupported superlative, health, or financial claims.
3. Check for trademark use and confirm authorization if applicable.
4. Check destination URL and landing page consistency with the claims made (coordinate with `google-ads-landing-page-audit`).
5. If reviewing a disapproval, map the stated reason to the specific copy/targeting element responsible and recommend the fix.
6. Deliver a clear pass/fail per element, not just a general risk narrative.

## Outputs
- Compliance review with pass/flag/fail per claim or element
- Regulated-category certification requirements, if applicable, with likely lead time
- Specific rewrite suggestions for flagged claims (not just "this might be a problem")
- Disapproval root-cause mapping, when reviewing an existing rejection

## Rules
- Never approve unsubstantiated superlative, health, or financial claims — flag and suggest a compliant alternative instead of letting it through.
- Always flag regulated categories as blocking (certification needed) rather than a soft warning — running ads without required certification risks account suspension, not just disapproval.
- Never advise using a competitor's trademark in ad text without explicit confirmation this is permitted in the target market/context.
- Treat account suspension risk (not just single-ad disapproval) as the higher-severity concern — repeated policy violations escalate.
- **This skill is not a substitute for legal counsel.** It gives a structured platform-policy review, not a legal opinion. For housing, employment, credit, health, financial services, or any category with real regulatory exposure, treat any ambiguous or high-stakes finding as a trigger to escalate to a qualified lawyer before launch — say so explicitly to the user rather than implying the review itself is sufficient clearance.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-copywriting` (source of claims to check), `google-ads-landing-page-audit` (claim-to-page consistency), `google-ads-localization` (market-specific policy variation), `google-ads-campaign-builder` (final pre-launch gate).
