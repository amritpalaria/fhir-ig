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
* replaces only Reference314e
* groupIdentifier only Identifier314e
* statusReason only CodeableConcept314e
* category only CodeableConcept314e
* medium only CodeableConcept314e
* subject only Reference314e
* about only Reference314e
* encounter only Reference314e
* occurrence[x] only dateTime314e or Period314e
* authoredOn only dateTime314e
* requester only Reference314e
* recipient only Reference314e
* sender only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* payload.content[x] only string or Attachment314e or Reference314e
* note only Annotation314e
* meta only Meta314e
