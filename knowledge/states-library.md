# Web3 State Library

Reference for `web3ux-flows`. Map these states explicitly when they apply to a flow. Use plain language equivalents — no crypto jargon in user-facing copy.

---

## Wallet states

| Technical state | Plain language for users |
|---|---|
| Wallet not connected | Not signed in / Login required |
| Wallet connected — wrong network | — (handle automatically, don't expose) |
| Wallet connected — correct network | Signed in / Ready |
| Wallet locked | Session expired — sign in again |

## Transaction states

| Technical state | Plain language for users |
|---|---|
| Idle | — |
| Awaiting signature | Confirming your decision... |
| Pending | Processing... (usually takes less than 5 seconds) |
| Confirmed | Done / Registered / Recorded |
| Failed | Something went wrong — [specific cause] + retry action |
| Dropped | Your action timed out — please try again |

## Balance states

| Technical state | Plain language for users |
|---|---|
| Not configured | — (handle with setup prompt) |
| Loading | Loading... (skeleton placeholder) |
| Active | [show balance] |
| Genuinely zero | You have no [tokens] yet |

## Approval states (DeFi)

| Technical state | Plain language for users |
|---|---|
| No allowance | One-time setup required before your first transaction |
| Partial allowance | Additional approval needed |
| Sufficient allowance | Ready |
| Unlimited allowance set | — (show in settings/advanced view only) |

## Connection states (multichain)

| Technical state | Plain language for users |
|---|---|
| Correct chain | — (no message needed) |
| Wrong chain — known | Switch to [Network name] to continue |
| Wrong chain — unknown | This network isn't supported |

---

## Flow rules using these states

1. Every transaction flow must include: Idle → Pending → Confirmed + Failed paths
2. Pending state must show a visible loader with time estimate
3. Failed state must show plain-language cause + recovery action (never just an error code)
4. Never expose transaction hashes or contract addresses as primary feedback
5. Wallet states should be abstracted — for embedded wallets, session = login, no wallet concept shown
