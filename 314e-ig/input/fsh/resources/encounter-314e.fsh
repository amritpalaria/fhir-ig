Profile: Encounter314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter
Id: encounter-314e
Title: "314e Encounter"
Description: """
314e-constrained Encounter profile derived from QI-Core Encounter.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/encounter-314e"
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
* class only Coding314e
* type only CodeableConcept314e
* serviceType only CodeableConcept314e
* priority only CodeableConcept314e
* subject only Reference314e
* episodeOfCare only Reference314e
* basedOn only Reference314e
* participant.type only CodeableConcept314e
* participant.individual only Reference314e
* appointment only Reference314e
* period only Period314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* diagnosis.condition only Reference314e
* diagnosis.use only CodeableConcept314e
* account only Reference314e
* hospitalization.origin only Reference314e
* hospitalization.admitSource only CodeableConcept314e
* hospitalization.reAdmission only CodeableConcept314e
* hospitalization.dietPreference only CodeableConcept314e
* hospitalization.specialCourtesy only CodeableConcept314e
* hospitalization.specialArrangement only CodeableConcept314e
* hospitalization.destination only Reference314e
* hospitalization.dischargeDisposition only CodeableConcept314e
* location.location only Reference314e
* location.physicalType only CodeableConcept314e
* serviceProvider only Reference314e
* partOf only Reference314e
