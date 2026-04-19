# Codex Scientific Writing Skill

## 简介

这个仓库把一个可直接安装的 Codex `scientific-writing` skill 打包好了，别人克隆后就可以安装到自己的 Codex 环境里使用。

它基于上游项目的核心 `scientific-writing` 工作流改写而来：
- 上游项目：[K-Dense-AI/claude-scientific-writer](https://github.com/K-Dense-AI/claude-scientific-writer)

## 仓库里包含什么

这个仓库包含：
- `scientific-writing/SKILL.md`：Codex skill 主说明
- `scientific-writing/agents/openai.yaml`：Codex UI 识别元数据
- `scientific-writing/references/`：写作参考资料
- `scientific-writing/assets/`：LaTeX 模板资源
- `scripts/install.ps1`：Windows 安装脚本
- `scripts/install.sh`：macOS/Linux 安装脚本

## 这个仓库的定位

这个仓库只包含 **核心 scientific-writing skill**。

它不是完整的 upstream `claude-scientific-writer` 全家桶，目前没有一起打包这些配套能力：
- 文献检索与 research lookup
- parallel web research
- peer review 自动化
- scientific schematics 图示生成
- 其它专门化上游 skills

如果你想让功能更接近原始 upstream，可以先发布这个核心版本，后续再逐步补齐这些 companion skills。

## 安装教程

### 方式 1：PowerShell 安装

```powershell
git clone https://github.com/<你的账号>/codex-scientific-writing-skill.git
cd codex-scientific-writing-skill
./scripts/install.ps1
```

默认会安装到：
- Windows: `C:\Users\<你>\.codex\skills\scientific-writing`
- 如果设置了 `CODEX_HOME`，则安装到 `$CODEX_HOME/skills/scientific-writing`

### 方式 2：Bash 安装

```bash
git clone https://github.com/<你的账号>/codex-scientific-writing-skill.git
cd codex-scientific-writing-skill
bash ./scripts/install.sh
```

默认会安装到：
- `$HOME/.codex/skills/scientific-writing`
- 如果设置了 `CODEX_HOME`，则安装到 `$CODEX_HOME/skills/scientific-writing`

### 方式 3：手动安装

把 `scientific-writing/` 整个文件夹复制到你的 Codex skills 目录：

```text
<CODEX_HOME>/skills/scientific-writing
```

如果没有设置 `CODEX_HOME`，默认目录是：
- Windows: `C:\Users\<你>\.codex\skills\scientific-writing`
- macOS/Linux: `~/.codex/skills/scientific-writing`

## 使用教程

安装完成后，在 Codex 中显式调用：

```text
Use $scientific-writing to draft a paper introduction from my notes.
Use $scientific-writing to revise this LaTeX manuscript for journal submission.
Use $scientific-writing to convert this outline into complete scientific prose.
Use $scientific-writing to structure a methods section with reproducibility in mind.
```

如果你想写中文教程给用户，可以直接说明：
- 用它来起草论文段落
- 用它来改已有 manuscript
- 用它来把提纲改成正式学术 prose
- 用它来按 IMRaD 结构组织论文

## 适合的使用场景

适合用在这些任务：
- 规划 scientific manuscript
- 起草论文段落
- 修改已有论文
- 强化引用纪律和结构
- 基于 LaTeX 模板写稿
- 按 IMRaD 结构组织论文内容

## 仓库结构

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

## 给使用者的说明

- 这个 skill 已经通过本地 `quick_validate.py` 校验。
- 当前发布包是一个 **Codex 版核心 scientific-writing skill**。
- 如果用户期待的是完整 upstream 的 end-to-end scientific writer 行为，需要后续再补装或继续移植 `research-lookup`、`parallel-web` 等配套 skills。

## Star History

等你把仓库真正发布到 GitHub 之后，把下面的 `your-github-username` 替换成实际用户名即可。

<p align="center">
  <a href="https://star-history.com/#your-github-username/codex-scientific-writing-skill&Date">
    <picture>
      <source
        media="(prefers-color-scheme: dark)"
        srcset="https://api.star-history.com/svg?repos=your-github-username/codex-scientific-writing-skill&type=Date&theme=dark"
      />
      <source
        media="(prefers-color-scheme: light)"
        srcset="https://api.star-history.com/svg?repos=your-github-username/codex-scientific-writing-skill&type=Date"
      />
      <img
        alt="Star History Chart"
        src="https://api.star-history.com/svg?repos=your-github-username/codex-scientific-writing-skill&type=Date"
      />
    </picture>
  </a>
</p>

## License 与归属

这个仓库包含基于上游 MIT 协议项目改写和整理的内容。
二次分发时请保留仓库里的 `LICENSE` 文件。
