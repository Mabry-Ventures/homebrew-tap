# Repository agent guide

Read README.md, the affected code and tests, and the nearest scoped AGENTS.md before editing.
Preserve product-specific security, release and deployment boundaries.

## CI and review budget

Use the included Ubuntu GitHub runners for portable CI. GitHub Mac and self-hosted
runners require a new, explicit owner exception; do not add dynamic runner labels.
Run affected Apple build, simulator, unit/UI and platform checks locally on the
exact candidate first, then manually admit the matching Xcode Cloud validation.
Local proof, cloud proof, signing and distribution remain separate gates.

Keep hosted PRs draft while iterating. Ordinary Codex review runs on PR open with
exhaustive review off; request one final-head rereview when material changes
invalidate earlier evidence. A quota/credit refusal is unavailable evidence,
never approval. Preserve this repo's required checks and reviewer authority.
Do not retry identical review requests or buy credits automatically.
See [CI economy](docs/CI-ECONOMY.md) for runner and cloud admission policy.
