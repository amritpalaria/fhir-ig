Profile: DetectedIssue314e
Parent: DetectedIssue
Id: detectedissue-314e
Title: "314e DetectedIssue"
Description: """
314e-constrained DetectedIssue profile derived from FHIR R4 DetectedIssue.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
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
* code only CodeableConcept314e
* patient only Reference314e
* patient ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* identified[x] only dateTime314e or Period314e
* author only Reference314e
* author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/device-314e"
* author ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* author ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* implicated only Reference314e
* implicated ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* evidence.code only CodeableConcept314e
* evidence.detail only Reference314e
* evidence.detail ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* mitigation.action only CodeableConcept314e
* mitigation.date only dateTime314e
* mitigation.author only Reference314e
* mitigation.author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* mitigation.author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* mitigation.author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* meta only Meta314e
