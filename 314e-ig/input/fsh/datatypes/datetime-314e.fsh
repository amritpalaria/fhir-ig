// ======================================================
// UTC INVARIANT
// ======================================================

Invariant: datetime314e-utc
Description: """
If a timezone is present in the dateTime value,
it SHALL be UTC ('Z').
"""
Expression: """
matches('^([0-9]{4}(-[0-9]{2}(-[0-9]{2}(T[0-9]{2}:[0-9]{2}:[0-9]{2}(\\.[0-9]+)?Z)?)?)?)$')
"""
Severity: #error

// ======================================================
// PROFILE
// ======================================================

Profile: dateTime314e
Parent: dateTime
Id: datetime-314e
Title: "314e dateTime"
Description: """
314e profile of the FHIR dateTime primitive datatype.

All dateTime values SHALL be stored in UTC.

If only a smaller degree of precision is usable
(for example, only the date portion is known),
the following extension SHALL be used:

http://314e.com/fhir/StructureDefinition/datetime-precision

If all or part of the usable date/time value is approximate rather than exact,
the following extension SHALL be used:

https://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator
"""

* obeys datetime314e-utc

* ^status = #active

// ======================================================
// TIME PRECISION EXTENSION
// ======================================================

* extension contains
    DateTimePrecision named timePrecision 0..1

* extension[timePrecision] ^short =
    "Usable precision of the dateTime value"

* extension[timePrecision] ^definition = """
Specifies the degree of precision that is meaningful, usable
or reliable for the dateTime value.

Example:
- year
- month
- date
- minute
- second
"""

// ======================================================
// EXACT PRECISION EXTENSION
// ======================================================

* extension contains
    DateTimeAccuracy named accuracyIndicator 0..1

* extension[accuracyIndicator] ^short =
    "Indicates the precision that is verified as clinically exact or accurate"

* extension[accuracyIndicator] ^definition = """
Specifies the accuracy or exactness of a dateTime value when only some part of 
the known/ usable precision of dateTime can be verified as accurate or exact and the rest is estimated or approximate. 
Examples include year-only, month-level, date-level, full timestamp precision or none.
"""

