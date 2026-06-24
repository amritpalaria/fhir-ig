Profile: CommunicationRequest314e
Parent: CommunicationRequest
Id: communicationrequest-314e
Title: "314e CommunicationRequest"
Description: """
314e-constrained CommunicationRequest profile derived from FHIR R4 CommunicationRequest.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
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
* basedOn ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* replaces only Reference314e
* replaces ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* groupIdentifier only Identifier314e
* statusReason only CodeableConcept314e
* category only CodeableConcept314e
* medium only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* about only Reference314e
* about ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* occurrence[x] only dateTime314e or Period314e
* authoredOn only dateTime314e
* requester only Reference314e
* requester ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* requester ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* requester ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* requester ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* requester ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* requester ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* recipient only Reference314e
* recipient ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* recipient ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* recipient ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* recipient ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* recipient ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* recipient ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* recipient ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/group-314e"
* recipient ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* recipient ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* sender only Reference314e
* sender ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* sender ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* sender ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* sender ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* sender ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* sender ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* sender ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
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
* payload.content[x] only string or Attachment314e or Reference314e
* payload.contentReference ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* note only Annotation314e
* meta only Meta314e
