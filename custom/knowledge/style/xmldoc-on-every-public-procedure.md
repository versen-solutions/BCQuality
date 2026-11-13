---
bc-version: [all]
domain: style
keywords: [xmldoc, summary, public-procedure, documentation, access-modifier, internal, local]
technologies: [al]
countries: [w1]
application-area: [all]
---

# Document every public procedure, make everything else local or internal

## Description

Company policy for every Versen Solutions app, stricter than the shared rule
that only library codeunits need XML documentation: every procedure that is
neither `local` nor `internal` is part of the app's public surface and gets an
XML documentation comment. Per-tenant extensions are often extended or called
by later customer projects, so an undocumented public procedure becomes an
unclear contract.

Event subscribers, triggers and test procedures are exempt, as in the shared
rule.

## Best Practice

Decide the access level first. A procedure that is only used inside its
object is `local`, one that is only used inside the app is `internal`. A
procedure that stays public gets `/// <summary>` with an active description,
one `/// <param>` per parameter and `/// <returns>` where it returns a value.

## Anti Pattern

A procedure without `local` or `internal` and without XML documentation, in
any codeunit, table or page of the app, not only in library codeunits. Also
a public procedure whose only purpose is internal reuse, where `internal`
would have been correct.
