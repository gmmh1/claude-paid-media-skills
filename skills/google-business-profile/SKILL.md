---
name: google-business-profile
description: "Manage the organic side of Google Business Profile — listing optimization, reviews, posts, Q&A, and local pack ranking. Triggers on 'optimize my Google Business Profile', 'improve my local ranking', 'respond to a review', 'Google Business Profile posts', or 'why don't I show up in the local pack'. Organic local presence — for paid Local Services Ads see google-ads-local-campaigns."
---

# Google Business Profile

> **Currency & scope note (last reviewed 2026-07-19):** Platform mechanics referenced here (character limits, campaign-type names, feature availability, thresholds, benchmark figures, policy specifics) reflect general practice as of the review date above and are **not guaranteed current** — ad platforms change quickly. Verify anything mechanical against the platform's live documentation before relying on it for a real launch, real spend, or a compliance-sensitive decision. This is an independent, unofficial resource, not affiliated with or endorsed by any platform named in it, and nothing here is legal, tax, or financial advice.

## Purpose
Optimize the free, organic Google Business Profile listing that drives local pack ranking, Maps visibility, and the trust signals (reviews, completeness, activity) that affect both organic local search and the performance of any paid local campaigns layered on top.

## Trigger Conditions
- "Optimize my Google Business Profile"
- "Improve my local pack ranking"
- "How do I respond to a review"
- "Should I be posting on Google Business Profile"
- "Why don't I show up when people search near me"

## Required Inputs
- Business category, service area or physical location(s)
- Current profile completeness (photos, hours, attributes, description)
- Review volume, rating, and response history
- Whether this is a single location or multi-location business

## Core Capabilities

### Listing Optimization
- Primary and secondary category selection — the single highest-leverage local-ranking lever; wrong or incomplete category selection silently caps visibility
- Business description, attributes (accessibility, amenities, payment options), and services/products list completeness
- Photo strategy: exterior, interior, team, product/service photos — profiles with more recent, real photos outperform sparse ones
- NAP (name, address, phone) consistency with the website and other directories — inconsistency undermines local ranking signals

### Local Pack Ranking Factors
- Relevance (category/description match to the search), distance, and prominence (reviews, links, general web presence) as Google's three stated ranking factors
- Proximity is largely outside the business's control; relevance and prominence are the actionable levers
- Multi-location businesses: avoiding duplicate/near-duplicate listings that split ranking signal instead of consolidating it

### Reviews
- Review generation strategy: asking at the right moment (post-purchase/post-service), making it low-friction (direct review link)
- Response strategy for both positive and negative reviews — timely, specific, non-defensive responses to negative reviews measurably affect prospective-customer trust, not just the reviewer's opinion
- Review content as a relevance signal — reviews mentioning services/products in customers' own words reinforce category relevance

### Posts & Engagement
- Google Posts (updates, offers, events) as a low-effort recency/activity signal and a direct conversion surface (call-to-action buttons)
- Q&A section monitoring — unanswered or incorrectly answered questions sit publicly on the listing; seeding accurate FAQs proactively prevents bad answers from competitors or confused users

### Multi-Location Management
- Consistent optimization standards across locations while allowing location-specific photos/description detail
- Performance comparison across locations to identify which need attention

## Workflow
1. Audit current profile completeness: category, description, attributes, photos, NAP consistency.
2. Fix category/attribute gaps first — these are the highest-leverage, lowest-effort fixes.
3. Assess review volume/rating/response history and set up a review generation and response cadence.
4. Recommend a Posts cadence matched to the business's actual update frequency (offers, events, news) rather than posting for its own sake.
5. Seed accurate Q&A content proactively.
6. For multi-location businesses, standardize the baseline and flag any duplicate/conflicting listings.

## Outputs
- Profile completeness audit with specific gaps
- Category/attribute optimization recommendation
- Review generation and response process
- Posts cadence recommendation
- NAP consistency findings across web presence

## Rules
- Never recommend keyword-stuffing the business name field — this violates Google's guidelines and risks listing suspension.
- Always respond to negative reviews professionally and specifically; never recommend ignoring them or requesting removal without a legitimate policy violation (fake review, off-topic, conflict of interest).
- Flag duplicate listings for consolidation rather than letting them silently split ranking signal.

- **Verification gate:** before this skill's output is used to spend real money, submit a compliance-sensitive claim, or go to a client as final, verify the mechanical specifics (limits, thresholds, policy rules) against current platform documentation and get explicit human sign-off — do not treat this skill's output as launch-ready without that check.

## Related Skills
`google-ads-local-campaigns` (paid Local Services Ads building on this organic foundation), `google-search-console` (broader organic search health), `google-ads-account-management` (Business Profile linking for Ads).
