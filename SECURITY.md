# Security Policy

## Reporting a vulnerability
Please open a private security advisory on GitHub for sensitive findings.

## Sensitive data policy
This repository must never include:
- API keys/tokens/secrets
- personal identifiers (phone, private email, chat IDs)
- private logs, inbox exports, or account metadata

## Maintainer checklist before release
- Run `./scripts/safety_scan.sh`
- Run `./scripts/validate_seed.sh`
- Review diff for private residue
