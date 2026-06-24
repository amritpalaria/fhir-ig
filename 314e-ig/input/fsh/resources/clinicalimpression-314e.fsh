Profile: ClinicalImpression314e
Parent: ClinicalImpression
Id: clinicalimpression-314e
Title: "314e ClinicalImpression"
Description: """
314e-constrained ClinicalImpression profile derived from FHIR R4 ClinicalImpression.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
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
* code only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* effective[x] only dateTime314e or Period314e
* date only dateTime314e
* assessor only Reference314e
* assessor ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* assessor ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* previous only Reference314e
* previous ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* problem only Reference314e
* problem ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* problem ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* problem ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* problem ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* investigation.code only CodeableConcept314e
* investigation.item only Reference314e
* investigation.item ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* investigation.item ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* investigation.item ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* investigation.item ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* investigation.item ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* investigation.item ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* investigation.item ^type.targetProfile[6] = "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory"
* investigation.item ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* investigation.item ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* investigation.item ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* investigation.item ^type.targetProfile[10] = "http://hl7.org/fhir/StructureDefinition/RiskAssessment"
* investigation.item ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* investigation.item ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/media-314e"
* finding.itemCodeableConcept only CodeableConcept314e
* finding.itemReference only Reference314e
* finding.itemReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* finding.itemReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* finding.itemReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* finding.itemReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* finding.itemReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* finding.itemReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* finding.itemReference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* finding.itemReference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* finding.itemReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/media-314e"
* prognosisCodeableConcept only CodeableConcept314e
* prognosisReference only Reference314e
* prognosisReference ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/RiskAssessment"
* supportingInfo only Reference314e
* supportingInfo ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* note only Annotation314e
* meta only Meta314e
