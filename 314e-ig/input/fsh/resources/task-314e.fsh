Profile: Task314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-task
Id: task-314e
Title: "314e Task"
Description: """
314e-constrained Task profile derived from QI-Core Task.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/task-314e"
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
* groupIdentifier only Identifier314e
* partOf only Reference314e
* statusReason only CodeableConcept314e
* businessStatus only CodeableConcept314e
* code only CodeableConcept314e
* focus only Reference314e
* for only Reference314e
* encounter only Reference314e
* executionPeriod only Period314e
* authoredOn only dateTime314e
* lastModified only dateTime314e
* requester only Reference314e
* performerType only CodeableConcept314e
* owner only Reference314e
* location only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* insurance only Reference314e
* note only Annotation314e
* relevantHistory only Reference314e
* restriction.period only Period314e
* restriction.recipient only Reference314e
* input.type only CodeableConcept314e
* output.type only CodeableConcept314e
* meta only Meta314e
