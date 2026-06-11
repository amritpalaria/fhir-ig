Profile: Media314e
Parent: Media
Id: media-314e
Title: "314e Media"
Description: """
314e-constrained Media profile derived from FHIR R4 Media.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/media-314e"
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
* basedOn only Reference314e
* partOf only Reference314e
* type only CodeableConcept314e
* modality only CodeableConcept314e
* view only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* created[x] only dateTime314e or Period314e
* issued only instant314e
* operator only Reference314e
* reasonCode only CodeableConcept314e
* bodySite only CodeableConcept314e
* device only Reference314e
* content only Attachment314e
* note only Annotation314e
* meta only Meta314e
