---
name: web3-wireframe
description: "Generate low-fidelity wireframes in Figma based on web3-flow.md. Requires Figma MCP. Creates one wireframe per key screen identified in the flows, in grayscale with no styling — ready for usability testing."
---

# web3-wireframe

Translate flows into testable screens. Low-fidelity, grayscale, no styling. The goal is to test flows, not aesthetics.

## When to use

- After `/web3-flow` to create the first testable artifact
- When you need a v0.5 to put in front of users
- When you want to validate flows before visual design begins

## Requirements

This skill requires the **Figma MCP** to be active.

### Check for Figma MCP

Before doing anything else, verify the Figma MCP is available by attempting to use a Figma tool.

**If Figma MCP is not available:**

> **Figma MCP not detected.**
>
> To generate wireframes directly in Figma, install the Figma MCP for Claude Code:
>
> 1. Install the official Figma plugin for Claude Code from [figma.com/developers/mcp](https://www.figma.com/developers/mcp)
> 2. Add your Figma access token to Claude Code settings
> 3. Re-run `/web3-wireframe`
>
> The Figma MCP is required for this skill. Without it, wireframe generation is not available.

Do not proceed if Figma MCP is not available.

---

## Process (when Figma MCP is active)

### Step 1 — Load flows

Read `web3-flow.md` from the current directory.

If not found:
> I need flows before generating wireframes. Run `/web3-flow` first.

### Step 2 — Identify screens

From the flow diagrams, extract every distinct screen or state that needs a wireframe. A screen is any node in the flow where the user sees a different UI.

Typical screens to identify:
- Landing / home (pre-connection)
- Wallet connection modal or flow
- Main interface (post-connection)
- Network mismatch state
- Transaction initiation screen
- Awaiting signature state
- Pending transaction state
- Success state
- Error / failed state
- Any product-specific screens from the key flows

Present the list to the user:
> I identified [N] screens from your flows:
> [numbered list]
>
> Should I generate all of them, or prioritize a subset for the first version?

### Step 3 — Ask for Figma file

> Paste your Figma file URL, or I'll create a new file named "web3ux — [Product Name] — Wireframes."

If the user provides a URL, open that file.
If not, create a new Figma file.

### Step 4 — Generate wireframes

For each screen:

**Wireframe principles:**
- Grayscale only — no brand colors, no styling
- Real content — no lorem ipsum. Use actual labels, copy, and data from web3-brief.md
- Annotate all interactive elements
- Mark every decision point from web3-flow.md with a visible annotation
- Use standard wireframe conventions: boxes for images, X for icons, underline for links

**Web3-specific wireframe rules:**
- Always include wallet status in the header (connected address / network)
- Show transaction fee placement explicitly — before the CTA, not after
- Pending states must show a visible loader with estimated time
- Error states must show a message + a recovery action, never just an error code
- Balance display must distinguish between loading, zero, and not-configured states

Generate each screen as a frame in Figma. Name frames clearly: `01 - Landing (no wallet)`, `02 - Wallet connection`, etc.

### Step 5 — Link screens

After all frames are created, add prototype links following the flow logic from web3-flow.md. Each CTA should link to the next screen in the flow.

### Step 6 — Checkpoint

> ✓ **[N] wireframes generated in Figma.**
>
> Link: [Figma file URL]
>
> Screens created:
> [numbered list with frame names]
>
> The wireframes follow the flows from web3-flow.md. Decision points are annotated on-screen.
>
> **Next step:** Put these in front of users. The goal of this v0.5 is to validate flows, not aesthetics. Run `/web3-critique` after user testing to prioritize what to fix first.
