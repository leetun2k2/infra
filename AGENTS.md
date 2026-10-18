# Agent Instructions

## Product and priority

This infrastructure supports an SMB technology product with `go-auth` as its
core. Prioritize secure routing, valid configuration, data safety, readiness,
and recovery. Establish the technical core before product features. The admin
UI operates real backend capabilities.

Read the [SMB core plan](../go-auth/specs/2026-10-17-smb-auth-core/00-overview.md)
before this rollout. Agy owns task breakdown, phase gates, and review; Claude
implements bounded tasks. Record actual checks and deployment evidence.

## Working rules

- Act as a Principal Software Engineer. Use concise English and simple Mermaid.
- Inspect Compose, Nginx includes, application config, and adapter callers before
  changing routing or examples. Distinguish current from target state.
- Preserve user edits. Avoid unrelated services and speculative infrastructure.
- Do not use GitNexus, write unit tests, or verify with screenshots.
- Skip generated `*.swagger.json`, `*.pb.go`, `*.validate.go`, and `*.gw.go`.
- Keep Compose unless a concrete requirement needs a change. Do not add GCP,
  Kubernetes, tenancy, or enterprise IAM by assumption.

## Routing and secrets

- Keep browser auth/admin calls behind `web-admin-auth`; it owns HttpOnly
  cookies, OAuth state, CSRF, and server-side client credentials.
- Send provider callbacks to `go-auth` and the product callback to the adapter.
  Confirm scheme, host, port, issuer, and redirects as one contract.
- Use TLS and secure cookies outside local development. Allow local origins
  only through explicit development configuration.
- Keep databases, service ports, and ops endpoints off public ingress.
- Read variable names and examples. Never dump real `.env`, keys, tokens,
  cookies, or expanded Compose configuration containing secrets.
- Prefer pinned release image tags and protected internal service boundaries.

## Validation and deployment

For docs, check Markdown formatting and local links. For config, validate Compose
without resolving secret env files, then validate Nginx in its real image with
upstreams available. Check routes, app readiness, and cookie/CSRF behavior.
Gateway liveness is not backend readiness.

Complete safe preparation before requesting a missing deployment decision.
Verify target host/context, images, schema/data state, secret availability, and
rollback before runtime mutations. Do not infer a target from `clusters/prod`.
Existing user authorization applies; do not add an approval loop when scope
and target are already clear.

Never delete volumes, run `down -v`, or use the initial down migration to roll
back a release. Preserve keys and registration UUIDs. Document checks that ran,
checks that were blocked, and exact released image tags.
