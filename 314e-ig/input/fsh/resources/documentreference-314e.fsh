Profile: DocumentReference314e
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference
Id: documentreference-314e
Title: "314e DocumentReference"
Description: """
314e-constrained DocumentReference profile derived from US Core DocumentReference.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS — CONTEXT
// ======================================================

* context.extension contains
    DocumentReferenceContextDictationDateTime named contextDictationDateTime 0..1

* context.extension[contextDictationDateTime] ^short =
    "Date and time the document content was dictated"

* context.extension contains
    DocumentReferenceContextReportDateTime named reportDateTime 0..1

* context.extension[reportDateTime] ^short =
    "Date and time the finalized report was released"

// ======================================================
// 314e EXTENSIONS — ROOT
// ======================================================

* extension contains
    ResourceCosigner named cosigner 0..1

* extension[cosigner] ^short =
    "Individual who co-signed or verified this document"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* type only CodeableConcept314e
* category only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/device-314e"
* subject ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/group-314e"
* subject ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* date only instant314e
* author only Reference314e
* author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* author ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* author ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* author ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* authenticator only Reference314e
* authenticator ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* authenticator ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* authenticator ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* custodian only Reference314e
* custodian ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* relatesTo.target only Reference314e
* relatesTo.target ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* description only string
* securityLabel only CodeableConcept314e
* content.attachment only Attachment314e
* content.format only Coding314e
* context.encounter only Reference314e
* context.encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* context.event only CodeableConcept314e
* context.period only Period314e
* context.facilityType only CodeableConcept314e
* context.practiceSetting only CodeableConcept314e
* context.sourcePatientInfo only Reference314e
* context.sourcePatientInfo ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* context.related only Reference314e
* context.related ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* context.related ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* context.related ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* context.related ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* context.related ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* context.related ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* context.related ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* context.related ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* context.related ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* context.related ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* context.related ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* context.related ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* context.related ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* context.related ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* context.related ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* context.related ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* context.related ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* context.related ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* context.related ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* context.related ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* context.related ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* context.related ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* context.related ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* context.related ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* context.related ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* context.related ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* context.related ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* context.related ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* context.related ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* context.related ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* context.related ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* context.related ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* context.related ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* context.related ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* context.related ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* context.related ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* context.related ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* context.related ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* context.related ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* context.related ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* context.related ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* context.related ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* context.related ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* context.related ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* context.related ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* context.related ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* context.related ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* context.related ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* context.related ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* context.related ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* context.related ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* context.related ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* context.related ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* context.related ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* context.related ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* context.related ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* context.related ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* context.related ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* meta only Meta314e
