Profile: Slot314e
Parent: Slot
Id: slot-314e
Title: "314e Slot"
Description: """
314e-constrained Slot profile derived from FHIR R4 Slot.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/slot-314e"
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
* appointmentType only CodeableConcept314e
* schedule only Reference314e
* start only instant314e
* end only instant314e
* meta only Meta314e
