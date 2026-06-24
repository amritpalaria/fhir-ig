Profile: QuestionnaireResponse314e
Parent: QuestionnaireResponse
Id: questionnaireresponse-314e
Title: "314e QuestionnaireResponse"
Description: """
314e-constrained QuestionnaireResponse profile derived from FHIR R4 QuestionnaireResponse.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
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
* partOf ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* partOf ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* partOf ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* partOf ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* partOf ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* partOf ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* subject ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/device-314e"
* subject ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/location-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* authored only dateTime314e
* author only Reference314e
* author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* author ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* author ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* author ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* source only Reference314e
* source ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* source ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* source ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* source ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* meta only Meta314e
