---
name: web3-context
description: "Learn a Web3 project through structured interview and document analysis. Generates web3-context.md — the persistent context file used by all other web3ux skills. Always run this first when starting a new project."
---

# web3-context

Learn the project. Generate the context that powers every other skill in the pipeline.

## When to use

- Starting a new Web3 project from scratch
- Onboarding to an existing Web3 product you need to design for
- Refreshing context after major product changes

## Process

### Step 1 — Check for existing documents

Before asking anything, look for existing context in the current directory:
- `web3-context.md` (previous run of this skill)
- `README.md`, `WHITEPAPER.md`, any product docs
- Figma links, notion links, or any URLs the user shares

If found, read them and pre-fill what you can. Don't ask for information you already have.

### Step 2 — Structured interview

Ask these questions conversationally — not as a form. One topic at a time. Wait for the answer before moving to the next.

**Product type**
What kind of Web3 product is this?
- DeFi (DEX, lending, yield, stablecoin)
- Wallet (custodial, non-custodial, smart wallet, embedded)
- Privacy tool (private transactions, private balances, identity)
- NFT (marketplace, gaming, collectibles)
- Infrastructure (bridges, oracles, indexers)
- DAO / governance
- Other

**Chain(s)**
Which blockchain(s) does it operate on? Single-chain or multichain?
Note: multichain products have specific UX complexity around network switching, cross-chain balances, and address validation.

**User target**
Who is the primary user?
- Crypto-native (understands wallets, gas, signing)
- Crypto-curious (has heard of crypto, tried once or twice)
- Newcomer (no prior crypto experience)
- Institutional (compliance-aware, risk-averse)
- Developer (building on top of the product)

**Current state**
- Greenfield (nothing exists yet)
- Early design (wireframes or concepts exist)
- In production (something is already live)
- Redesign (existing product being rethought)

**Key flows**
What are the 2-3 most critical things a user needs to do in this product?
Examples: connect wallet, make a private transfer, swap tokens, mint an NFT, vote on a proposal.

**Existing constraints**
- Are there known regulatory considerations? (jurisdictions, compliance requirements)
- Are there technical constraints that affect UX? (smart contract limitations, wallet compatibility)
- Is there an existing design system or brand?

**Competitive context**
Which existing products does this compete with or want to learn from?

### Step 3 — Checkpoint

Present a summary of what you understood:

```
Here's what I've captured about [product name]:

**Type:** [product type]
**Chain(s):** [chains]
**Primary user:** [user profile]
**Current state:** [state]
**Key flows:** [flows]
**Constraints:** [constraints]
**Competitive context:** [competitors]

Does this accurately represent your product? Correct anything that's off before I generate the context file.
```

Wait for confirmation or corrections. Incorporate feedback.

### Step 4 — Generate web3-context.md

Write `web3-context.md` in the current directory with this structure:

```markdown
# [Product Name] — Web3 UX Context

**Generated:** [date]
**Product type:** [type]
**Chain(s):** [chains]
**Primary user:** [profile]
**Current state:** [state]

## Key flows
[list of critical user flows]

## User profile notes
[specific notes about the target user's crypto literacy, mental models, and expectations]

## Constraints
[regulatory, technical, design system]

## Competitive context
[competitors and what to learn from / avoid]

## UX risk flags
[pre-identified risks based on product type — generated automatically]
```

### UX risk flags — auto-generate based on product type

Include the relevant flags automatically:

**If privacy tool:**
> ⚠️ Privacy adoption is structurally low (~15-20%) even with good UX. Design assumes users will prefer the public mode by default. Opt-in, not opt-out. Never use "anonymous" in copy — use "private." Post-Tornado Cash regulatory anxiety is real among institutional users.

**If multichain:**
> ⚠️ The highest abandonment point in multichain products is not onboarding — it's when a user has funds on the wrong chain. Design must anticipate and handle this state explicitly.

**If DeFi / token interactions:**
> ⚠️ "Approve token allowance" is meaningless to most users. All approval copy must explain what is actually happening in plain language. Fees must be shown before the user commits to an action.

**If wallet / first-run:**
> ⚠️ Seed phrases have no mental model for most users. Never assume the user knows what they're protecting against. The backup step is the highest drop-off point in wallet onboarding.

**If newcomer user target:**
> ⚠️ 36% of new users report stopping because of unfamiliar language. Wallet connection is login — never trigger it before the user sees value. Every piece of jargon is a potential exit.

## Output

Confirm when `web3-context.md` is written:

> ✓ **web3-context.md generated.** All web3ux skills will use this as context automatically.
>
> Next step: run `/web3-brief` to generate the full research brief for [product name].
