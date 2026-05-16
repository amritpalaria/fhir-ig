Profile: Period314e
Parent: Period
Id: period-314e
Title: "314e Period"
Description: """
314e profile of the FHIR Period datatype.

All dateTime values within the Period SHALL conform
to the 314e DateTime profile requirements,
including UTC normalization and precision handling.
"""

* ^status = #active

// ======================================================
// START
// ======================================================

* start only dateTime314e

* start ^short =
    "Starting time with UTC normalization, precision support and inclusive boundary"

* start ^definition = """
The start of the period. The boundary is inclusive.

All timestamps SHALL be represented in UTC.
Additional extensions may be used to indicate
usable precision or approximate values.
"""

// ======================================================
// END
// ======================================================

* end only dateTime314e

* end ^short =
    "Ending time with UTC normalization, precision support and inclusive boundary"

* end ^definition = """
The end of the period.  The boundary is inclusive. If the end of the period is missing, it 
means no end was known or planned at the time the instance was created. The start may be in 
the past, and the end date in the future, which means that period is expected/planned to end at that time.

All timestamps SHALL be represented in UTC.
Additional extensions may be used to indicate
usable precision or approximate values.
"""
