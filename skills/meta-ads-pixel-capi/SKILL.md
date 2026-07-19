---
name: meta-ads-pixel-capi
description: "Set up and troubleshoot Meta Pixel and Conversions API (CAPI) tracking, including deduplication and event match quality. Triggers on 'set up Meta Pixel', 'Conversions API setup', 'my Meta conversions aren't tracking', 'event match quality is low', or 'iOS 14 tracking issues'. Prerequisite for any conversion-optimized Meta campaign."
---

# Meta Ads Pixel & Conversions API

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get Meta Pixel and server-side Conversions API (CAPI) tracking installed, deduplicated, and reporting with good event match quality — without this, Advantage+/conversion-optimized campaigns are working blind, and every other Meta skill in this library is building on unreliable data.

## Trigger Conditions
- "Set up Meta Pixel for my website"
- "Set up Conversions API"
- "My Meta conversions aren't tracking / numbers look wrong"
- "My event match quality score is low"
- "iOS tracking issues with Meta Ads"

## Required Inputs
- Website platform/CMS (affects deployment method: GTM, native e-commerce platform integration, custom implementation)
- Conversion events to track (Purchase, Lead, AddToCart, ViewContent, CompleteRegistration, custom events)
- Whether CAPI is already partially set up (many ecommerce platforms offer native CAPI integrations that need only configuration, not custom development)

## Core Capabilities

### Pixel Setup
- Base pixel code and standard event tracking (PageView, ViewContent, AddToCart, InitiateCheckout, Purchase, Lead) mapped to actual business conversion points
- Deployment via Google Tag Manager (coordinate with `google-tag-manager` if the business already uses GTM for other tracking) or native platform integration
- Custom conversions and custom events for goals standard events don't cover

### Conversions API (Server-Side)
- CAPI as the server-side complement to the browser pixel, sending the same events from the business's server — critical for resilience against browser tracking restrictions, ad blockers, and iOS App Tracking Transparency limits on browser-side signal
- Native platform CAPI integrations (available on most major ecommerce platforms) as the fastest path — custom server-side implementation only where no native integration exists
- Value-based events (passing actual order value) for ecommerce, not flat conversion counting

### Deduplication
- Sending both pixel and CAPI events for the same conversion requires deduplication (matching event_id/event_name/event_time) so Meta counts it once, not twice — misconfigured dedup silently inflates reported conversions and corrupts optimization
- Verifying dedup status in Events Manager before trusting combined pixel+CAPI data

### Event Match Quality (EMQ)
- EMQ score reflects how well Meta can match incoming events to real users — driven by how much matching customer information (email, phone, name, address, external ID) is passed with each event
- Improving EMQ by passing more/better-hashed customer parameters, especially via CAPI where first-party data (logged-in user info) can be included more reliably than browser-only signals
- Higher EMQ directly improves attribution accuracy and optimization quality — framed as an ongoing lever, not a one-time setup task

### Diagnostics
- Events Manager Test Events tool for verifying events fire correctly before trusting them in reporting
- Common failure causes: events firing on the wrong trigger (e.g., Purchase firing on page load instead of confirmed order), missing parameters, consent-gating blocking pixel fire

## Workflow
1. Identify every real conversion event for the business, not just the obvious top-of-funnel one.
2. Set up base pixel with standard events matched to those conversion points.
3. Set up CAPI via native platform integration where available; custom implementation otherwise.
4. Configure deduplication between pixel and CAPI for shared events, and verify dedup status.
5. Improve EMQ by ensuring rich customer parameters are passed via CAPI.
6. Test every event in Events Manager Test Events before considering tracking complete.
7. Set value-based tracking for ecommerce Purchase events.

## Outputs
- Event tracking plan (event, trigger, parameters) mapped to business goals
- CAPI integration status and method
- Deduplication verification status
- EMQ score and specific improvement recommendations
- Test Events verification confirmation, or list of unresolved issues

## Rules
- Never let a campaign be judged as underperforming without first confirming pixel/CAPI tracking is verified — bad data produces false optimization signals.
- Always configure deduplication when running both pixel and CAPI for the same event — undeduplicated double-counting corrupts both reporting and the algorithm's optimization target.
- Treat EMQ improvement as ongoing, not one-time; revisit it when performance degrades unexpectedly.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-tag-manager` (if deployment goes through GTM), `meta-ads-audience-targeting` (consumes this event data for Custom Audiences), `meta-ads-optimization` (relies on this data), `meta-ads-catalog-feed` (catalog-linked events for dynamic ads).
