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

## Installation

These skills are distributed via the [`skills`](https://www.npmjs.com/package/skills) CLI. If you don't have it yet:

```bash
npm install -g skills
```

### Install globally for every agent

This is the recommended one-liner — installs **all** skills in this repo to **every** detected agent (Claude Code, Cursor, Codex, etc.) at the global path `~/.agents/skills/`:

```bash
skills add wm-artifacts/wm-artifact-asset-gen -g --all
```

Flags:

- `-g` — global install (`~/.agents/skills/`) rather than project-local.
- `--all` — shorthand for `--skill '*' --agent '*' -y` (every skill, every agent, no prompts).

### Install just one skill

```bash
skills add wm-artifacts/wm-artifact-asset-gen -g --skill ai-skill-assets --agent '*'
```

### Update / remove

```bash
skills update -g                                                           # update all global skills to latest
skills list -g                                                             # see what's installed
skills remove -g --skill 'ai-skill-assets,connector-assets'                # remove these two
```

After installing, you can invoke a skill from any agent that supports the SKILL format — e.g. in Claude Code, type `/ai-skill-assets` or `/connector-assets`.

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
├── BRANDING.md                     ← canonical WaveMaker Marketplace brand reference
├── assets/                         ← canonical shared assets
│   ├── marketplace-logo.png
│   └── wm-logo.svg
├── bin/
│   └── sync.sh                     ← propagate root BRANDING.md + assets into each skill
└── skills/
    ├── ai-skill-assets/            ← self-contained skill, ready to install
    │   ├── SKILL.md
    │   ├── DESIGN.md
    │   ├── BRANDING.md             (synced from root)
    │   └── assets/
    │       ├── marketplace-logo.png    (synced from root)
    │       └── reference/              ← canonical exemplar set (Guide Doc Creator)
    │           ├── guide-doc-creator-icon.png
    │           ├── guide-doc-creator-banner.png
    │           └── guide-doc-creator-thumbnail.png
    └── connector-assets/           ← self-contained skill, ready to install
        ├── SKILL.md
        ├── DESIGN.md
        ├── BRANDING.md             (synced from root)
        └── assets/
            ├── marketplace-logo.png    (synced from root)
            └── wm-logo.svg             (synced from root)
```

### Why each skill carries its own copy

The SKILLS CLI installs each `skills/<name>/` directory as a standalone unit at `~/.agents/skills/<name>/`. Cross-references to a parent repo (`../../BRANDING.md`) would break on install. To keep each installed skill self-contained, `BRANDING.md` and the shared `assets/` live inside every skill folder. The repo root holds the **canonical** version; `bin/sync.sh` copies it into each skill folder.

### Editing brand or shared assets

1. Edit the canonical file at the repo root (`BRANDING.md`, `assets/marketplace-logo.png`, etc.).
2. Run `./bin/sync.sh` to propagate to every skill folder.
3. Reinstall the affected skills via your SKILLS CLI to push the updated files to `~/.agents/skills/`.

Never edit the per-skill copies directly — they will be overwritten on the next sync.

### Adding a new skill

When you add a new skill under `skills/`, also **register it in `bin/sync.sh`**:

1. Append the new path (e.g. `"skills/prefab-assets"`) to the `ALL_SKILLS` array in `bin/sync.sh`. This gives the new skill its own copy of `BRANDING.md` and `assets/marketplace-logo.png` on every sync.
2. If the new skill needs the WaveMaker wave mark (the blue/teal logo used in Connector-style banners), also append the path to `SKILLS_NEEDING_WAVE_MARK`.
3. Run `./bin/sync.sh` once to populate the new skill's folder. From then on, the skill is included in every sync automatically.

Skipping this step means the new skill ships without `BRANDING.md` and shared assets, and its `BRANDING.md` references in `SKILL.md` / `DESIGN.md` will break at runtime.

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
