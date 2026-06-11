Profile: CareTeam314e
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam
Id: careteam-314e
Title: "314e CareTeam"
Description: """
314e-constrained CareTeam profile derived from US Core CareTeam.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/careteam-314e"
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
* category only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* period only Period314e
* participant.role only CodeableConcept314e
* participant.member only Reference314e
* participant.onBehalfOf only Reference314e
* participant.period only Period314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* managingOrganization only Reference314e
* telecom only ContactPoint314e
* note only Annotation314e
* meta only Meta314e
