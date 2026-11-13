---
bc-version: [17..]
domain: telemetry
keywords: [telemetry, logmessage, event-id, vsn, prefix, observability]
technologies: [al]
countries: [w1]
application-area: [all]
---

# Use `VSN` plus four digits as telemetry event ID

## Description

Company policy for every Versen Solutions app: the event ID passed to
`Session.LogMessage` and `FeatureTelemetry` has the form `VSN` followed by
four digits, for example `'VSN0001'`. Each ID is used for exactly one logical
event and never reused for another event. This complements the shared rule
that event IDs must be stable and unique: it fixes the format so our KQL
queries and alerts can filter all our events with one prefix.

Critical processes (postings, interfaces, job queue entries) log start,
success and failure, each with its own ID. Telemetry carries no personal data
and uses `DataClassification::SystemMetadata`.

## Best Practice

Declare the ID as a locked label or literal `'VSN0001'`, pick the next free
number in the app, and keep it unchanged across releases.

See sample: [`vsn-telemetry-event-id-format.good.al`](vsn-telemetry-event-id-format.good.al).

## Anti Pattern

Event IDs without the `VSN` prefix (`'CR0001'`, `'0000'`), with a different
number format (`'VSN-1'`), or the same `VSN` ID on two different events.
Each of these breaks the shared filter and makes events indistinguishable.

See sample: [`vsn-telemetry-event-id-format.bad.al`](vsn-telemetry-event-id-format.bad.al).
