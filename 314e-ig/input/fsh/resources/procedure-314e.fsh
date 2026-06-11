Profile: Procedure314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedure
Id: procedure-314e
Title: "314e Procedure"
Description: """
314e-constrained Procedure profile derived from QI-Core Procedure.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/procedure-314e"
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
* statusReason only CodeableConcept314e
* category only CodeableConcept314e
* code only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* performed[x] only dateTime314e or Period314e or string or Age314e or Range314e
* recorder only Reference314e
* asserter only Reference314e
* performer.function only CodeableConcept314e
* performer.actor only Reference314e
* performer.onBehalfOf only Reference314e
* location only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* bodySite only CodeableConcept314e
* outcome only CodeableConcept314e
* report only Reference314e
* complication only CodeableConcept314e
* complicationDetail only Reference314e
* followUp only CodeableConcept314e
* note only Annotation314e
* focalDevice.action only CodeableConcept314e
* focalDevice.manipulated only Reference314e
* usedReference only Reference314e
* usedCode only CodeableConcept314e
* meta only Meta314e
