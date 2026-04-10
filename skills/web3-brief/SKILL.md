---
name: web3-brief
description: "Generate a full Web3 UX research brief: personas, pain points, competitive analysis, and strategic decisions. Requires web3-context.md or will run web3-context first. Output is used by web3-flow to generate user flows."
---

# web3-brief

Generate the research foundation. Personas, pain points, competitive analysis, and strategic UX decisions — all with Web3 domain knowledge built in.

## When to use

- After `/web3-context` to generate the full research brief
- When you need deep user understanding before designing flows
- When auditing an existing product's strategic UX decisions

## Process

### Step 1 — Load context

Check for `web3-context.md` in the current directory. If found, read it and proceed.

If not found:
> I need project context before generating the brief. Run `/web3-context` first, or share your project details and I'll capture them now.

### Step 2 — Generate the brief

Generate each section in order. Be specific to the product type and user profile from context. Do not produce generic output.

---

#### Section 1: Personas

Generate 3-4 personas. Each persona must be specific — name, location, behavior patterns, crypto literacy, goals, and fears. Not archetypes.

For each persona include:
- **Name, age, location**
- **Crypto literacy level** (newcomer / curious / native / institutional)
- **Primary goal** in this product
- **Mental model** — what real-world analogy do they use to understand this product?
- **Biggest fear** — what would make them abandon immediately?
- **Behavioral pattern** — how do they typically interact with similar products?

**Persona prioritization:**
After listing personas, rank them:
- **Launch user** — who must succeed for the product to get initial traction?
- **Growth driver** — who brings others in?
- **Edge case** — who will stress-test the product?

Apply the Zcash Lesson to privacy products: only 15-20% of users adopt privacy features when the UX is harder than the public default. Factor this into persona prioritization.

---

#### Section 2: Pain points

Generate pain points in two layers:

**Layer 1 — Universal Web3 pain points** (apply to all Web3 products)
These are pre-loaded from the knowledge base. Filter for relevance to this product type.

| Pain point | Severity | Applies when |
|---|---|---|
| Wallet connection triggered before user sees value | Critical | Always |
| Technical jargon without explanation or tooltip | High | Always |
| No feedback during pending transactions | High | Any tx flow |
| Fees shown after user commits to action | Critical | Any tx flow |
| Seed phrase backup with no context of what's at risk | Critical | Wallet onboarding |
| Network mismatch with no auto-recovery path | High | Multichain |
| Raw contract addresses without human labels | High | Any signing flow |
| Irreversible action with no confirmation or warning | Critical | Any tx flow |
| Balance showing zero with no distinction between "empty" and "encrypted/loading" | High | Privacy tools |
| "Approve token allowance" without plain language explanation | High | DeFi |

**Layer 2 — Product-specific pain points**
Based on the product type, user profile, and competitive context from the brief. Generate 4-6 pain points that are specific to this product's architecture and user base.

For each pain point include:
- Description
- Severity (Critical / High / Medium)
- Which persona is most affected
- Root cause (technical constraint, copy problem, flow design, missing state)

---

#### Section 3: Competitive analysis

Analyze 3-4 competitors or reference products from the competitive context in web3-context.md.

For each:
- **What they do well** — specific UX decisions worth adopting
- **What they do poorly** — specific failures to avoid
- **What they ignore** — gaps that represent opportunity

End with a competitive conclusion:
> What is the UX bar in this space? Is it high or low? What would it take to be the best UX in this category?

Reference products by type if no specific competitors were named:
- DeFi: Uniswap, Aave, Compound
- Wallet: Phantom, Rainbow, MetaMask, Coinbase Wallet
- Privacy: Tornado Cash (pre-sanction UX), Railway, Penumbra
- NFT: OpenSea, Blur, Magic Eden
- Bridge: Across, Stargate, Hop

---

#### Section 4: Strategic UX decisions

Generate 5-7 concrete strategic decisions with rationale and sources.

Format each decision as:

**Decision:** [what to do]
**Why:** [rationale with reference]
**Trade-off:** [what you give up]

Examples of the kind of decisions this section should produce (adapt to the specific product):

- Generate keys/credentials silently and confirm the benefit, not the process (Signal model)
- Show the network indicator persistently in the header, not only on error
- Use optimistic UI for transactions — show success state immediately, revert only on failure
- Design 4 distinct balance states: not configured / loading / active / genuinely zero
- Trigger wallet connection only after the user initiates an action that requires it

Cite sources where applicable: ethux.design, NN/g, ConsenSys, Uniswap case studies, USENIX SOUPS research.

---

### Step 3 — Checkpoint

> Here's the research brief for [product name].
>
> Before I move to flows, two questions:
> 1. Does the primary persona reflect who you're actually designing for in v1?
> 2. Are there any strategic decisions here that conflict with technical or business constraints?
>
> Adjust anything, then run `/web3-flow` to generate the flows.

### Output

Write `web3-brief.md` in the current directory with all sections.

Confirm:
> ✓ **web3-brief.md generated.**
>
> Next step: run `/web3-flow` to generate user flows and task flows with decision points.
