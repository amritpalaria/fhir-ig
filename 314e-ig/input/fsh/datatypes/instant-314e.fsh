// ======================================================
// UTC INVARIANT
// ======================================================

Invariant: instant314e-utc
Description: """
instant values SHALL always be expressed in UTC ('Z').
"""
Expression: """
matches('^([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\\.[0-9]+)?Z)$')
"""
Severity: #error

// ======================================================
// PROFILE
// ======================================================

Profile: instant314e
Parent: instant
Id: instant-314e
Title: "314e instant"
Description: """
314e profile of the FHIR instant primitive datatype.

All instant values SHALL be stored in UTC.

An instant represents an exact point in time and therefore
does not support approximate or estimated accuracy semantics.

If only a smaller degree of precision is usable
(for example, only minute precision is meaningful),
the following extension SHALL be used:

http://314e.com/fhir/StructureDefinition/datetime-precision
"""

* ^status = #active

* obeys instant314e-utc

// ======================================================
// TIME PRECISION EXTENSION
// ======================================================

* extension contains
    DateTimePrecision named timePrecision 0..1

* extension[timePrecision] ^short =
    "Usable precision of the instant value"

* extension[timePrecision] ^definition = """
Specifies the degree of precision that is meaningful,
usable or reliable for the instant value.

Examples include:
- minute
- second
- millisecond
"""

