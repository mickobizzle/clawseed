# AGENTS.template.md
## Scope
Define what this agent can edit and automate.

## Safety defaults
- Require confirmation for destructive actions.
- Keep outbound messaging opt-in.

## Cron creation guardrail
- Classify job: terminal/permanent
- Define completion_check
- Define on_complete (terminal only)
- State owner_intent
