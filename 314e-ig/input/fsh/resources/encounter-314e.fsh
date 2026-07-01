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

* extension contains
    EncounterModeOfArrival314e named modeOfArrival 0..1

* extension[modeOfArrival] ^short =
    "How the patient arrived at the reporting facility"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* class only Coding314e
* type only CodeableConcept314e
* serviceType only CodeableConcept314e
* priority only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* episodeOfCare only Reference314e
* episodeOfCare ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* basedOn only Reference314e
* basedOn ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* participant.type only CodeableConcept314e
* participant.individual only Reference314e
* participant.individual ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* participant.individual ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* participant.individual ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* appointment only Reference314e
* appointment ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* period only Period314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* diagnosis.condition only Reference314e
* diagnosis.condition ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* diagnosis.condition ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* diagnosis.condition ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* diagnosis.condition ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* diagnosis.use only CodeableConcept314e
* account only Reference314e
* account ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/account-314e"
* hospitalization.origin only Reference314e
* hospitalization.origin ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* hospitalization.admitSource only CodeableConcept314e
* hospitalization.reAdmission only CodeableConcept314e
* hospitalization.dietPreference only CodeableConcept314e
* hospitalization.specialCourtesy only CodeableConcept314e
* hospitalization.specialArrangement only CodeableConcept314e
* hospitalization.destination only Reference314e
* hospitalization.destination ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* hospitalization.dischargeDisposition only CodeableConcept314e
* location.location only Reference314e
* location.location ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* location.physicalType only CodeableConcept314e
* serviceProvider only Reference314e
* serviceProvider ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* partOf only Reference314e
* partOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* meta only Meta314e
