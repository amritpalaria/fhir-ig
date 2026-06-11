Profile: ClinicalImpression314e
Parent: ClinicalImpression
Id: clinicalimpression-314e
Title: "314e ClinicalImpression"
Description: """
314e-constrained ClinicalImpression profile derived from FHIR R4 ClinicalImpression.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
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
* statusReason only CodeableConcept314e
* code only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* effective[x] only dateTime314e or Period314e
* date only dateTime314e
* assessor only Reference314e
* previous only Reference314e
* problem only Reference314e
* investigation.code only CodeableConcept314e
* investigation.item only Reference314e
* finding.itemCodeableConcept only CodeableConcept314e
* finding.itemReference only Reference314e
* prognosisCodeableConcept only CodeableConcept314e
* prognosisReference only Reference314e
* supportingInfo only Reference314e
* note only Annotation314e
* meta only Meta314e
