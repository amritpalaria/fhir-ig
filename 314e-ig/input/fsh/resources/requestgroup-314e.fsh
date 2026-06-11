Profile: RequestGroup314e
Parent: RequestGroup
Id: requestgroup-314e
Title: "314e RequestGroup"
Description: """
314e-constrained RequestGroup profile derived from FHIR R4 RequestGroup.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
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
* groupIdentifier only Identifier314e
* basedOn only Reference314e
* replaces only Reference314e
* code only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* authoredOn only dateTime314e
* author only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* note only Annotation314e
* action.code only CodeableConcept314e
* action.documentation only RelatedArtifact314e
* action.timing[x] only dateTime314e or Age314e or Period314e or Duration314e or Range314e or Timing314e
* action.participant only Reference314e
* action.resource only Reference314e
* meta only Meta314e
