Profile: Contract314e
Parent: Contract
Id: contract-314e
Title: "314e Contract"
Description: """
314e-constrained Contract profile derived from FHIR R4 Contract.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/contract-314e"
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
* contentDerivative only CodeableConcept314e
* issued only dateTime314e
* applies only Period314e
* expirationType only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* authority only Reference314e
* authority ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* domain only Reference314e
* domain ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* site only Reference314e
* site ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* type only CodeableConcept314e
* subType only CodeableConcept314e
* author only Reference314e
* author ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* author ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* author ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* author ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* scope only CodeableConcept314e
* signer.type only Coding314e
* signer.party only Reference314e
* signer.party ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* signer.party ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* signer.party ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* signer.party ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* signer.party ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* signer.signature only Signature314e
* term.issued only dateTime314e
* term.applies only Period314e
* term.type only CodeableConcept314e
* term.subType only CodeableConcept314e
* term.topic[x] only CodeableConcept314e or Reference314e
* term.topic[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* term.action.type only CodeableConcept314e
* term.action.subject.reference only Reference314e
* term.action.subject.reference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* term.action.subject.reference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* term.action.subject.reference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* term.action.subject.reference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* term.action.subject.reference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* term.action.subject.reference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/group-314e"
* term.action.subject.reference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* term.action.subject.role only CodeableConcept314e
* term.action.intent only CodeableConcept314e
* term.action.linkId only string
* term.action.status only CodeableConcept314e
* term.action.context only Reference314e
* term.action.context ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* term.action.context ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* term.action.requester only Reference314e
* term.action.requester ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* term.action.requester ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* term.action.requester ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* term.action.requester ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* term.action.requester ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* term.action.requester ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/group-314e"
* term.action.requester ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* term.action.requesterLinkId only string
* term.action.performerType only CodeableConcept314e
* term.action.performerRole only CodeableConcept314e
* term.action.performer only Reference314e
* term.action.performer ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* term.action.performer ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* term.action.performer ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* term.action.performer ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* term.action.performer ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* term.action.performer ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* term.action.performer ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* term.action.performer ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* term.action.performer ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/location-314e"
* term.action.reasonCode only CodeableConcept314e
* term.action.reasonReference only Reference314e
* term.action.reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* term.action.reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* term.action.reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* term.action.reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* term.action.reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* term.action.reasonReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* term.action.reasonReference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* term.action.reasonReference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* term.action.reasonReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* term.action.reasonReference ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* term.action.reasonReference ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* term.action.reasonReference ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* term.action.reasonReference ^type.targetProfile[12] = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* term.action.reasonReference ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* term.action.note only Annotation314e
* term.asset.period only Period314e
* term.asset.valuedItem.effectiveTime only dateTime314e
* term.asset.valuedItem.quantity only SimpleQuantity314e
* term.asset.valuedItem.unitPrice only Money314e
* term.asset.valuedItem.factor only decimal314e
* term.asset.valuedItem.points only decimal314e
* term.asset.valuedItem.net only Money314e
* term.asset.valuedItem.paymentDate only dateTime314e
* friendly.content[x] only Attachment314e or Reference314e
* friendly.content[x] ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Composition"
* friendly.content[x] ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* friendly.content[x] ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* legal.content[x] only Attachment314e or Reference314e
* legal.content[x] ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Composition"
* legal.content[x] ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* legal.content[x] ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* rule.content[x] only Attachment314e or Reference314e
* rule.content[x] ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* meta only Meta314e
