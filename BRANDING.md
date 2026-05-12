# WaveMaker Marketplace — Brand Reference

Global brand rules shared by every artifact-asset skill in this repo (Apps, Connectors, Prefabs, WMX Components, Design Systems, AI Skills).

Only refer to the live marketplace at <https://marketplace.wavemaker.ai/home> if a user reports that something here looks stale or off-brand.

## Aesthetic

Clean, modern, developer-friendly. Light cool backgrounds, purple/indigo brand accents, white cards with soft shadows. Confident product-marketing tone — not consumer-app playful, not enterprise-stiff.

## Palette

Use these tokens for every WaveMaker-branded element. Third-party brand colors (e.g. RabbitMQ orange, AWS red, Microsoft blue) are **preserved** in their respective artifact assets — do not recolor a vendor logo to fit the WaveMaker palette.

| Role                 | Hex       | Notes                                                |
| -------------------- | --------- | ---------------------------------------------------- |
| Primary purple       | `#B072EA` | Marketplace primary brand color                      |
| Indigo               | `#6366F1` | Secondary primary, "AI SKILL" pill base              |
| Purple-blue hover    | `#725CF7` | Hover / pressed accents                              |
| Wizard purple        | `#656DF9` | Decorative purple-blue (badges, sparkles, AI accent) |
| CTA orange           | `#FF7B00` | Token in the CSS; used only where the marketplace itself shows orange CTAs |
| Page background      | `#F1F3F6` | Canvas / page surface                                |
| Grey background      | `#F2F4F5` | Section / panel surface                              |
| Highlight background | `#E9EDF1` | Subtle highlight strips                              |
| Card / white         | `#FFFFFF` | Cards and surfaces                                   |
| Heading              | `#000000` | Headlines                                            |
| Body text            | `#0D0D17` | Body / paragraph                                     |
| Muted text           | `#616161` | Captions, secondary copy                             |
| Cool muted           | `#68778A` | Sub-labels, taglines                                 |
| Separator            | `#E2E3E4` | Borders, dividers                                    |

**Tinting rule.** Neutrals lean cool. Never warm gray, beige, or warm brown except where a third-party brand color requires it.

**Gradients.** Marketplace gradients are very soft, near-white, with hints of pink / lavender / pale blue. Never high-contrast or vivid.

## Typography

The marketplace loads four Google Font families:

- **DM Sans** — primary. Default for body, captions, pills, wordmarks, taglines.
- **Inter** — display. Large headlines and hero text. Weight 800.
- **Bricolage Grotesque** — optional editorial accent (eyebrows, large quote-style copy).
- **Oswald** — available but rarely used; reserved for specific marketing moments only.

For artifact assets, default to **DM Sans for everything**, with **Inter 800** for display headlines. Do not introduce a different typeface family.

Weights: 800 (display headlines), 700 (sub-headlines, pills, wordmark), 500 (sub-labels), 400 (body, captions).

## Wordmark & Lockup

- **Always spell the brand as "WaveMaker"** — camelCase, capital W and capital M, everywhere: lockup wordmark, prose, descriptions, taglines, body copy. Never "Wavemaker", never "wavemaker", never "WAVEMAKER".
- **Lockup wordmark**: "WaveMaker Marketplace".
- **In prose**: "WaveMaker", e.g. "How-To docs for any WaveMaker feature."
- If an older exemplar uses a different capitalization, it is wrong — do not propagate it.
- **Marketplace mark**: the purple "M" inside a rounded purple square (the marketplace favicon / brand icon).
- **WaveMaker wave mark**: the blue wave logo at [`assets/wm-logo.svg`](assets/wm-logo.svg). Used in **Connector banners** as the right-side "connects to WaveMaker" symbol. Not used on AI Skill assets.
- **Lockup pattern**: marketplace mark + wordmark on a single horizontal line. Optional sub-label below the wordmark in muted cool gray (e.g. "AI Skills · Guides", "Connectors").

## Tone of Voice

- Direct, capability-led, verb-first.
- Names lead with the verb where natural: "Create Guide", "Refactor View", "Generate Tests" — not "AI-Powered Guide Creation Assistant".
- Subtitles describe **what is produced or connected**, not what the artifact "is".
- No marketing fluff or superlatives ("revolutionary", "game-changing", "next-gen").
- Sentence case for titles unless the artifact name is a proper noun.

## Asset Dimensions (all artifact types)

Every artifact listing on the marketplace needs three image assets. Dimensions below are the recommended exports — the site renders them responsively, but matching these sizes guarantees crisp display across listing and detail surfaces.

| Asset     | Dimensions | Aspect | Format |
| --------- | ---------- | ------ | ------ |
| Icon      | 512×512    | 1:1    | PNG    |
| Banner    | 1920×600   | 3.2:1  | PNG    |
| Thumbnail | 1200×800   | 3:2    | PNG    |

**Composition responsibility.** Dimensions, palette, typography, wordmark, and tone are locked here. **What fills each frame is artifact-type-specific** — see each skill's `DESIGN.md`. AI Skill banners are hero compositions with text and illustration; Connector banners are connection diagrams with no baked-in text. Don't blur the patterns.

**Icon-overlay-on-banner pattern.** Detail pages place the icon as a small floating badge over the **bottom-left of the banner**. Keep the bottom-left ~25% of every banner visually quiet (background-only, no text or illustration) so the icon overlay sits cleanly.

## What NOT to Do

1. No dark backgrounds. Marketplace assets are always light.
2. No warm-tinted neutrals (except where a third-party brand color introduces them).
3. No cyan, teal, or neon greens as WaveMaker accents. WaveMaker accents are purple → indigo. Status colors (success, info, warning, danger) exist in the CSS but are not used as design accents in artifact assets.
4. No gradient text on headlines — use solid `#000000` or `#0D0D17`.
5. No bouncy / elastic styling. Sparkles and accents are static.
6. No stock photography. Illustrations are flat, glassmorphic, in-house style.
7. No marketing fluff in copy.
8. No recoloring of third-party brand marks. Preserve the vendor's own color.
