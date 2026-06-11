Profile: MedicationRequest314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationrequest
Id: medicationrequest-314e
Title: "314e MedicationRequest"
Description: """
314e-constrained MedicationRequest profile derived from QI-Core MedicationRequest.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    Cosigner named cosigner 0..1

* extension[cosigner] ^short =
    "Individual who co-signed or verified this medication request"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* statusReason only CodeableConcept314e
* category only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* supportingInformation only Reference314e
* authoredOn only dateTime314e
* requester only Reference314e
* performer only Reference314e
* performerType only CodeableConcept314e
* recorder only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* basedOn only Reference314e
* groupIdentifier only Identifier314e
* courseOfTherapyType only CodeableConcept314e
* insurance only Reference314e
* note only Annotation314e
* dosageInstruction only Dosage314e
* detectedIssue only Reference314e
* eventHistory only Reference314e
* meta only Meta314e
