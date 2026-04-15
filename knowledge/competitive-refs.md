# Competitive References

Reference for `web3ux-research`. Use these when generating competitive analysis sections in web3-brief.md.

---

## DAO / Governance products

| Product | Type | Learn | Avoid |
|---|---|---|---|
| Snapshot | DAO off-chain | Clean proposal flow, gasless voting, good history | Crypto language, requires external wallet |
| Tally | DAO on-chain | On-chain result visualization, vote delegation | Dense UX, very technical, assumes crypto-native |
| Aragon | DAO suite | Permission structure, role system | Unnecessary complexity, steep learning curve |
| Loomio | Web2 decisions | Plain language, accessible proposal flow, team UX, notifications | No on-chain component, no immutable audit trail |
| Slido | Web2 voting | Extreme simplicity, corporate familiarity, mobile-first | No persistence, no auditable history, ephemeral |

**Bar:** UX bar in DAOs is low. A DAO that combines Snapshot's traceability + Loomio's accessibility + Slido's feedback UX would be best-in-class.

---

## DeFi / DEX products

| Product | Type | Learn | Avoid |
|---|---|---|---|
| Uniswap | DEX | Clean swap interface, price impact warnings | Gas shown late, slippage confusing for newcomers |
| Aave | Lending | Risk indicators, health factor visualization | Dense terminology, assumes financial literacy |
| Curve | DEX | Efficient for experts | Completely inaccessible to newcomers |
| Cowswap | DEX | MEV protection explained simply | Still technical onboarding |

**Bar:** DeFi UX optimizes for power users. Newcomer-first DeFi is a wide open space.

---

## NFT platforms

| Product | Type | Learn | Avoid |
|---|---|---|---|
| OpenSea | Marketplace | Familiar e-commerce patterns | Gas surprises at checkout, wallet required upfront |
| Zora | Creator platform | Creator-focused flow, mint simplicity | Assumes crypto-native audience |
| Magic Eden | Multichain | Cross-chain clarity, network indicators | Complex for newcomers |

---

## Wallets / Onboarding

| Product | Type | Learn | Avoid |
|---|---|---|---|
| Privy | Embedded wallet | Email/SSO login, wallet in background | — |
| Dynamic | Embedded wallet | Multi-auth, progressive wallet disclosure | — |
| Web3Auth | Embedded wallet | Social login, MPC key management | — |
| MetaMask | Browser wallet | Widely known, trusted | Extension install kills newcomer adoption |
| Rainbow | Mobile wallet | Beautiful UX, NFT display | Still requires understanding of seed phrases |

**Key insight:** For newcomer audiences, always recommend embedded wallets (Privy / Dynamic / Web3Auth). MetaMask is a conversion killer for non-crypto users.

---

## Research sources

- [ethux.design](https://ethux.design) — 32,000+ community-reported Web3 UX pain points
- [UX Fundamentals for Web3 Apps](https://uxdesign.cc/ux-fundamentals-for-web3-applications-8b9badec360e) — Fabio Monzani
- [10 Intent-First UX Patterns](https://medium.com/@ThinkingLoop/10-intents-first-ux-patterns-that-make-web3-feel-easy-e875fd4a289f)
- NN/g — progressive disclosure patterns
