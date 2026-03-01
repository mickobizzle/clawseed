# ClawSeed

**Build your own personal “claw”** — an agentic wrapper around LLMs that can safely operate in your local environment.

ClawSeed is a public starter kit for people who want a practical, privacy-aware system for:
- multi-channel assistant workflows,
- durable personal operating docs,
- weekly review and hygiene routines,
- wrapper-swappable architecture (OpenClaw today, other runtimes tomorrow).

---

## Why ClawSeed exists
Most agent setups are either too ad-hoc (hard to trust) or too rigid (hard to adapt).

ClawSeed gives you a middle path:
- **portable structure** you can fork,
- **clear safety defaults**,
- **onboarding templates** for your own preferences,
- **runtime adapter contract** so your core system survives wrapper changes.

---

## What you get

### 1) Onboarding foundation
- `docs/ONBOARDING.md`
- `templates/USER.template.md`
- `templates/AGENTS.template.md`

### 2) Operational templates
- `templates/SECRETS_SETUP.template.md`
- `templates/CHANNELS_SETUP.template.md`
- `templates/WEEKLY_REVIEW_CHECKLIST.template.md`

### 3) Wrapper portability
- `docs/WRAPPER_ADAPTER.md`
- `examples/adapter-openclaw.example.yaml`

### 4) Safety rails
- `scripts/bootstrap_seed.sh`
- `scripts/validate_seed.sh`
- `scripts/safety_scan.sh`
- CI checks in `.github/workflows/ci.yml`

---

## What this repo intentionally does **not** include
- private knowledge bases
- personal topic hubs
- personal zettelkasten corpora
- inbox exports, logs, chat IDs, or personal identifiers

ClawSeed is a **clean template**, not a personal data dump.

---

## Quick start

```bash
git clone https://github.com/mickobizzle/clawseed.git
cd clawseed
./scripts/bootstrap_seed.sh
```

Then:
1. Fill in `USER.md` and `AGENTS.md` from templates.
2. Configure secrets via references (not plaintext).
3. Run checks:
   - `./scripts/safety_scan.sh`
   - `./scripts/validate_seed.sh`

---

## Who this is for
- builders creating their own local-first AI copilot runtime
- power users running structured weekly review workflows
- teams prototyping safe agent operations with clear boundaries

---

## Project principles
1. **Canonical docs over hidden behavior**
2. **Safety-first automation**
3. **Portable architecture**
4. **Explicit review cadence**
5. **No secrets in git**

---

## Contributing
See [`CONTRIBUTING.md`](./CONTRIBUTING.md). Please keep submissions generic, reusable, and privacy-safe.

## Security
See [`SECURITY.md`](./SECURITY.md).
