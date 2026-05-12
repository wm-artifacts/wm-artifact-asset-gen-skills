# AI Skill Assets — Visual Design

Type-specific composition rules for AI Skill listing assets. Read [BRANDING.md](../../BRANDING.md) first — it covers palette, typography, tone, wordmark, dimensions, and global "what NOT to do."

## Where Each Asset Appears

- **Thumbnail** — fills the visual area of the AI Skill's card on the listing page. The card's title, description, author line, and tags are rendered by the marketplace UI **below** the thumbnail. The thumbnail itself is a **rich composition with text baked in** (skill name, tagline, etc.).
- **Banner** — full-width hero across the top of the AI Skill's detail page. Same composition language as the thumbnail, at a wider aspect.
- **Icon** — small rounded-square badge that overlays the **bottom-left of the banner** on the detail page. Just the core illustration, no text.

A canonical exemplar set ("Guide Doc Creator") lives in [assets/reference/](assets/reference/):

- [assets/reference/guide-doc-creator-icon.png](assets/reference/guide-doc-creator-icon.png)
- [assets/reference/guide-doc-creator-banner.png](assets/reference/guide-doc-creator-banner.png)
- [assets/reference/guide-doc-creator-thumbnail.png](assets/reference/guide-doc-creator-thumbnail.png)

Treat these as style references for tone, lighting, illustration finish, and typographic weight — not as a rigid template to copy element-for-element.

## Shared Visual Language

All three assets share:

- **One illustration concept** representing what the skill produces or operates on (e.g. a document for Guide Doc Creator, a code file for a refactor skill, a chart for an analytics skill).
- **A glassmorphic finish** — soft drop shadows, gentle gradients, blurred decorative blobs in the background, small purple sparkle clusters near the illustration.
- **A consistent accent direction** — purple `#B072EA` and indigo `#6366F1` lead. Sparkles are purple. Pills use an indigo gradient.
- **DM Sans for everything except the display headline**, which uses **Inter 800**.

## Icon — 512×512

- Rounded square canvas, corner radius **~88px** (~17% of width).
- Background: soft cool gradient (very light pink → lavender → pale blue) with two diffuse blurred blobs (purple + indigo) anchored at opposite corners for depth.
- Centered illustration: the same illustration used in the banner and thumbnail, sized to fill ~60% of the canvas. Soft white card surface with rounded corners and a soft drop shadow.
- Optional accent: a small sparkle cluster (one large 4-point sparkle + 1–2 small ones) in purple `#7C3AED`-range with a soft glow.
- **No text on the icon.** The illustration must read clearly at 32×32 (verify by zooming out).

## Banner — 1920×600

Layout, left to right:

- **Lockup, top-left** (28px from top, 40px from left):
  - WaveMaker purple "M" mark
  - "WaveMaker Marketplace" wordmark, DM Sans 700, `#0D0D17`
  - Optional sub-label below the wordmark: "AI Skills · {Category}", DM Sans 500, `#68778A`
- **"AI SKILL" pill** below the lockup: indigo gradient background (`#6366F1` → `#725CF7`), white text, DM Sans 700, uppercase, ~18px, letter-spacing 0.08em, rounded full.
- **Display headline** — usually the skill name (e.g. "Create Guide"): Inter 800, ~120px, solid `#0D0D17`. Single line.
- **Sub-headline / tagline** below the headline: DM Sans 700, ~36px, color `#725CF7` (purple-blue accent). Single line.
- **Optional footer line** at the bottom of the text block (e.g. "Step-by-step · Marketplace-ready · Built for developers"): DM Sans 400, ~22px, `#68778A`. Use middle-dot `·` (U+00B7) as separator.
- **Illustration, right ~40%**: the shared illustration, scaled up, framed as the hero. Small sparkle cluster floats around it. Soft blurred lavender/blue blobs sit behind it.
- **Background**: horizontal gradient — very pale pink-lavender on the left, transitioning to pale blue on the right. Keep contrast low and surfaces airy.
- **Bottom-left quiet zone**: leave the bottom-left ~25% of the banner visually quiet (background only) so the icon-overlay sits cleanly there on the detail page.

## Thumbnail — 1200×800

The thumbnail is the same composition family as the banner, reframed for a 3:2 card. It is a self-contained "promo card."

- **Outer canvas**: soft cool gradient (lavender → pale pink → pale blue).
- **Inner card**: white surface, corner radius 24px, soft drop shadow, ~64px inset on all sides.
- **Top-left of inner card**: "AI SKILL" pill (same indigo gradient as the banner).
- **Headline** (skill name): Inter 800, ~64px, `#0D0D17`.
- **Sub-headline**: DM Sans 700, ~28px, `#725CF7`.
- **Body description**: 1–3 short lines, DM Sans 400, ~20px, `#0D0D17`, max width ~60% of the card.
- **Optional capability pills**: one row, 12px gap. Light tinted backgrounds; each pill has a small purple dot + label in DM Sans 700, ~16px, color `#3B3F8C`-range.
- **Bottom-left of inner card**: WaveMaker mark + "WaveMaker Marketplace" wordmark + optional slug, DM Sans 400, ~14px, `#68778A`.
- **Top-right of inner card (~38% width)**: the shared illustration with sparkles, slightly smaller than the banner version.

## Illustration Style

- Subject: a **white glassmorphic card** representing the skill's output (document, code file, chart, form, list, etc.). The card sits at a slight angle or is gently elevated with a soft shadow.
- Surface details inside the card: simple geometric placeholder content — a colored title bar (use the indigo→purple gradient `#6366F1 → #7C3AED`), light grey body lines, numbered or bulleted list rows. Keep it abstract; never render real text.
- Sparkles: 4-point sparkle shape, purple, with a soft glow. One large sparkle + 1–2 small ones, clustered to one side of the card.
- Avoid: hard edges, harsh shadows, vivid colors, stock-art look.

## Quality Checks

- [ ] Same illustration across icon, banner, thumbnail.
- [ ] Headline text identical between banner and thumbnail.
- [ ] Banner bottom-left ~25% is empty / background-only (for icon overlay).
- [ ] AI SKILL pill uses indigo gradient on both banner and thumbnail.
- [ ] Sub-headline color is `#725CF7`.
- [ ] Headline font is Inter 800; everything else is DM Sans.
- [ ] Icon reads at 32×32.
- [ ] Dimensions exact: 512×512, 1920×600, 1200×800.
