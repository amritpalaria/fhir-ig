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
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* supportingInformation only Reference314e
* supportingInformation ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* supportingInformation ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* supportingInformation ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* supportingInformation ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* supportingInformation ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* supportingInformation ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* supportingInformation ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* supportingInformation ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* supportingInformation ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* supportingInformation ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* supportingInformation ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* supportingInformation ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* supportingInformation ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* supportingInformation ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* supportingInformation ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* supportingInformation ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* supportingInformation ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* supportingInformation ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* supportingInformation ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* supportingInformation ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* supportingInformation ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* supportingInformation ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* supportingInformation ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* supportingInformation ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* supportingInformation ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* supportingInformation ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* supportingInformation ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* supportingInformation ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* supportingInformation ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* supportingInformation ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* supportingInformation ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* supportingInformation ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* supportingInformation ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* supportingInformation ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* supportingInformation ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* supportingInformation ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* supportingInformation ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* supportingInformation ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* supportingInformation ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* supportingInformation ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* supportingInformation ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* supportingInformation ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* supportingInformation ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* supportingInformation ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* supportingInformation ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* supportingInformation ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* supportingInformation ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* supportingInformation ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* supportingInformation ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* supportingInformation ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* supportingInformation ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* supportingInformation ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* supportingInformation ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* supportingInformation ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* supportingInformation ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* supportingInformation ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* supportingInformation ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* supportingInformation ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* authoredOn only dateTime314e
* requester only Reference314e
* requester ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* requester ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* requester ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* performer only Reference314e
* performer ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* performerType only CodeableConcept314e
* recorder only Reference314e
* recorder ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* recorder ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* basedOn only Reference314e
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* basedOn ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* basedOn ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* groupIdentifier only Identifier314e
* courseOfTherapyType only CodeableConcept314e
* insurance only Reference314e
* insurance ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* note only Annotation314e
* dosageInstruction only Dosage314e
* detectedIssue only Reference314e
* detectedIssue ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* eventHistory only Reference314e
* eventHistory ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Provenance"
* meta only Meta314e
