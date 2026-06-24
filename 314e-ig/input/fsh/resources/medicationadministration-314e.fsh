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
* subject ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/patient-314e"

* context only Reference314e
* context ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/encounter-314e"

* effective[x] only dateTime314e or Period314e
* performer.function only CodeableConcept314e

* performer.actor only Reference314e
* performer.actor ^type.targetProfile[0] =
    "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* performer.actor ^type.targetProfile[1] =
    "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* performer.actor ^type.targetProfile[2] =
    "http://314e.com/fhir/StructureDefinition/patient-314e"
* performer.actor ^type.targetProfile[3] =
    "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* performer.actor ^type.targetProfile[4] =
    "http://314e.com/fhir/StructureDefinition/device-314e"

* reasonCode only CodeableConcept314e

* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] =
    "http://314e.com/fhir/StructureDefinition/condition-314e"
* reasonReference ^type.targetProfile[1] =
    "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[2] =
    "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[3] =
    "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* reasonReference ^type.targetProfile[4] =
    "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* reasonReference ^type.targetProfile[5] =
    "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* reasonReference ^type.targetProfile[6] =
    "http://314e.com/fhir/StructureDefinition/observation-314e"
* reasonReference ^type.targetProfile[7] =
    "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* reasonReference ^type.targetProfile[8] =
    "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* reasonReference ^type.targetProfile[9] =
    "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* reasonReference ^type.targetProfile[10] =
    "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"

* request only Reference314e
* request ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"

* device only Reference314e
* device ^type.targetProfile =
    "http://314e.com/fhir/StructureDefinition/device-314e"

* note only Annotation314e
* dosage.site only CodeableConcept314e
* dosage.route only CodeableConcept314e
* dosage.method only CodeableConcept314e
* dosage.dose only SimpleQuantity314e
* dosage.rate[x] only Ratio314e or SimpleQuantity314e

* eventHistory only Reference314e
* eventHistory ^type.targetProfile =
    "http://hl7.org/fhir/StructureDefinition/Provenance"

* meta only Meta314e
