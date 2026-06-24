Profile: CareTeam314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careteam
Id: careteam-314e
Title: "314e CareTeam"
Description: """
314e-constrained CareTeam profile derived from QI-Core CareTeam.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/careteam-314e"
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
* category only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* period only Period314e
* participant.role only CodeableConcept314e
* participant.member only Reference314e
* participant.member ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* participant.member ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* participant.member ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* participant.member ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* participant.member ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* participant.member ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* participant.onBehalfOf only Reference314e
* participant.onBehalfOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* participant.period only Period314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* managingOrganization only Reference314e
* managingOrganization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* telecom only ContactPoint314e
* note only Annotation314e
* meta only Meta314e
