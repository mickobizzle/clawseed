# Secrets Setup (Template)

## Principle
Never store secrets in tracked repo files. Use env vars or secret providers.

## Required secrets
- `<MODEL_PROVIDER_API_KEY>`
- `<GATEWAY_TOKEN>`
- `<CHANNEL_TOKEN>`

## Setup checklist
- [ ] Create local secret store
- [ ] Configure wrapper to read secrets by reference
- [ ] Validate startup with secrets loaded
- [ ] Confirm no secrets in git diff
