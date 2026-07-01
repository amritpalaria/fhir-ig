Profile: EpisodeOfCare314e
Parent: http://hl7.org/fhir/StructureDefinition/EpisodeOfCare
Id: episodeofcare-314e
Title: "314e Episode Of Care"
Description: """
314e-constrained EpisodeOfCare profile derived from FHIR R4 EpisodeOfCare.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
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
* type only CodeableConcept314e
* diagnosis.condition only Reference314e
* diagnosis.condition ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* diagnosis.condition ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* diagnosis.condition ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* diagnosis.role only CodeableConcept314e
* patient only Reference314e
* patient ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* managingOrganization only Reference314e
* managingOrganization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* period only Period314e
* referralRequest only Reference314e
* referralRequest ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* careManager only Reference314e
* careManager ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* careManager ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* team only Reference314e
* team ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* account only Reference314e
* account ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/account-314e"
* meta only Meta314e
