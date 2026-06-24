Profile: ConditionDiagnosis314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-condition-encounter-diagnosis
Id: condition-diagnosis-314e
Title: "314e Condition Encounter Diagnosis"
Description: """
314e-constrained Condition profile for encounter diagnoses, derived from
QI-Core Condition Encounter Diagnosis.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceLastEditedUser named lastEditedUser 0..1

* extension[lastEditedUser] ^short =
    "Person who last edited this resource"

* extension contains
    ResourceEpisode named episode 0..1

* extension[episode] ^short =
    "Associated episode of care"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* clinicalStatus only CodeableConcept314e
* verificationStatus only CodeableConcept314e
* category only CodeableConcept314e
* severity only CodeableConcept314e
* code only CodeableConcept314e
* bodySite only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* onset[x] only dateTime314e or Age314e or Period314e or Range314e
* abatement[x] only dateTime314e or Age314e or Period314e or Range314e
* recorder only Reference314e
* recorder ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* recorder ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* recorder ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* recorder ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* asserter only Reference314e
* asserter ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* asserter ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* asserter ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* asserter ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* stage.summary only CodeableConcept314e
* stage.assessment only Reference314e
* stage.assessment ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* stage.assessment ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* stage.assessment ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* stage.assessment ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* stage.assessment ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* stage.assessment ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* stage.assessment ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* stage.assessment ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* stage.assessment ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* stage.type only CodeableConcept314e
* evidence.code only CodeableConcept314e
* evidence.detail only Reference314e
* evidence.detail ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* evidence.detail ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* evidence.detail ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* evidence.detail ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* evidence.detail ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* evidence.detail ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* evidence.detail ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* evidence.detail ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* evidence.detail ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* evidence.detail ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* evidence.detail ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* evidence.detail ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* evidence.detail ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* evidence.detail ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* evidence.detail ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* evidence.detail ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* evidence.detail ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* evidence.detail ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* evidence.detail ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* evidence.detail ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* evidence.detail ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* evidence.detail ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* evidence.detail ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* evidence.detail ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* evidence.detail ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* evidence.detail ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* evidence.detail ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* evidence.detail ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* evidence.detail ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* evidence.detail ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* evidence.detail ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* evidence.detail ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* evidence.detail ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* evidence.detail ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* evidence.detail ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* evidence.detail ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* evidence.detail ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* evidence.detail ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* evidence.detail ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* evidence.detail ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* evidence.detail ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* evidence.detail ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* evidence.detail ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* evidence.detail ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* evidence.detail ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* evidence.detail ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* evidence.detail ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* evidence.detail ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* evidence.detail ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* evidence.detail ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* evidence.detail ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* evidence.detail ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* evidence.detail ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* evidence.detail ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* evidence.detail ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* evidence.detail ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* evidence.detail ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* evidence.detail ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* note only Annotation314e
* meta only Meta314e
