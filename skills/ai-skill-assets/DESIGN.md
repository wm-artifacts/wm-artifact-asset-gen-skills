# AI Skill Assets — Visual Design

Type-specific composition rules for AI Skill listing assets. Read [BRANDING.md](BRANDING.md) first — it covers palette, typography, tone, wordmark, dimensions, and global "what NOT to do."

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

### Deriving the concept

**Do not default to a generic document card.** Every skill on the marketplace must have a **visually distinct illustration** that reflects what this specific skill does — not a recycled template from another skill.

Before drawing anything, work through these three questions:

1. **What does the skill produce?** Name the concrete output — a ZIP file, a how-to document, a checklist report, a running deployment, a test summary, a wired connector. If the output has a visual form, that form is the illustration subject.
2. **What does the skill operate on?** If the output isn't visual, think about what the skill *acts on* — source code, a running app, an API endpoint, a WaveMaker page. That subject becomes the illustration.
3. **What is the one shape a user would draw on a whiteboard to explain this skill?** That shape is your illustration.

Translate the answer into a **white rounded card** containing abstract geometric placeholder content — colored bars, line stubs, icon shapes, progress indicators, node-and-edge diagrams, whatever fits. The card surface keeps the glassmorphic finish; the *content inside* is what makes each skill recognisable.

A few worked examples (for reference only — do not treat as an exhaustive lookup):

- Guide/doc skill → document card with a gradient title bar and numbered step rows
- Code scaffolding skill → code-editor pane with monospace line stubs and a cursor dot
- Packaging/ZIP skill → folder or box shape with a gradient seal and an export arrow
- Audit/review skill → checklist card with check/cross row indicators and a shield badge
- Connector skill → two nodes linked by a cable or arrow
- CLI/deployment skill → terminal card with a prompt line and progress bar stubs

If none of these fit, invent the right shape from first principles using the three questions above. A skill that doesn't match any familiar pattern should get a *novel* illustration, not the closest-matching template.

When the skill clearly spans two concepts (e.g. security + refactor), compose a hybrid — two overlapping cards, or a primary card with a secondary badge.

### Rendering rules

- The subject sits on (or is itself) a **white rounded card** with soft drop shadow, gently elevated.
- Interior detail is **abstract geometric placeholders** — colored bars, line stubs, icon shapes. Never real text.
- Keep color to the indigo→purple gradient (`#6366F1 → #7C3AED`) for highlights and `#D1D5DB` for neutral lines. A single accent color is allowed if the concept requires it (e.g. green on a test-runner card), but keep it muted.
- **Sparkles**: 4-point sparkle shape, purple, with a soft glow. One large + 1–2 small, clustered at one corner of the card.
- Avoid: hard edges, harsh shadows, vivid colors, stock-art look.

## Quality Checks

Run these **after rendering each asset**. Open each PNG with the `Read` tool and visually inspect before reporting done. Do not rely solely on the HTML source — layout bugs only appear in the rendered output.

### Layout — thumbnail (1200×800)

- [ ] Text block (left side) and illustration (top-right) do not overlap. Illustration stays within the right ~38% of the inner card; text stays within the left ~62%.
- [ ] Headline fits on a single line — no wrapping. If it wraps, reduce font-size (try 56px, then 48px) and re-render.
- [ ] Sub-headline fits on a single line. If it wraps, shorten the copy.
- [ ] Capability pills do not overflow or touch the illustration.
- [ ] WaveMaker lockup visible at bottom-left of inner card.

### Layout — banner (1920×600)

- [ ] Text block (left ~55%) and illustration (right ~40%) do not overlap.
- [ ] Headline fits on a single line. If it wraps at 118px, reduce to 96px then 80px.
- [ ] Bottom-left ~25% is empty / background-only (for icon overlay).

### Content

- [ ] Same illustration concept across icon, banner, thumbnail.
- [ ] Illustration concept matches skill purpose (see table above). If this skill is not about guides/docs, the illustration must not be a plain document card with lines.
- [ ] Headline text identical between banner and thumbnail.
- [ ] AI SKILL pill uses indigo gradient on both banner and thumbnail.
- [ ] Sub-headline color is `#725CF7`.
- [ ] Headline font is Inter 800; everything else is DM Sans.
- [ ] Marketplace logo is sharp — it was referenced by file path, not base64-encoded.
- [ ] Icon reads at 32×32.
- [ ] Dimensions exact: 512×512, 1920×600, 1200×800.

**If any check fails**: fix the HTML, re-render the affected asset(s), and re-verify before delivering.
