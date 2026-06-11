Profile: MedicationDispense314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationdispense
Id: medicationdispense-314e
Title: "314e MedicationDispense"
Description: """
314e-constrained MedicationDispense profile derived from QI-Core MedicationDispense.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
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
* partOf only Reference314e
* category only CodeableConcept314e
* subject only Reference314e
* context only Reference314e
* supportingInformation only Reference314e
* performer.function only CodeableConcept314e
* performer.actor only Reference314e
* location only Reference314e
* authorizingPrescription only Reference314e
* type only CodeableConcept314e
* quantity only SimpleQuantity314e
* daysSupply only SimpleQuantity314e
* whenPrepared only dateTime314e
* whenHandedOver only dateTime314e
* destination only Reference314e
* receiver only Reference314e
* note only Annotation314e
* dosageInstruction only Dosage314e
* substitution.reason only CodeableConcept314e
* substitution.responsibleParty only Reference314e
* detectedIssue only Reference314e
* eventHistory only Reference314e
* meta only Meta314e
