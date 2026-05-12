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
- **Marketplace mark** (purple "M" like design in a rounded purple square): **use the provided file** at [`assets/marketplace-logo.png`](assets/marketplace-logo.png). Embed it directly in lockups. **Do not redraw it in SVG, do not approximate it with HTML/CSS, do not generate it.**
- **WaveMaker wave mark** (blue/teal wave): **use the provided file** at [`assets/wm-logo.svg`](assets/wm-logo.svg). Used in **Connector banners** as the right-side "connects to WaveMaker" symbol. Not used on AI Skill assets. Same rule: embed directly, never redraw.
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

## Resolving an Artifact Source (path or GitHub URL)

When the user supplies a path or URL instead of typing details, resolve it **in this order**. Do not probe blindly across multiple endpoints — pick by input type and proceed.

**Local path** (e.g. `~/projects/my-skill`, `./connectors/rabbitmq/`):

- Read files directly with the Read tool. Done.

**GitHub URL** (e.g. `https://github.com/owner/repo`):

1. **First: `git clone --depth 1 <url> /tmp/wm-source-fetch/<repo>`.** This is the right move 95% of the time — it works for both public repos and credentialed private repos, and it gives you the whole tree in one step. Read files locally from the clone.
2. If clone fails with an auth error, **then** try `gh api repos/{owner}/{repo}` (only if `gh` is installed). Skip the `command -v gh` check — just run it, and handle the "command not found" error.
3. Only if both fail, fall back to `WebFetch` on a raw file URL (`https://raw.githubusercontent.com/{owner}/{repo}/{branch}/<path>`).
4. If everything fails, ask the user.

**Do not** WebFetch the GitHub HTML page first. It returns a JS-rendered SPA shell and burns a turn on noise. **Do not** chain 3+ WebFetch attempts at raw URLs before trying git clone — git clone is faster and more reliable.

After cloning, surface the source quickly:

- Manifest / frontmatter for `name` and `description`.
- Skim README at the artifact folder and at the repo root for additional context.
- Scan `assets/`, `branding/`, `logo/` for existing artwork.

## Preflight Check

Run this **at the start of every skill invocation**, before asking the user anything else. It is one Bash call.

```bash
node --version && npm --version && git --version
```

If all three return version strings, proceed.

If any command is missing, **stop** and ask the user to install before retrying. Use a short message like:

> "I need `{tool}` installed to generate marketplace assets. Quick install:
>
> - **macOS**: `brew install {tool}`
> - **Ubuntu/Debian**: `sudo apt install {tool}`
> - **Windows**: see <https://nodejs.org> for Node + npm, <https://git-scm.com> for git
>
> Install and re-run the skill."

Do not attempt workarounds, do not substitute a different toolchain, and do not silently fall back. The whole rendering pipeline depends on these three.

The preflight does **not** check Playwright / Chromium — those are auto-installed on first render. It also does **not** check `gh`; the source-resolution flow handles `gh` being absent gracefully.

## Rendering Toolchain

Generated assets are produced from HTML/SVG sources rendered to PNG via **Playwright + Chromium** — chosen because it renders Google web fonts (DM Sans, Inter) deterministically and handles SVG without rasterizer quirks.

**Do not probe** for `rsvg-convert`, `magick`, `convert`, `chromium`, system Chrome, or other rasterizers. They either skip web fonts or produce inconsistent output. Skip the probing entirely.

**Standard setup** (one-time per asset job, in a `build/` folder next to the output directory):

1. `package.json` declaring `"playwright": "^1.60.0"` and `"type": "module"`.
2. `npm install --silent --no-audit --no-fund` to install Playwright.
3. `npx playwright install chromium` — downloads ~100 MB the first time, cached for subsequent runs.
4. A `render.mjs` that:
   - Imports `{ chromium }` from `playwright`.
   - Loads the asset HTML (each asset is a small standalone HTML file referencing the shared SVG illustration).
   - `await page.setContent(html, { waitUntil: 'networkidle' })` so web fonts finish loading.
   - Screenshots at the target viewport with `deviceScaleFactor: 1` (exact-dimension exports — do not use 2x and downscale).
   - Writes each PNG to the output directory.

The Preflight check above already guarantees `node`, `npm`, and `git` are present, so the agent does not need to re-verify here. Announce the toolchain choice in one line ("rendering via Playwright + Chromium") and proceed.
