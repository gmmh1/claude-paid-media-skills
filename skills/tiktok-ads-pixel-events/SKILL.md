---
name: tiktok-ads-pixel-events
description: "Set up and troubleshoot TikTok Pixel and Events API tracking, including deduplication and event match quality. Triggers on 'set up TikTok Pixel', 'Events API setup for TikTok', 'my TikTok conversions aren't tracking', or 'event match quality is low on TikTok'. Prerequisite for any conversion-optimized TikTok campaign."
---

# TikTok Ads Pixel & Events API

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Get the TikTok Pixel and server-side Events API tracking installed, deduplicated, and reporting with good event match quality — without this, conversion-optimized campaigns and Custom Audience retargeting are working blind.

## Trigger Conditions
- "Set up TikTok Pixel for my website"
- "Set up Events API"
- "My TikTok conversions aren't tracking"
- "My event match quality is low on TikTok"

## Required Inputs
- Website platform/CMS (deployment method: GTM, native ecommerce platform integration, custom implementation)
- Conversion events to track (Purchase, Lead, AddToCart, ViewContent, CompleteRegistration, custom events)
- Whether the ecommerce platform offers a native Events API integration (many do, reducing custom development need)

## Core Capabilities

### Pixel Setup
- Base pixel code and standard event tracking mapped to actual business conversion points
- Deployment via Google Tag Manager (coordinate with `google-tag-manager`) or native platform integration
- Custom events for goals standard events don't cover

### Events API (Server-Side)
- Server-side complement to the browser pixel, resilient to browser tracking restrictions and ad blockers, same rationale as Meta's CAPI
- Native platform Events API integrations as the fastest path where available
- Value-based events for ecommerce, passing actual order value rather than flat conversion counting

### Deduplication
- Sending both pixel and Events API events for the same conversion requires deduplication (matching event ID) so TikTok counts it once — misconfigured dedup inflates reported conversions and corrupts optimization
- Verifying dedup status in TikTok Events Manager before trusting combined data

### Event Match Quality
- Reflects how well TikTok can match incoming events to real users, driven by how much customer information (email, phone, external ID) is passed with each event
- Improving match quality via Events API, where more first-party parameters can be reliably included than browser-only signals
- Framed as an ongoing lever tied to both attribution accuracy and Custom Audience/optimization quality

### Diagnostics
- TikTok Events Manager test tools for verifying events fire correctly before trusting them in reporting
- Common failure causes: events firing on the wrong trigger, missing parameters, consent-gating blocking pixel fire

## Workflow
1. Identify every real conversion event for the business.
2. Set up base pixel with standard events matched to those conversion points.
3. Set up Events API via native platform integration where available, custom implementation otherwise.
4. Configure deduplication between pixel and Events API for shared events, and verify dedup status.
5. Improve match quality by passing rich customer parameters via Events API.
6. Test every event before considering tracking complete.
7. Set value-based tracking for ecommerce Purchase events.

## Outputs
- Event tracking plan mapped to business goals
- Events API integration status and method
- Deduplication verification status
- Match quality assessment and improvement recommendations
- Test verification confirmation, or list of unresolved issues

## Rules
- Never let a campaign be judged as underperforming without first confirming tracking is verified.
- Always configure deduplication when running both pixel and Events API for the same event.
- Treat match quality improvement as ongoing, not one-time.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-tag-manager` (if deployment goes through GTM), `tiktok-ads-audience-targeting` (consumes this event data), `tiktok-ads-optimization` (relies on this data), `tiktok-shop-organic` (Shop-linked event tracking).
