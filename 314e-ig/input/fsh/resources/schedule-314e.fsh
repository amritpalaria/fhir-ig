Profile: Schedule314e
Parent: Schedule
Id: schedule-314e
Title: "314e Schedule"
Description: """
314e-constrained Schedule profile derived from FHIR R4 Schedule.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* serviceCategory only CodeableConcept314e
* serviceType only CodeableConcept314e
* specialty only CodeableConcept314e
* actor only Reference314e
* planningHorizon only Period314e
* meta only Meta314e
