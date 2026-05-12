#!/usr/bin/env bash
# Sync shared brand reference and assets from the repo root into each skill folder.
#
# The skills are installed as standalone directories (e.g. ~/.agents/skills/ai-skill-assets/)
# so they must each carry their own copy of BRANDING.md and assets/. The repo root holds the
# canonical version; this script propagates it.
#
# Run after editing BRANDING.md, assets/marketplace-logo.png, or assets/wm-logo.svg at the root.
#
# === Adding a new skill ===
# When a new skill is added under skills/, append it to ALL_SKILLS below. If it also needs the
# WaveMaker wave mark (used in Connector-style banners), add it to SKILLS_NEEDING_WAVE_MARK.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Every skill folder that should receive BRANDING.md + marketplace-logo.png.
ALL_SKILLS=(
  "skills/ai-skill-assets"
  "skills/connector-assets"
)

# Subset of skills that also need the WaveMaker wave mark (assets/wm-logo.svg).
SKILLS_NEEDING_WAVE_MARK=(
  "skills/connector-assets"
)

for skill in "${ALL_SKILLS[@]}"; do
  dest="$ROOT/$skill"
  if [[ ! -d "$dest" ]]; then
    echo "Skipping $skill — directory not found." >&2
    continue
  fi
  mkdir -p "$dest/assets"
  cp "$ROOT/BRANDING.md" "$dest/BRANDING.md"
  cp "$ROOT/assets/marketplace-logo.png" "$dest/assets/marketplace-logo.png"
  echo "Synced → $skill"
done

for skill in "${SKILLS_NEEDING_WAVE_MARK[@]}"; do
  cp "$ROOT/assets/wm-logo.svg" "$ROOT/$skill/assets/wm-logo.svg"
  echo "Synced wave mark → $skill"
done

echo ""
echo "Done. Re-install the affected skills via your SKILLS CLI to push the updated files to ~/.agents/skills/."
