Profile: PractitionerRole314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitionerrole
Id: practitionerrole-314e
Title: "314e PractitionerRole"
Description: """
314e-constrained PractitionerRole profile derived from QI-Core PractitionerRole.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
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
* practitioner only Reference314e
* practitioner ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* organization only Reference314e
* organization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* code only CodeableConcept314e
* specialty only CodeableConcept314e
* location only Reference314e
* location ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* healthcareService only Reference314e
* healthcareService ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* telecom only ContactPoint314e
* notAvailable.during only Period314e
* endpoint only Reference314e
* endpoint ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* meta only Meta314e
