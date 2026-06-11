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
* identified[x] only dateTime314e or Period314e
* author only Reference314e
* implicated only Reference314e
* evidence.code only CodeableConcept314e
* evidence.detail only Reference314e
* mitigation.action only CodeableConcept314e
* mitigation.date only dateTime314e
* mitigation.author only Reference314e
* meta only Meta314e
