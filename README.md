# wm-artifact-asset-gen

A collection of AI Agent skills for generating marketing and listing assets for artifacts published in the **WaveMaker Marketplace**.

## Overview

The WaveMaker Marketplace hosts multiple types of artifacts. Each artifact needs a consistent set of assets (icon, banner, thumbnail) that follow WaveMaker brand guidelines before it can be listed.

This repository provides:

- **One global brand reference** — [BRANDING.md](BRANDING.md) — palette, typography, tone, wordmark, asset dimensions, and "what NOT to do" rules common to every artifact type.
- **One skill per artifact type** under [skills/](skills/) — interactive workflow for collecting inputs, proposing a composition, and generating the assets.
- **A per-skill design spec** (`DESIGN.md`) — type-specific composition rules (e.g. AI Skill banners are hero compositions with text + illustration; Connector banners are connection diagrams with the vendor logo and the WaveMaker mark).

## Prerequisites

These tools must be installed on the machine where the skill runs. The skill performs a preflight check at the start of every run and will stop if anything is missing.

| Tool             | Why                                                                     | Check            |
| ---------------- | ----------------------------------------------------------------------- | ---------------- |
| **Node.js** ≥ 18 | Runs the render script that produces PNGs from HTML/SVG                 | `node --version` |
| **npm**          | Installs Playwright into the per-job `build/` folder                    | `npm --version`  |
| **git**          | Clones the user's skill/connector source when they provide a GitHub URL | `git --version`  |

The skill will install **Playwright + Chromium** on first run via `npm install` and `npx playwright install chromium` (~100 MB download, cached for subsequent runs). You do not need to install Playwright manually.

Internet access is required on first run (for the Chromium download and Google Fonts) and whenever a GitHub URL is given as input.

## Artifact Types

| Artifact Type      | Skill                                        | Status      |
| ------------------ | -------------------------------------------- | ----------- |
| Apps               | —                                            | Planned     |
| Connectors         | [connector-assets](skills/connector-assets/) | Ready       |
| Prefabs            | —                                            | Planned     |
| WMX Components     | —                                            | Planned     |
| Design Systems     | —                                            | Planned     |
| AI Skills          | [ai-skill-assets](skills/ai-skill-assets/)   | Ready       |

## Repository Layout

```text
wm-artifact-asset-gen/
├── README.md
├── BRANDING.md                     ← global WaveMaker Marketplace brand reference
├── assets/
│   ├── marketplace-logo.png        ← purple "M" marketplace mark (used in all lockups)
│   └── wm-logo.svg                 ← WaveMaker wave mark (used in Connector banners)
└── skills/
    ├── ai-skill-assets/
    │   ├── SKILL.md                ← when to use, workflow, handling user inputs
    │   ├── DESIGN.md               ← AI-Skill-specific composition rules
    │   └── assets/reference/       ← canonical exemplar set (Guide Doc Creator)
    │       ├── guide-doc-creator-icon.png
    │       ├── guide-doc-creator-banner.png
    │       └── guide-doc-creator-thumbnail.png
    └── connector-assets/
        ├── SKILL.md                ← when to use, workflow, handling user inputs
        └── DESIGN.md               ← Connector-specific composition rules
```

## Source of Truth

The live marketplace is the ultimate source of truth for design language:

**<https://marketplace.wavemaker.ai/home>**

Before generating assets for a new artifact type, or refreshing an existing one, browse the home page, the relevant category listing, and a few artifact detail pages.

## Using a Skill

Each skill lives in its own directory under `skills/` with a `SKILL.md` entry point. Point any AI agent runtime that supports the SKILL format at the skill directory to load its instructions, brand rules, and asset requirements. The skill will:

1. Read [BRANDING.md](BRANDING.md) and the skill's own `DESIGN.md` for visual rules.
2. Ask the user for the minimum required inputs (varies by artifact type).
3. Propose a composition and iterate with the user.
4. Generate the icon, banner, and thumbnail at the locked dimensions.
