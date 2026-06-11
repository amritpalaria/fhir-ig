Profile: Organization314e
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Id: organization-314e
Title: "314e Organization"
Description: """
314e-constrained Organization profile derived from US Core Organization.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/organization-314e"
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
* type only CodeableConcept314e
* telecom only ContactPoint314e
* address only Address314e
* partOf only Reference314e
* contact.purpose only CodeableConcept314e
* contact.name only HumanName314e
* contact.telecom only ContactPoint314e
* contact.address only Address314e
* endpoint only Reference314e
* meta only Meta314e
