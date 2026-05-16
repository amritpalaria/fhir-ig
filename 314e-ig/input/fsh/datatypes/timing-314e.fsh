Profile: Timing314e
Parent: Timing
Id: timing-314e
Title: "314e Timing"
Description: """
314e profile of the FHIR Timing datatype.

Uses 314e date/time related datatypes
including DateTime314e, Period314e, and Quantity314e.
"""

* ^status = #active

// ======================================================
// EVENT
// ======================================================

* event only DateTime314e

* event ^short =
    "Scheduled event time in UTC"

// ======================================================
// REPEAT BOUNDS
// ======================================================

* repeat.bounds[x] only Duration314e or Range314e or Period314e

// ======================================================
// REPEAT DURATION
// ======================================================

* repeat.durationMax only decimal

// ======================================================
// REPEAT PERIOD
// ======================================================

* repeat.periodMax only decimal

// ======================================================
// REPEAT OFFSET
// ======================================================

* repeat.offset ^short =
    "Minutes from event with standard FHIR semantics"
