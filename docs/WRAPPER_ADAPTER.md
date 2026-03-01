# Wrapper Adapter Contract (Template)

Purpose: keep core system portable while swapping runtime wrappers (OpenClaw, etc.).

## Required adapter capabilities
1. Message ingress/egress
2. Tool execution abstraction
3. Scheduled task execution
4. Artifact/log output paths
5. Health/status endpoint or command

## Contract fields
- `adapter.name`
- `adapter.version`
- `adapter.health_check`
- `adapter.logs_path`
- `adapter.schedules_path`
- `adapter.message_channels`

## Example profile
```yaml
adapter:
  name: openclaw
  version: "<version>"
  health_check: "openclaw status"
  logs_path: "<path>/logs"
  schedules_path: "<path>/cron"
  message_channels: [telegram]
```

## Weekly review adapter checks
- Verify health check command succeeds.
- Verify expected nightly artifacts exist.
- Verify error/warning scan output is reviewed.
