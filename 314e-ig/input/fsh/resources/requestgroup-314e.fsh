Profile: RequestGroup314e
Parent: RequestGroup
Id: requestgroup-314e
Title: "314e RequestGroup"
Description: """
314e-constrained RequestGroup profile derived from FHIR R4 RequestGroup.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
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
* groupIdentifier only Identifier314e
* basedOn only Reference314e
* basedOn ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* replaces only Reference314e
* replaces ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* code only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* authoredOn only dateTime314e
* author only Reference314e
* author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* reasonReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* reasonReference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* reasonReference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* reasonReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* reasonReference ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* reasonReference ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* reasonReference ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* note only Annotation314e
* action.code only CodeableConcept314e
* action.documentation only RelatedArtifact314e
* action.timing[x] only dateTime314e or Age314e or Period314e or Duration314e or Range314e or Timing314e
* action.participant only Reference314e
* action.participant ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* action.participant ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* action.participant ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* action.participant ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* action.participant ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* action.resource only Reference314e
* action.resource ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* meta only Meta314e
