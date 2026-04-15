# Web3 Personas Framework

Reference for `web3ux-research`. Use this to generate product-specific personas, not generic archetypes.

---

## Crypto literacy levels

| Level | Description | What they need |
|---|---|---|
| Newcomer | No prior crypto experience. Mental models from web2 (forms, surveys, email). | Zero jargon. Familiar patterns. No wallet setup. |
| Crypto-curious | Has heard of crypto, may have tried it once. Knows what a wallet is but hasn't used DeFi. | Tooltips on new concepts. Forgiving flows. |
| Crypto-native | Active user. Comfortable with wallets, gas, signing. Expects power features. | Efficiency. No hand-holding. Advanced options visible. |
| Institutional | Finance or legal background. Cares about audit trail, compliance, reporting. | Export features. Immutability proof. Clear status. |

---

## Persona template

For each persona include:

- **Name, age, city**
- **Crypto literacy:** [level from table above]
- **Role:** [job title or context]
- **Goal:** [what they want to accomplish in this product]
- **Mental model:** [what real-world analogy they use — "it's like Google Forms but official"]
- **Biggest fear:** [what would make them abandon immediately]
- **Behavioral pattern:** [how they typically interact — opens links from Slack, reads docs first, asks for help, etc.]

---

## Persona prioritization

After generating personas, always rank them:

- **Launch user** — who must succeed for the product to get initial traction? Design for this person first.
- **Growth driver** — who creates activity that attracts others?
- **Edge case** — who will stress-test the product in unexpected ways?

---

## Universal Web3 pain points (pre-loaded)

Filter for relevance to the specific product type:

| Pain point | Severity | Applies when |
|---|---|---|
| Wallet connection triggered before user sees value | Critical | Always |
| Technical jargon without explanation | High | Always |
| No feedback during pending transactions | High | Any tx flow |
| Fees shown after user commits to action | Critical | Any tx flow |
| Seed phrase backup with no context of what's at risk | Critical | Wallet onboarding |
| Network mismatch with no auto-recovery | High | Multichain |
| Raw contract addresses without human labels | High | Any signing flow |
| Irreversible action without confirmation | Critical | Any tx flow |
| Balance showing zero with no distinction from loading/encrypted | High | Privacy tools |
| Token allowance unexplained | High | DeFi |

---

## The Zcash Lesson

Only 15–20% of users adopt privacy features when the UX is harder than the public default. When building privacy-preserving products: never make the private option the friction-heavy one. Factor this into persona prioritization for privacy products.
