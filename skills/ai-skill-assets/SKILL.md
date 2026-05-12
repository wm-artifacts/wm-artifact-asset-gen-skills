---
name: ai-skill-assets
description: Generate marketplace listing assets (icon, banner, thumbnail) for WaveMaker AI Skill artifacts published on the WaveMaker Marketplace.
---

# AI Skill Assets

Use this skill when a user needs to prepare a WaveMaker **AI Skill** artifact for publishing on the WaveMaker Marketplace.

## When to Use

- The user has built or is preparing to publish an AI Skill to the WaveMaker Marketplace.
- The user asks to generate, refresh, or validate listing assets for an AI Skill.
- The user wants brand-compliance feedback on existing AI Skill assets.

## Design References

Two documents own the visual rules. Read both before proposing or generating anything.

- [BRANDING.md](../../BRANDING.md) — global WaveMaker Marketplace brand: palette, typography, tone, wordmark, asset dimensions, and "what NOT to do."
- [DESIGN.md](DESIGN.md) — AI-Skill-specific composition for the three assets (icon, banner, thumbnail), including illustration style, layout, and exemplars.

These two documents are self-sufficient — generate from them directly. Only refer to the live marketplace at <https://marketplace.wavemaker.ai/home> if a user reports that something here looks stale or off-brand.

## What You Need from the User

**Required:**

- **Skill name** — short, title-cased label (e.g. "Create Guide").
- **Description** — the "Use this skill when…" paragraph the author wrote for the SKILL frontmatter, or an equivalent summary.

If either is missing, ask before going further.

**Optional (use whatever the user offers):**

- Reference images, screenshots, brand sheets, or existing assets.
- Composition preferences — illustration subject, badges, taglines, pill copy, layout direction.
- A category label used on the banner lockup (e.g. "AI Skills · Guides").

If the user provides assets without explicit instructions, run **Handling User-Provided Assets** below before composing.

## Required Assets

Three assets per listing. Dimensions, palette, and typography are **locked** (see [BRANDING.md](../../BRANDING.md) and [DESIGN.md](DESIGN.md)). The composition inside each frame is **proposed and iterated with the user**.

| Asset     | Dimensions | Aspect | Where it appears                              |
| --------- | ---------- | ------ | --------------------------------------------- |
| Icon      | 512×512    | 1:1    | Floating badge over banner; sidebar / install |
| Banner    | 1920×600   | 3.2:1  | Top of the skill's detail page                |
| Thumbnail | 1200×800   | 3:2    | Visual area of the listing-grid card          |

All three share one illustration concept and the same accent direction.

## Generation Workflow

This is an **interactive process**. Do not silently generate.

1. **Confirm essentials.** Verify the skill **name** and **description**. Ask for either if missing.
2. **Acknowledge user direction.** If the user gave explicit composition instructions or reference assets, base the proposal on those. If they gave assets without instructions, run **Handling User-Provided Assets** first.
3. **Propose a composition** drawing on the name, description, and any references:
   - The **illustration concept** (one visual that runs through all three assets).
   - The **headline** wording (usually the skill name).
   - Any **supporting elements** for banner and thumbnail (sub-headline, badge, capability pills, footer line, category label) — only what suits this skill.
   - The **accent direction** within the marketplace palette.
4. **Iterate with the user.** Share the proposal, take feedback, refine. Repeat until approved.
5. **Generate all three assets** following [DESIGN.md](DESIGN.md). Generate in order **icon → banner → thumbnail** — the icon has the strictest readability constraint and settles the illustration first.
6. **Run the Quality Checks** in [DESIGN.md](DESIGN.md) before handing back.

## Handling User-Provided Assets

When the user provides any image, screenshot, logo, or asset:

1. **Explicit instruction + asset** → follow the instruction exactly.
   - "Use this screenshot inside the card" → place it inside the card; don't redraw.
   - "Match these brand colors" → override the palette for this skill only.
2. **Asset with no instruction** → **ask** before using. Do not assume.
   - Ask whether it is **reference only** (style / inspiration), **to be used directly** (as the illustration, background, logo), or **a draft to improve on**.
   - If "used directly," ask **where** (icon center, banner right, thumbnail card) and **how** (cropped, masked, full-bleed, on a card surface).
3. **Existing approved set** → if the user is refreshing a published listing, treat the current assets as the canonical reference family and match style + illustration unless told otherwise.

User-explicit choices always override BRANDING.md and DESIGN.md defaults for that generation. Note any override in your output so the user can review.
