# Web3 UX Rule Sets

Reference for `web3ux-critique`. Evaluate against all applicable rule sets. Skip rules that don't apply to the product type.

---

## Rule set 1: Wallet connection

- [ ] Wallet connection is not triggered automatically on page load
- [ ] The user sees the product's value before being asked to connect
- [ ] The connect action is explicitly user-initiated
- [ ] Wallet connection state is visible and persistent (header/navbar)
- [ ] Disconnected state is clearly distinct from connected state

**Severity if violated:** Critical — users abandon before experiencing the product.

---

## Rule set 2: Language and copy

- [ ] No unexplained technical jargon in user-facing copy
- [ ] "Approve token allowance" or equivalent is explained in plain language
- [ ] "Gas fee" is explained contextually, not assumed
- [ ] Seed phrase / private key backup explains *what is at risk*, not just *that there is a risk*
- [ ] "Anonymous" is not used (regulatory flag) — "private" is used instead
- [ ] Error messages explain what happened AND what the user can do
- [ ] Addresses are labeled with ENS or a human name where possible

**Severity if violated:** High to Critical depending on context.

---

## Rule set 3: Transaction feedback

- [ ] Every transaction has a visible pending state
- [ ] Pending state shows expected wait time or confirmation count
- [ ] Confirmed state is distinct from pending state
- [ ] Failed state explains what happened in plain language
- [ ] Failed state offers a recovery action (retry, adjust gas, contact support)
- [ ] Link to block explorer is available for every submitted transaction
- [ ] Fees are shown before the user commits to an action (not after)

**Severity if violated:** Critical — users lose trust immediately when transactions disappear silently.

---

## Rule set 4: Chain and network clarity

- [ ] Current network/chain is always visible in the UI
- [ ] Wrong network is detected and communicated immediately
- [ ] Network switch flow is explicit (multichain) or automatic with notification (single-chain)
- [ ] Cross-chain operations clearly show source chain and destination chain
- [ ] Address validation includes chain context (ETH address on Solana product = error)

**Severity if violated:** High — users lose funds or abandon due to network confusion.

---

## Rule set 5: Safety and irreversibility

- [ ] Irreversible actions have explicit confirmation step
- [ ] Confirmation copy states clearly that the action cannot be undone
- [ ] Large value transactions have additional friction (not just a single click)
- [ ] Sending to an unverified address shows a warning
- [ ] Token approval scope is shown (unlimited vs. exact amount)
- [ ] Spam tokens are filtered or flagged

**Severity if violated:** Critical — irreversible fund loss destroys user trust permanently.

---

## Rule set 6: Onboarding

- [ ] First-run experience shows value before requiring any wallet or account setup
- [ ] Onboarding flow is linear — no branching that takes users out of the main experience
- [ ] Help and documentation is embedded in the UI, not in an external wiki
- [ ] Progressive disclosure is used — advanced options are hidden until needed
- [ ] Mode switching (simple/advanced) is available where complexity is unavoidable

**Severity if violated:** High — new users never return after a confusing first experience.

---

## Rule set 7: Balance and state display

- [ ] Zero balance is distinguishable from "not loaded" or "not configured"
- [ ] Loading states exist for all on-chain data fetches
- [ ] Encrypted or private balances are visually distinct from zero balances
- [ ] Stale data is marked as stale (not silently shown as current)

**Severity if violated:** Medium to High — users lose trust in the numbers shown.

---

## Audit output format

```
## Web3 UX Audit — [Product/Flow Name]

### Summary
[2-3 sentence overall assessment]

**Critical issues:** [N]
**High issues:** [N]
**Medium issues:** [N]
**Passing:** [N]

---

### Critical issues
[each: what's wrong | where it occurs | why it matters | suggested fix]

### High issues
[same format]

### Medium issues
[same format]

### What's working
[specific things done well — concrete, not generic]

### Top 3 priorities
[the three changes that would have the most impact, in order]
```
