Profile: MedicationAdministration314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationadministration
Id: medicationadministration-314e
Title: "314e MedicationAdministration"
Description: """
314e-constrained MedicationAdministration profile derived from QI-Core MedicationAdministration.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
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
* category only CodeableConcept314e
* subject only Reference314e
* context only Reference314e
* effective[x] only dateTime314e or Period314e
* performer.function only CodeableConcept314e
* performer.actor only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* request only Reference314e
* device only Reference314e
* note only Annotation314e
* dosage.site only CodeableConcept314e
* dosage.route only CodeableConcept314e
* dosage.method only CodeableConcept314e
* dosage.dose only SimpleQuantity314e
* dosage.rate[x] only Ratio314e or SimpleQuantity314e
* eventHistory only Reference314e
* meta only Meta314e
