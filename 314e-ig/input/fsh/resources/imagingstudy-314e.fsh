Profile: ImagingStudy314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-imagingstudy
Id: imagingstudy-314e
Title: "314e ImagingStudy"
Description: """
314e-constrained ImagingStudy profile derived from QI-Core ImagingStudy.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
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
* subject only Reference314e
* encounter only Reference314e
* started only dateTime314e
* basedOn only Reference314e
* referrer only Reference314e
* interpreter only Reference314e
* endpoint only Reference314e
* procedureReference only Reference314e
* procedureCode only CodeableConcept314e
* location only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* note only Annotation314e
* series.modality only Coding314e
* series.endpoint only Reference314e
* series.bodySite only Coding314e
* series.laterality only Coding314e
* series.instance.sopClass only Coding314e
* series.specimen only Reference314e
* series.started only dateTime314e
* series.performer.function only CodeableConcept314e
* series.performer.actor only Reference314e
* meta only Meta314e
