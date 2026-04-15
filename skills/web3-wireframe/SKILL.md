---
name: web3-wireframe
description: "Generate low-fidelity wireframes based on web3-flow.md. Supports Figma MCP (production quality) and Google Stitch MCP (free, MVP quality). Creates one wireframe per key screen identified in the flows."
---

# web3-wireframe

Translate flows into testable screens. Low-fidelity, grayscale, no styling. The goal is to test flows, not aesthetics.

## When to use

- After `/web3-flow` to create the first testable artifact
- When you need a v0.5 to put in front of users
- When you want to validate flows before visual design begins

## Usage

```
/web3-wireframe           auto-detect: tries Figma first, falls back to Stitch
/web3-wireframe figma     force Figma MCP (production quality, prototype links)
/web3-wireframe stitch    force Google Stitch MCP (free, MVP quality)
```

---

## Step 1 — Detect tool

Determine which output path to use before doing anything else.

**If an explicit parameter was passed:**

- `figma` → verify Figma MCP is available by attempting to call a Figma tool. If unavailable:
  > **Figma MCP not detected.**
  >
  > To use the Figma path, install the Figma MCP for Claude Code:
  > 1. Install the plugin from [figma.com/developers/mcp](https://www.figma.com/developers/mcp)
  > 2. Add your Figma access token to Claude Code settings
  > 3. Re-run `/web3-wireframe figma`

- `stitch` → verify Stitch MCP is available by attempting to call a Stitch tool. If unavailable:
  > **Google Stitch MCP not detected.**
  >
  > To use the Stitch path, add the Stitch MCP to your Claude Code settings:
  > ```json
  > {
  >   "mcpServers": {
  >     "stitch": {
  >       "url": "https://stitch.googleapis.com/mcp",
  >       "headers": { "X-Goog-Api-Key": "YOUR_API_KEY" }
  >     }
  >   }
  > }
  > ```
  > Get your API key at [stitch.withgoogle.com](https://stitch.withgoogle.com). Free tier: 350 generations/month.
  > Then re-run `/web3-wireframe stitch`

**If no parameter was passed (auto-detect):**

1. Attempt to call a Figma MCP tool. If it succeeds → use **Path: Figma**.
2. If Figma fails, attempt to call a Stitch MCP tool. If it succeeds → use **Path: Stitch**.
3. If both fail:
  > **No wireframe tool detected.**
  >
  > This skill requires either Figma MCP or Google Stitch MCP.
  >
  > **Option A — Figma** (full quality, prototype links):
  > Install from [figma.com/developers/mcp](https://www.figma.com/developers/mcp)
  >
  > **Option B — Google Stitch** (free, 350 gen/month, MVP quality):
  > Add to Claude Code settings:
  > ```json
  > {
  >   "mcpServers": {
  >     "stitch": {
  >       "url": "https://stitch.googleapis.com/mcp",
  >       "headers": { "X-Goog-Api-Key": "YOUR_API_KEY" }
  >     }
  >   }
  > }
  > ```
  > Get your key at [stitch.withgoogle.com](https://stitch.withgoogle.com), then re-run `/web3-wireframe`

Do not proceed until a tool is confirmed available.

---

## Step 2 — Load flows

Read `web3-flow.md` from the current directory.

If not found:
> I need flows before generating wireframes. Run `/web3-flow` first.

---

## Step 3 — Identify screens

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

---

## Path: Figma

### Step 4F — Ask for Figma file

> Paste your Figma file URL, or I'll create a new file named "web3ux — [Product Name] — Wireframes."

If the user provides a URL, open that file.
If not, create a new Figma file.

### Step 5F — Generate wireframes

For each screen:

**Wireframe principles:**
- Grayscale only — no brand colors, no styling
- Real content — no lorem ipsum. Use actual labels, copy, and data from `web3-brief.md`
- Annotate all interactive elements
- Mark every decision point from `web3-flow.md` with a visible annotation
- Use standard wireframe conventions: boxes for images, X for icons, underline for links

**Web3-specific wireframe rules:**
- Always include wallet status in the header (connected address / network)
- Show transaction fee placement explicitly — before the CTA, not after
- Pending states must show a visible loader with estimated time
- Error states must show a message + a recovery action, never just an error code
- Balance display must distinguish between loading, zero, and not-configured states

Generate each screen as a frame in Figma. Name frames clearly: `01 - Landing (no wallet)`, `02 - Wallet connection`, etc.

### Step 6F — Link screens

After all frames are created, add prototype links following the flow logic from `web3-flow.md`. Each CTA should link to the next screen in the flow.

### Step 7F — Checkpoint

> ✓ **[N] wireframes generated in Figma.**
>
> Link: [Figma file URL]
>
> Screens created:
> [numbered list with frame names]
>
> The wireframes follow the flows from `web3-flow.md`. Decision points are annotated on-screen.
>
> **Next step:** Put these in front of users. The goal of this v0.5 is to validate flows, not aesthetics. Run `/web3-critique` after user testing to prioritize what to fix first.

---

## Path: Stitch

> **Note:** Stitch produces MVP-quality screens — fast and shareable. No prototype links, no detailed annotations. For production-quality wireframes with annotations and prototype links, use `/web3-wireframe figma`.

### Step 4S — Project setup

> Do you have an existing Stitch project you want to use? Paste the URL, or I'll create a new project named "web3ux — [Product Name] — Wireframes."

### Step 5S — Generate screens

For each screen, call `generate_screen_from_text` with a prompt that includes:

- Screen name and its role in the flow (from `web3-flow.md`)
- Key UI elements and layout (derived from the flow node description)
- Real content from `web3-brief.md` — actual product name, labels, and copy (no lorem ipsum)
- Web3 rules applied to this screen:
  - If the screen shows wallet state: include wallet address/network in header
  - If the screen has a transaction: show fee before the CTA
  - If this is a pending state: include a visible loader with estimated time
  - If this is an error state: include error message + recovery action

Example prompt for a transaction confirmation screen:
```
A mobile transaction confirmation screen for [Product Name].
Header: wallet address [0xABC...] connected to Ethereum Mainnet.
Body: action summary — "Stake 0.5 ETH". Gas fee: 0.002 ETH shown above the CTA.
Primary CTA: "Confirm" button. Secondary: "Cancel" link.
Grayscale, no styling. Clean and minimal.
```

### Step 6S — Verify

For each generated screen, call `get_screen_image` and confirm visually that:
- The screen matches the description from `web3-flow.md`
- The Web3 rules for that screen type are present

If a screen looks wrong, regenerate it with a more specific prompt.

### Step 7S — Checkpoint

> ✓ **[N] screens generated in Stitch.**
>
> Project: [Stitch project URL]
>
> Screens created:
> [numbered list]
>
> **Exportable code** for each screen is available via `get_screen_code` if you want to use it as a starting point.
>
> **Limitations of this output:** No interactive prototype links — flow navigation should be validated visually against `web3-flow.md`. For annotated wireframes with prototype links, run `/web3-wireframe figma`.
>
> **Next step:** Share the Stitch link with stakeholders for early feedback. Run `/web3-critique` after review to prioritize what to change.
