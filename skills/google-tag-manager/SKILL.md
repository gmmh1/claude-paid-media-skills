---
name: google-tag-manager
description: "Design and troubleshoot Google Tag Manager container architecture — tags, triggers, variables, and server-side setups. Triggers on 'set up Google Tag Manager', 'my tags aren't firing', 'GTM container audit', 'add a new tracking pixel', or 'server-side tagging'. Infrastructure layer underneath GA4, Google Ads, and Meta/other pixel tracking."
---

# Google Tag Manager

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Build and maintain the tag infrastructure that every other tracking skill depends on — GTM is the deployment layer beneath GA4 (`google-analytics-ga4`), Google Ads conversion tracking (`google-ads-measurement`), and any other pixel (Meta, LinkedIn, TikTok) the business runs.

## Trigger Conditions
- "Set up Google Tag Manager for my site"
- "My tags aren't firing / conversions aren't tracking"
- "Audit my GTM container"
- "Add a new tracking pixel / tag"
- "Set up server-side tagging"

## Required Inputs
- Website platform/CMS (affects container installation method)
- All tracking destinations needed: GA4, Google Ads conversion tags, Meta Pixel, LinkedIn Insight Tag, TikTok Pixel, other
- Existing container status: net-new vs. auditing/fixing an existing one
- Consent/privacy requirements affecting tag firing (cookie consent platform in use, if any)

## Core Capabilities

### Container Architecture
- Tags, triggers, and variables structure — building triggers around meaningful events (form submit, purchase, key page view) rather than one-off page-specific hacks
- Naming conventions that stay legible as the container grows (tag purpose + destination, not "Tag 47")
- Workspace/version management and publishing discipline — never edit live without a clear change description, and keep versions revertible

### Tag Deployment
- GA4 configuration and event tags
- Google Ads conversion tracking and remarketing tags (coordinate with `google-ads-measurement` and `google-ads-remarketing`)
- Third-party pixels (Meta, LinkedIn, TikTok) deployed through GTM rather than hardcoded, so they're centrally auditable
- Custom HTML tags only when no native tag template exists — prefer built-in/community templates for reliability

### Triggers & Data Layer
- Data layer design for passing structured event data (ecommerce events, form details, user properties) to tags reliably, instead of fragile DOM-click triggers
- Trigger group and exception logic for complex firing conditions (e.g., fire only on the final step of a multi-step funnel)
- Timing issues: page load vs. DOM ready vs. window loaded, and why premature firing causes silent data loss

### Consent Management
- Consent Mode configuration so tags respect user consent state (especially relevant for EU/UK traffic and any consent-platform integration)
- Tag firing behavior before vs. after consent is granted, and what data is/isn't collected in each state

### Server-Side Tagging
- When server-side GTM is worth the added complexity: ad blocker resilience, first-party cookie control, data governance requirements
- Basic architecture: client-side container sends to a server container (typically on a subdomain), which then forwards to destinations — flag hosting/infrastructure needs (route to `use-railway` or similar if hosting setup is needed)

### Debugging
- GTM Preview mode as the primary tool for verifying a tag fires correctly before publishing
- Common failure causes: trigger conditions never met, variable returning undefined, tag blocked by consent state, container not installed on all pages

## Workflow
1. Confirm all destinations that need tags (GA4, Ads, other pixels) and current container status.
2. Design/audit the data layer for the key events the business needs to track.
3. Build tags and triggers using native templates where available, custom HTML only as a fallback.
4. Configure Consent Mode/consent-gated firing if the business has EU/UK traffic or a consent platform.
5. Verify every new or changed tag in Preview mode before publishing.
6. Publish with a clear version description; never leave debugging tags live in production.

## Outputs
- Container architecture plan (tags/triggers/variables mapped to destinations)
- Data layer specification for key events
- Debugging findings for any tag not firing correctly, with root cause
- Consent Mode configuration status
- Server-side tagging recommendation, if warranted, with infrastructure implications flagged

## Rules
- Never publish an unverified tag change directly to production — Preview mode verification is mandatory first.
- Never hardcode third-party pixels directly in site code once GTM is available — centralize through the container for auditability.
- Respect consent state in tag firing logic; don't collect data before consent is granted where consent is legally required.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-analytics-ga4` (primary tag destination), `google-ads-measurement` (Ads conversion tag destination), `google-ads-remarketing` (remarketing tag destination), `google-search-console` (technical fixes sometimes require tag-based workarounds).
