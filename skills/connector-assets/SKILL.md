---
name: connector-assets
description: Generate marketplace listing assets (icon, banner, thumbnail) for WaveMaker Connector artifacts published on the WaveMaker Marketplace.
---

# Connector Assets

Use this skill when a user needs to prepare a WaveMaker **Connector** artifact for publishing on the WaveMaker Marketplace.

## When to Use

- The user has built or is preparing to publish a Connector to the WaveMaker Marketplace.
- The user asks to generate, refresh, or validate listing assets for a Connector.
- The user wants brand-compliance feedback on existing Connector assets.

## Design References

Two documents own the visual rules. Read both before proposing or generating anything.

- [BRANDING.md](../../BRANDING.md) — global WaveMaker Marketplace brand: palette, typography, tone, wordmark, asset dimensions, and "what NOT to do."
- [DESIGN.md](DESIGN.md) — Connector-specific composition for the three assets, including the connection-diagram banner pattern, branded-tile thumbnail pattern, and third-party brand-mark rules.

These two documents are self-sufficient — generate from them directly. Only refer to the live marketplace at <https://marketplace.wavemaker.ai/home> if a user reports that something here looks stale or off-brand.

## What You Need from the User

**Required:**

- **Connector name** — typically the third-party system being connected to (e.g. "RabbitMQ", "Twilio", "AWS S3").
- **Description** — what the connector does, what operations it exposes.
- **Vendor logo** — see **Sourcing the Vendor Logo** below.

If the name or description is missing, ask before going further.

### Auto-extracting from a Connector Source

If the user provides a **local path** or **GitHub URL** to their connector instead of typing out the details, extract the name and description directly — do not ask the user to retype what is already in their connector manifest or README.

- **Local path** (e.g. `~/projects/my-connector`, `./connectors/rabbitmq/`):
  - Look for a manifest file: `connector.json`, `package.json`, `wm-connector.json`, or similar. Read `name` and `description` fields.
  - Scan for an existing logo file in `assets/`, `branding/`, `logo/`, or similar — if found, propose it for use.
- **GitHub URL** (e.g. `https://github.com/org/repo`):
  - Prefer the `gh` CLI when available: `gh api repos/{owner}/{repo}` to read the repo description; `gh api repos/{owner}/{repo}/contents/{path}` for any manifest file.
  - Check repo metadata for a vendor name and short description.

**Read the README(s) for additional context.** Beyond the manifest, look for a `README.md` (or `Readme.md`, `readme.md`) at the **connector folder** and at the **repository root**, if both exist. READMEs typically describe what the connector does, supported operations, authentication options, and example usage — which sharpens the thumbnail tint choice and confirms the vendor identity. Skim, don't memorize. Locally via Read; on GitHub via `gh api repos/{owner}/{repo}/readme` or `https://raw.githubusercontent.com/{owner}/{repo}/{branch}/README.md`.

After extracting, **confirm with the user** in one short message: "I read your connector — name is **{name}**, description is **{description}**. Proceed with these, or anything to adjust?" If the source has no manifest / unclear README, fall back to asking the user directly.

### Sourcing the Vendor Logo

The vendor's official logo is the centerpiece of all three assets, so this step is critical.

1. **Ask the user first.** "Do you have the official {vendor} logo? A transparent-background SVG or high-res PNG works best."
2. **If the user does not have one,** offer to fetch it: "Would you like me to try to fetch the official {vendor} logo from the web? I'll look for a transparent version on the vendor's brand/press page or a reputable logo source."
3. **If the user accepts the fetch,** find a transparent-background version (SVG preferred, then PNG). Confirm the source URL with the user before using it. **Prefer** vendor brand / press pages (e.g. `{vendor}.com/brand`, `{vendor}.com/press`, `{vendor}.com/about/media`) over third-party logo dumps.
4. **If the fetch fails or only finds low-quality / non-transparent versions,** stop and ask the user to provide the logo. Do **not** redraw the logo, do **not** invent a substitute, do **not** use a low-resolution or watermarked version.
5. **Never proceed** to asset generation without an acceptable logo in hand.

**Optional (use whatever the user offers):**

- Vendor brand color preference (the thumbnail gradient tints toward this color).
- Authentication method(s) supported (rarely surfaces in assets, but useful context).
- Reference assets from the user's existing connector listings.
- Whether the connector is **released** or **coming-soon** (affects thumbnail style — see DESIGN.md).

If the user provides assets without explicit instructions, run **Handling User-Provided Assets** below before composing.

## Required Assets

Three assets per listing. Dimensions, palette, and typography are **locked** (see [BRANDING.md](../../BRANDING.md) and [DESIGN.md](DESIGN.md)). The vendor's logo and brand color drive the look — composition is consistent across all connectors.

| Asset     | Dimensions | Aspect | Where it appears                                        |
| --------- | ---------- | ------ | ------------------------------------------------------- |
| Icon      | 512×512    | 1:1    | Floating badge over banner; sidebar / install           |
| Banner    | 1920×600   | 3.2:1  | Top of the connector's detail page (connection diagram) |
| Thumbnail | 1200×800   | 3:2    | Visual area of the listing-grid card (branded tile)     |

All three preserve the vendor's official brand color. None of the three carry text — the listing and detail UI render the connector name and description around the artwork.

## Generation Workflow

This is an **interactive process**. Do not silently generate.

1. **Confirm essentials.** Verify the connector **name** and **description**. If the user supplied a local path or GitHub URL, use **Auto-extracting from a Connector Source** above to read the manifest / README and confirm back. Then resolve the **vendor logo** using **Sourcing the Vendor Logo** below — ask the user, offer to fetch if needed, fall back to asking again. Do not proceed without a usable logo.
2. **Confirm vendor brand color.** Either pick it from the logo, or ask the user. This determines the thumbnail gradient tint.
3. **Acknowledge user direction.** If the user gave reference assets, base the proposal on those. If they gave assets without instructions, run **Handling User-Provided Assets** first.
4. **Propose the look** in one short message:
   - Confirm the thumbnail gradient tint (pastel wash of the vendor color).
   - Confirm the connector is released vs. coming-soon (affects thumbnail).
   - No need to propose composition — the connector pattern is consistent across listings.
5. **Generate all three assets** following [DESIGN.md](DESIGN.md). Generate in order **icon → thumbnail → banner**. Icon settles the logo treatment; thumbnail confirms the gradient direction; banner reuses both.
6. **Run the Quality Checks** in [DESIGN.md](DESIGN.md) before handing back.

## Handling User-Provided Assets

When the user provides any image, screenshot, logo, or asset:

1. **Explicit instruction + asset** → follow the instruction exactly.
   - "Use this logo as-is" → use it without modification.
   - "Use this color as the thumbnail tint" → use that color.
2. **Asset with no instruction** → **ask** before using. Do not assume.
   - If they sent a vendor logo without saying so, ask: is this the official logo to use in the icon and banner?
   - If they sent a screenshot of an integration, ask: should this drive the illustration concept, or is it just context?
3. **Existing approved set** → if the user is refreshing a published listing, treat the current assets as the canonical reference and match the style.

User-explicit choices always override BRANDING.md and DESIGN.md defaults for that generation. Note any override in your output so the user can review.
