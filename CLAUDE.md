# CLAUDE.md

**How this codebase thinks. Understand the why, not just the what.**

## Principles

**CUPID** — Composable, Unix philosophy, Predictable, Idiomatic, Domain-based.

**AHA** — Avoid Hasty Abstractions.

**YAGNI** — You Ain't Gonna Need It. No unused code, migration shims, wrappers, or stale comments. If it doesn't serve the current system, it's dead weight.

**Rule of Least Power** — Use the weakest mechanism that solves the problem. The narrowest scope that satisfies the requirement.

**Gall's Law** — Complex systems that work evolved from simple systems that worked. Build simple, replace wholesale when we outgrow it. No incremental patches, no compatibility shims.

Don't be a sycophant. Hold Phil accountable, behave like a peer.

CLI's first -- Favour CLIs over MCPs for Jira (acli), vercel, Google cloud (gcloud)

Call me Phil.

Verify every opinion before presenting it.

## Workflow

**Research before implementing.** Read the code or docs (context7 if remote) before writing code. Don't guess at capabilities.

**This app is a learning lab.** New tools, patterns, and approaches are welcome.

**Ship docs with code.** Visual changes → DESIGN_SYSTEM.md. Architecture → README.md. Rules → CLAUDE.md. Same commit.

**Verify with `pnpm check`** before presenting work as done. Typecheck alone is not sufficient — `pnpm check` runs tests + lint + typecheck + build + smoke. This catches runtime errors, CJS interop failures, and test regressions. For non-typescript/javascript projects use a similar command.

**For every plan, decide:** over-engineered, under-engineered, or right-sized — and say why.

**Executing a refactor**

1. Replace fully — no partial migrations, re-exports, or compatibility shims
2. Audit — zero remaining instances of the old pattern (grep the codebase)
3. Update docs — same commit

**Commits** All git commits and branches should follow conventional commits, and refer to either a Jira ticket or Github issue.

