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

* start only DateTime314e

* start ^short =
    "Starting time with UTC normalization and precision support"

* start ^definition = """
Starting time for the period.

All timestamps SHALL be represented in UTC.
Additional extensions may be used to indicate
usable precision or approximate values.
"""

// ======================================================
// END
// ======================================================

* end only DateTime314e

* end ^short =
    "Ending time with UTC normalization and precision support"

* end ^definition = """
End time for the period.

All timestamps SHALL be represented in UTC.
Additional extensions may be used to indicate
usable precision or approximate values.
"""
