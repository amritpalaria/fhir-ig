Profile: time314e
Parent: time
Id: time-314e
Title: "314e time"
Description: """
314e profile of the FHIR time primitive datatype - a time during the day, 
in the format hh:mm:ss. There is no date specified. 
Seconds must be provided due to schema type constraints but may be zero-filled 
and may be ignored at receiver discretion. The time "24:00" SHALL NOT be used. 
A time zone SHALL NOT be present. Times can be converted to a Duration since midnight.

If only a smaller degree of precision than syntactically recorded is usable
(for example, only hour and minute are known),
the following extension SHALL be used:

http://314e.com/fhir/StructureDefinition/time-precision-314e

If all or part of the usable time value is approximate rather than exact,
the following extension SHALL be used:

http://314e.com/fhir/StructureDefinition/time-accuracy-indicator-314e
"""

* ^status = #active

// ======================================================
// TIME PRECISION EXTENSION
// ======================================================

* extension contains
    TimePrecision314e named timePrecision 0..1

* extension[timePrecision] ^short =
    "Usable precision of the time value"

* extension[timePrecision] ^definition = """
Specifies the degree of precision that is meaningful, usable
or reliable for the time value.

Example:
- hour
- minute
- second
- millisecond
"""

// ======================================================
// EXACT PRECISION EXTENSION
// ======================================================

* extension contains
    TimeAccuracy314e named accuracyIndicator 0..1

* extension[accuracyIndicator] ^short =
    "Indicates the precision that is verified as clinically exact or accurate"

* extension[accuracyIndicator] ^definition = """
Specifies the accuracy or exactness of a time value when only some part of 
the known/usable precision of time can be verified as accurate or exact and the rest is estimated or approximate.

Examples include:
- hour precision
- minute precision
- second precision
- millisecond precision
- none
"""
