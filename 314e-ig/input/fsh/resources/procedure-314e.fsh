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
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* partOf only Reference314e
* partOf ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* partOf ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* partOf ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* partOf ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* partOf ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* partOf ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* partOf ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* statusReason only CodeableConcept314e
* category only CodeableConcept314e
* code only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* performed[x] only dateTime314e or Period314e or string or Age314e or Range314e
* recorder only Reference314e
* recorder ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* recorder ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* recorder ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* recorder ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* asserter only Reference314e
* asserter ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* asserter ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* asserter ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* asserter ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* performer.function only CodeableConcept314e
* performer.actor only Reference314e
* performer.actor ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* performer.actor ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* performer.actor ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* performer.actor ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* performer.onBehalfOf only Reference314e
* performer.onBehalfOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* location only Reference314e
* location ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* bodySite only CodeableConcept314e
* outcome only CodeableConcept314e
* report only Reference314e
* report ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* report ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* report ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* report ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* complication only CodeableConcept314e
* complicationDetail only Reference314e
* complicationDetail ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* complicationDetail ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* complicationDetail ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* followUp only CodeableConcept314e
* note only Annotation314e
* focalDevice.action only CodeableConcept314e
* focalDevice.manipulated only Reference314e
* focalDevice.manipulated ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/device-314e"
* usedReference only Reference314e
* usedReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* usedReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* usedReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* usedCode only CodeableConcept314e
* meta only Meta314e
