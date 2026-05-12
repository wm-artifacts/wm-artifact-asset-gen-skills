# Connector Assets — Visual Design

Type-specific composition rules for Connector listing assets. Read [BRANDING.md](BRANDING.md) first — it covers palette, typography, tone, wordmark, dimensions, and global "what NOT to do."

## Where Each Asset Appears

- **Thumbnail** — fills the visual area of the connector's card on the listing page. The card's title, description, author line, and date are rendered by the marketplace UI **below** the thumbnail. The thumbnail itself is a **branded tile with the third-party logo, no text baked in**.
- **Banner** — full-width hero across the top of the connector's detail page. Shows the **connection pattern** — third-party logo on the left, WaveMaker mark on the right, dashed arrows between them representing data flow. No text on the banner.
- **Icon** — small rounded-square badge with the third-party logo only. Overlays the **bottom-left of the banner** on the detail page; also used in install / sidebar surfaces.

## Third-Party Brand Marks

Connectors are different from AI Skills in one key way: **the third-party vendor's brand color drives the look**. Each connector card has its own gradient tint (RabbitMQ → tan/orange, Google → indigo-lavender, AWS → pink-coral, Twilio → soft purple, Excel → teal, etc.) that picks up the vendor's brand color.

**Rules:**

1. Use the vendor's official logo file. Do not redraw it.
2. Preserve the vendor's own brand color in the logo. Never recolor RabbitMQ orange to purple to "match WaveMaker."
3. The **gradient background** of the thumbnail is a soft, pastel-tinted version of the vendor's color — not a saturated match. Aim for low-chroma washes, similar to the marketplace's RabbitMQ tan and AWS pink.
4. If the vendor's brand uses a warm color (orange, red), that's an accepted exception to the "neutrals lean cool" rule from BRANDING.md.

## Icon — 512×512

- Rounded square canvas, corner radius **~88px** (~17% of width).
- White surface (`#FFFFFF`) with a subtle border (`#E2E3E4`, 1px) and a very soft drop shadow.
- Centered: the vendor's logo, sized to fill ~60–70% of the canvas. Preserve the vendor's original colors.
- **No text on the icon.** Logo must read at 32×32.
- This icon is what appears as the floating badge on the banner overlay on the detail page.

## Banner — 1920×600

The "connection diagram" pattern.

- **Background**: light cool gradient (`#F1F3F6` → `#F2F4F5` → `#E9EDF1`), very low contrast. Centered around the page-bg / grey-bg tokens from BRANDING.md.
- **Layout**: a single horizontal row, vertically centered, with three elements:
  - **Left circle** — white surface, subtle border / soft shadow. Contains the vendor's logo.
  - **Dashed arrow(s)** between the circles — light gray (`#68778A` at ~40% opacity), 2–3 parallel dashed arrows, pointing left → right, suggesting data flow. Use a clear arrowhead at the right end.
  - **Right circle** — white surface, subtle border / soft shadow. Contains the **WaveMaker wave mark** ([`assets/wm-logo.svg`](assets/wm-logo.svg)).
- The two circles sit roughly 40% / 60% horizontally to leave the **bottom-left ~25% quiet** for the icon overlay on the detail page.
- **No text on the banner.** The detail page renders the connector name and description in the UI below.

### Circle and Logo Sizing — Both Sides Must Match

The two circles in the banner are visually paired. They **must look identical** in size, weight, and finish.

- **Circle diameter:** **300px**, identical for both sides. Same stroke, same shadow, same fill (`#FFFFFF`).
- **Vertical alignment:** both circles share a single horizontal center line.
- **Logo sizing inside each circle:** target an **optical visual size of ~55% of the circle diameter** (~165px wide for a 300px circle), measured by the logo's **visible bounding box** — not by the SVG `width` / `height` attributes.
- The repo's [`assets/wm-logo.svg`](assets/wm-logo.svg) ships with `width="32" height="32"`. **Do not use those dimensions.** Render it at the visible-bounding-box size (~165px) so it matches the vendor logo opposite it.
- If the vendor logo is wider than it is tall (e.g. Jaspersoft wordmark), fit it to ~75% of the circle width but keep the WaveMaker wave at the same **height** as the vendor wordmark's cap height. The pair must read as "equal weight" — never with one logo dominating.
- Use a consistent letterboxing rule: scale the logo to the larger of (height / width) such that the smaller dimension hits the target. Center it both ways inside the circle.

If the two circles or their logos look visibly different in size, the banner is wrong — regenerate.

The banner reads at a glance: "{vendor} connects to WaveMaker."

## Thumbnail — 1200×800

The "branded tile" pattern. Visual only; the listing UI renders the name / description below.

- **Background**: a single soft pastel gradient tinted toward the vendor's brand color. Two-stop or three-stop diagonal gradient. Low chroma — read the marketplace's existing tiles for the tonal range (RabbitMQ tan, AWS pink, Twilio purple).
- **Centered**: a single white "card" surface, rounded ~24px corners, soft drop shadow. The card occupies roughly the central 50% of the thumbnail.
- **Inside the card**: the vendor's logo, centered, sized to fill ~55–65% of the card. Original vendor colors.
- **No text on the thumbnail.**

The thumbnail's job: be instantly recognizable as "the {vendor} tile" from the listing grid.

## Illustration / Iconography Notes

- For connectors, there is **no decorative illustration** — the vendor logo is the visual subject across all three assets.
- Sparkles, blobs, and the WaveMaker-purple accents that appear on AI Skill assets are **not used** on connector assets. Keep connectors clean and "system-like."
- If a vendor has no public logo or asks for one to be designed, default to an abstract monogram in their brand color on a white card — never invent a fake corporate mark.

## Special Case: "Coming Soon" Placeholders

The marketplace shows "Coming Soon" placeholder tiles in the listing grid. These use:

- A light blue / lavender gradient background.
- A black "COMING SOON" wordmark with a small megaphone graphic.
- No vendor logo.

When a user asks to publish a connector that is not yet released, generate a coming-soon thumbnail in this style instead of a vendor tile.

## Quality Checks

- [ ] Vendor logo is the official file (transparent background preferred), not a redraw.
- [ ] Vendor's own brand color is preserved across all three assets.
- [ ] Thumbnail gradient is a pastel tint of the vendor color (not saturated).
- [ ] Banner shows two circles + dashed arrows, no text.
- [ ] **Both banner circles are the same diameter (300px) and vertically aligned.**
- [ ] **Vendor logo and WaveMaker wave appear at the same visual size** inside their circles (~55% of circle diameter by visible bounding box). The WaveMaker SVG's default 32×32 attrs are **not** the render size.
- [ ] Banner bottom-left ~25% is quiet (for icon overlay).
- [ ] Icon is just the vendor logo on a white card — no text.
- [ ] Dimensions exact: 512×512, 1920×600, 1200×800.
