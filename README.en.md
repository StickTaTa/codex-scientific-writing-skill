# Codex Scientific Writing Skill

[![English](https://img.shields.io/badge/Guide-English-2563eb?style=for-the-badge)](./README.en.md)
[![中文教程](https://img.shields.io/badge/教程-中文-16a34a?style=for-the-badge)](./README.zh-CN.md)

## Overview

This repository packages a Codex-native `scientific-writing` skill so other users can install it and use it directly in Codex.

The skill is based on the core `scientific-writing` workflow from the upstream repository:
- Upstream project: [K-Dense-AI/claude-scientific-writer](https://github.com/K-Dense-AI/claude-scientific-writer)

## Included Content

This repository includes:
- `scientific-writing/SKILL.md`: the Codex skill instructions
- `scientific-writing/agents/openai.yaml`: UI metadata for Codex skill discovery
- `scientific-writing/references/`: bundled writing references
- `scientific-writing/assets/`: LaTeX template assets
- `scripts/install.ps1`: Windows installer
- `scripts/install.sh`: macOS/Linux installer

## Scope

This repository contains the **core scientific-writing skill only**.

It does not include the full upstream skill ecosystem. In particular, it does not ship the companion workflows for:
- literature search and retrieval
- parallel web research
- peer review automation
- schematic generation
- the rest of the specialized upstream skills

If you want a feature set closer to the original upstream project, you should publish this repository first and then add those companion skills in later releases.

## Installation

### Option 1: Clone and install with PowerShell

```powershell
git clone https://github.com/StickTaTa/codex-scientific-writing-skill.git
cd codex-scientific-writing-skill
./scripts/install.ps1
```

By default, the script installs the skill to:
- `C:\Users\<you>\.codex\skills\scientific-writing` on Windows
- or `$CODEX_HOME/skills/scientific-writing` if `CODEX_HOME` is set

### Option 2: Clone and install with Bash

```bash
git clone https://github.com/StickTaTa/codex-scientific-writing-skill.git
cd codex-scientific-writing-skill
bash ./scripts/install.sh
```

By default, the script installs the skill to:
- `$HOME/.codex/skills/scientific-writing`
- or `$CODEX_HOME/skills/scientific-writing` if `CODEX_HOME` is set

### Option 3: Manual install

Copy the `scientific-writing/` directory into your Codex skills directory:

```text
<CODEX_HOME>/skills/scientific-writing
```

If `CODEX_HOME` is not set, use:
- Windows: `C:\Users\<you>\.codex\skills\scientific-writing`
- macOS/Linux: `~/.codex/skills/scientific-writing`

## Usage

After installation, invoke the skill explicitly in Codex:

```text
Use $scientific-writing to draft a paper introduction from my notes.
Use $scientific-writing to revise this LaTeX manuscript for journal submission.
Use $scientific-writing to convert this outline into complete scientific prose.
Use $scientific-writing to structure a methods section with reproducibility in mind.
```

## Recommended Use Cases

Use this skill when you need Codex to:
- plan a scientific manuscript
- draft sections in publication-style prose
- revise an existing manuscript
- enforce citation discipline and structure
- work from a LaTeX manuscript template
- follow IMRaD-style organization

## Repository Layout

```text
codex-scientific-writing-skill/
├── README.md
├── README.en.md
├── README.zh-CN.md
├── LICENSE
├── scripts/
│   ├── install.ps1
│   └── install.sh
└── scientific-writing/
    ├── SKILL.md
    ├── agents/
    │   └── openai.yaml
    ├── assets/
    └── references/
```

## Notes for Users

- This skill was validated locally with Codex's `quick_validate.py`.
- The packaged skill is intentionally narrower than the full upstream project.
- If users expect end-to-end scientific writer behavior, document that they may also need companion skills such as `research-lookup` and `parallel-web`.

## Star History

Star history for `StickTaTa/codex-scientific-writing-skill`.

<p align="center">
  <a href="https://star-history.com/#StickTaTa/codex-scientific-writing-skill&Date">
    <picture>
      <source
        media="(prefers-color-scheme: dark)"
        srcset="https://api.star-history.com/svg?repos=StickTaTa/codex-scientific-writing-skill&type=Date&theme=dark"
      />
      <source
        media="(prefers-color-scheme: light)"
        srcset="https://api.star-history.com/svg?repos=StickTaTa/codex-scientific-writing-skill&type=Date"
      />
      <img
        alt="Star History Chart"
        src="https://api.star-history.com/svg?repos=StickTaTa/codex-scientific-writing-skill&type=Date"
      />
    </picture>
  </a>
</p>

## License and Attribution

This repository contains material derived from the upstream MIT-licensed project.
Keep the included `LICENSE` file when redistributing it.
