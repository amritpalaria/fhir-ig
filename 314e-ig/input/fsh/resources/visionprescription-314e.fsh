Profile: VisionPrescription314e
Parent: VisionPrescription
Id: visionprescription-314e
Title: "314e VisionPrescription"
Description: """
314e-constrained VisionPrescription profile derived from FHIR R4 VisionPrescription.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
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
* patient only Reference314e
* encounter only Reference314e
* dateWritten only dateTime314e
* prescriber only Reference314e
* lensSpecification.product only CodeableConcept314e
* lensSpecification.sphere only decimal314e
* lensSpecification.cylinder only decimal314e
* lensSpecification.add only decimal314e
* lensSpecification.power only decimal314e
* lensSpecification.backCurve only decimal314e
* lensSpecification.diameter only decimal314e
* lensSpecification.prism.amount only decimal314e
* lensSpecification.duration only SimpleQuantity314e
* lensSpecification.note only Annotation314e
* meta only Meta314e
