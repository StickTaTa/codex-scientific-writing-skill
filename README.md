# Codex Scientific Writing Skill

[![English](https://img.shields.io/badge/Guide-English-2563eb?style=for-the-badge)](./README.en.md)
[![中文教程](https://img.shields.io/badge/教程-中文-16a34a?style=for-the-badge)](./README.zh-CN.md)

A publishable Codex skill package based on the core `scientific-writing` workflow from [K-Dense-AI/claude-scientific-writer](https://github.com/K-Dense-AI/claude-scientific-writer).

This repository contains:
- a reusable Codex skill in `scientific-writing/`
- an English tutorial in [README.en.md](./README.en.md)
- a Chinese tutorial in [README.zh-CN.md](./README.zh-CN.md)
- one-command install scripts in `scripts/`

## What This Repository Is

This is the **Codex-adapted core scientific-writing skill**.
It supports:
- manuscript planning and drafting
- IMRaD-oriented scientific writing workflow
- citation discipline and manuscript structure guidance
- reusable LaTeX template assets
- bundled writing references

## What This Repository Is Not

This is **not** the full upstream `claude-scientific-writer` ecosystem.
It does **not** include the whole companion skill set such as:
- `research-lookup`
- `parallel-web`
- `peer-review`
- `scientific-schematics`
- other domain-specific skills from the upstream project

## Quick Install

### PowerShell
```powershell
./scripts/install.ps1
```

### Bash
```bash
bash ./scripts/install.sh
```

## Quick Use

After installation, ask Codex with prompts such as:

```text
Use $scientific-writing to draft the introduction for my paper.
Use $scientific-writing to revise this manuscript for journal submission.
Use $scientific-writing to turn my outline into full scientific prose.
```

## Validation

The packaged skill passed local validation with Codex's `quick_validate.py`.

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

## License

This repository includes material derived from the upstream project and keeps the upstream [MIT License](./LICENSE).
