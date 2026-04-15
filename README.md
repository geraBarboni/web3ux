# web3ux

A specialized Claude Code agent system for Web3 UX design. Goes from zero context to testable wireframes through a structured pipeline. Works for non-designers (quick mode) and designers (full assistant mode).

## What it does

Web3 products fail on UX — not technology. This agent pack gives Claude deep Web3 UX expertise so you don't have to explain it every time. It handles newcomer onboarding, wallet abstraction, transaction feedback, and the full design pipeline.

## Installation

```bash
git clone <repo-url> ~/.claude/web3ux
cd ~/.claude/web3ux
./setup.sh
```

Restart Claude Code. The agents will be available immediately.

To update: `git pull && ./setup.sh`

## Agents

| Agent | What it does | Invoke |
|---|---|---|
| `web3ux` | Main entry point. Detects project state, asks your role, runs the pipeline. | Always start here |
| `web3ux-research` | Generates `web3-context.md` + `web3-brief.md`: personas, pain points, competitive analysis | Via orchestrator |
| `web3ux-flows` | Generates `web3-flow.md`: Mermaid user flows with Web3 states and decision points | Via orchestrator |
| `web3ux-wireframe` | Generates wireframes in Figma, Stitch, or text | Via orchestrator |
| `web3ux-critique` | Heuristic audit against 7 Web3 UX rule sets | Directly at any time |

## Two modes

**Quick** — for non-designers: 5 questions → full pipeline → artifacts in your project folder.

**Assistant** — for designers: full pipeline with checkpoint at each stage, iteration support, enter at any stage.

## Wireframe tools

The agent auto-detects what's available:
1. **Figma MCP** — production quality, prototype links
2. **Stitch MCP** — free (350 gen/month), MVP quality  
3. **Text output** — flow narratives (Quick) or UI specs (Assistant)

## Works better with

- **[ethux](https://ethux.design)** — Ethereum-specific implementation patterns
- **[Impeccable](https://impeccable.style)** — design quality commands
- **[Superpowers](https://superpowers.club)** — brainstorming and planning

## License

MIT © Gera Barboni
