Profile: Practitioner314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner
Id: practitioner-314e
Title: "314e Practitioner"
Description: """
314e-constrained Practitioner profile derived from QI-Core Practitioner.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
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
* name only HumanName314e
* telecom only ContactPoint314e
* address only Address314e
* photo only Attachment314e
* qualification.identifier only Identifier314e
* qualification.code only CodeableConcept314e
* qualification.period only Period314e
* qualification.issuer only Reference314e
* qualification.issuer ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* communication only CodeableConcept314e
* meta only Meta314e
