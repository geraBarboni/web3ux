# web3ux

A skill pack for Claude Code focused on Web3 UX design. Guides you from zero context to testable wireframes through a structured, human-in-the-loop pipeline.

## What it does

Web3 products fail on UX — not technology. This pack gives Claude deep domain knowledge about Web3 user behavior, wallet mental models, regulatory language, and Ethereum-specific interaction patterns, so you don't have to explain it every time.

## The pipeline

```
/web3-context    →  learns your project, generates persistent context
      ↓              [checkpoint: validate context]
/web3-brief      →  research: personas, pain points, competitive analysis
      ↓              [checkpoint: validate personas and priorities]
/web3-flow       →  user flows + task flows in Mermaid + decision points
      ↓              [checkpoint: resolve decision points]
/web3-wireframe  →  low-fi wireframes in Figma or Stitch (Figma MCP or Google Stitch MCP)
```

Each step feeds the next. You can enter the pipeline at any point if you already have something built.

## Skills

| Skill | What it does |
|---|---|
| `web3-context` | Interviews you about your project, reads existing docs, generates `web3-context.md` |
| `web3-brief` | Full research output: personas, pain points, competitive analysis, strategic decisions |
| `web3-flow` | Mermaid user flows and task flows with Web3-specific states and decision points |
| `web3-critique` | Heuristic audit of existing flows or UI against Web3 UX rules |
| `web3-wireframe` | Low-fi wireframes in Figma (full quality) or Google Stitch (free, MVP). Auto-detects available tool. |

## Installation

Add this to your Claude Code global settings (`~/.claude/settings.json`):

```json
{
  "skills": [
    {
      "name": "web3ux",
      "url": "https://raw.githubusercontent.com/geraBarboni/web3ux/main/SKILL.md"
    }
  ]
}
```

Or set it up by telling Claude:

```
Set up the skills from https://raw.githubusercontent.com/geraBarboni/web3ux/main/SKILL.md in your global settings.
```

## Works better with

This pack covers Web3 UX strategy and research. For the best experience, also install:

- **[ethux](https://ethux.design)** — Ethereum-specific implementation patterns (token approvals, transaction signing, gas, wallet connection). Sourced from 32,000+ real user pain points.
- **[Impeccable](https://impeccable.style)** — 18 design commands for visual quality (/polish, /critique, /typeset, and more).
- **[Superpowers](https://superpowers.club)** — Structured brainstorming, planning, and debugging skills.

web3ux handles the strategy and research layer. The others handle implementation and visual quality. Together they cover the full workflow.

## Knowledge base

The rules embedded in these skills are distilled from:

- [ethux.design](https://ethux.design) — 32,000+ community-reported Web3 UX pain points
- [UX Fundamentals for Web3 Apps](https://uxdesign.cc/ux-fundamentals-for-web3-applications-8b9badec360e) — Fabio Monzani
- [Your Web3 Product's UX Is Driving Users Away](https://dev.to/toboreeee/your-web3-products-ux-is-driving-users-away-5d9a) — dev.to
- [10 Intent-First UX Patterns That Make Web3 Feel Easy](https://medium.com/@ThinkingLoop/10-intents-first-ux-patterns-that-make-web3-feel-easy-e875fd4a289f) — Medium
- [Web3 UX Design Roadmap](https://medium.com/design-bootcamp/web3-ux-design-roadmap-a2d05c19ce18) — Medium / Design Bootcamp

## License

MIT © Gera Barboni
