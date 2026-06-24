Profile: CarePlan314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careplan
Id: careplan-314e
Title: "314e CarePlan"
Description: """
314e-constrained CarePlan profile derived from QI-Core CarePlan.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS — ROOT
// ======================================================

* extension contains
    CarePlanTargetDateTime named targetDateTime 0..1

* extension[targetDateTime] ^short =
    "Target date-time for care plan completion or review"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e EXTENSIONS — ACTIVITY
// ======================================================

* activity.extension contains
    CarePlanActivityTargetDateTime named activityTargetDateTime 0..1

* activity.extension[activityTargetDateTime] ^short =
    "Target date-time for completing this care plan activity"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* basedOn only Reference314e
* basedOn ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* replaces only Reference314e
* replaces ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* partOf only Reference314e
* partOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* category only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* period only Period314e
* author only Reference314e
* author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* author ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* author ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* author ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* author ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* contributor only Reference314e
* contributor ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* contributor ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* contributor ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* contributor ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* contributor ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* contributor ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* contributor ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* careTeam only Reference314e
* careTeam ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* addresses only Reference314e
* addresses ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* addresses ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* addresses ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* supportingInfo only Reference314e
* supportingInfo ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* supportingInfo ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* supportingInfo ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* supportingInfo ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* supportingInfo ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* supportingInfo ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* supportingInfo ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* supportingInfo ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* supportingInfo ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* supportingInfo ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* supportingInfo ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* supportingInfo ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* supportingInfo ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* supportingInfo ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* supportingInfo ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* supportingInfo ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* supportingInfo ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* supportingInfo ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* supportingInfo ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* supportingInfo ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* supportingInfo ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* supportingInfo ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* supportingInfo ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* supportingInfo ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* supportingInfo ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* supportingInfo ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* supportingInfo ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* supportingInfo ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* supportingInfo ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* supportingInfo ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* supportingInfo ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* supportingInfo ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* supportingInfo ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* supportingInfo ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* supportingInfo ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* supportingInfo ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* supportingInfo ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* supportingInfo ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* supportingInfo ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* supportingInfo ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* supportingInfo ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* supportingInfo ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* supportingInfo ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* supportingInfo ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* supportingInfo ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* supportingInfo ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* supportingInfo ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* supportingInfo ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* supportingInfo ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* supportingInfo ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* supportingInfo ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* supportingInfo ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* supportingInfo ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* supportingInfo ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* supportingInfo ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* supportingInfo ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* supportingInfo ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* supportingInfo ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* goal only Reference314e
* goal ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/goal-314e"
* activity.outcomeCodeableConcept only CodeableConcept314e
* activity.outcomeReference only Reference314e
* activity.outcomeReference ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* activity.outcomeReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* activity.outcomeReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* activity.outcomeReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* activity.outcomeReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* activity.outcomeReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* activity.outcomeReference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* activity.outcomeReference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* activity.outcomeReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* activity.outcomeReference ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* activity.outcomeReference ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* activity.outcomeReference ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* activity.outcomeReference ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* activity.outcomeReference ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* activity.outcomeReference ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* activity.outcomeReference ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* activity.outcomeReference ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* activity.outcomeReference ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* activity.outcomeReference ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* activity.outcomeReference ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* activity.outcomeReference ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* activity.outcomeReference ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* activity.outcomeReference ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* activity.outcomeReference ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* activity.outcomeReference ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* activity.outcomeReference ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* activity.outcomeReference ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* activity.outcomeReference ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* activity.outcomeReference ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* activity.outcomeReference ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* activity.outcomeReference ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* activity.outcomeReference ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* activity.outcomeReference ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* activity.outcomeReference ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* activity.outcomeReference ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* activity.outcomeReference ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* activity.outcomeReference ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* activity.outcomeReference ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* activity.outcomeReference ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* activity.outcomeReference ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* activity.outcomeReference ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* activity.outcomeReference ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* activity.outcomeReference ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* activity.outcomeReference ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* activity.outcomeReference ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* activity.outcomeReference ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* activity.outcomeReference ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* activity.outcomeReference ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* activity.outcomeReference ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* activity.outcomeReference ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* activity.outcomeReference ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* activity.outcomeReference ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* activity.outcomeReference ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* activity.outcomeReference ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* activity.outcomeReference ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* activity.outcomeReference ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* activity.outcomeReference ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* activity.outcomeReference ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* activity.progress only Annotation314e
* activity.reference only Reference314e
* activity.reference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* activity.reference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* activity.reference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* activity.reference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* activity.reference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* activity.reference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/task-314e"
* activity.reference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* activity.reference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* activity.reference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* activity.detail.kind only code
* activity.detail.instantiatesCanonical only canonical
* activity.detail.code only CodeableConcept314e
* activity.detail.reasonCode only CodeableConcept314e
* activity.detail.reasonReference only Reference314e
* activity.detail.reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* activity.detail.reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* activity.detail.reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* activity.detail.reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* activity.detail.reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* activity.detail.reasonReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* activity.detail.reasonReference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* activity.detail.reasonReference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* activity.detail.reasonReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* activity.detail.reasonReference ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* activity.detail.reasonReference ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* activity.detail.reasonReference ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* activity.detail.goal only Reference314e
* activity.detail.goal ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/goal-314e"
* activity.detail.statusReason only CodeableConcept314e
* activity.detail.location only Reference314e
* activity.detail.location ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* activity.detail.performer only Reference314e
* activity.detail.performer ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* activity.detail.performer ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* activity.detail.performer ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* activity.detail.performer ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* activity.detail.performer ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* activity.detail.performer ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* activity.detail.performer ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* activity.detail.performer ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/device-314e"
* activity.detail.product[x] only CodeableConcept314e or Reference314e
* activity.detail.dailyAmount only SimpleQuantity314e
* activity.detail.quantity only SimpleQuantity314e
* activity.detail.scheduled[x] only Timing314e or Period314e or string
* note only Annotation314e
* meta only Meta314e
