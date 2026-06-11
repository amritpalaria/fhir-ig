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
* authority only Reference314e
* domain only Reference314e
* site only Reference314e
* type only CodeableConcept314e
* subType only CodeableConcept314e
* author only Reference314e
* scope only CodeableConcept314e
* signer.type only Coding314e
* signer.party only Reference314e
* signer.signature only Signature314e
* term.issued only dateTime314e
* term.applies only Period314e
* term.type only CodeableConcept314e
* term.subType only CodeableConcept314e
* term.topic[x] only CodeableConcept314e or Reference314e
* term.action.type only CodeableConcept314e
* term.action.subject.reference only Reference314e
* term.action.subject.role only CodeableConcept314e
* term.action.intent only CodeableConcept314e
* term.action.linkId only string
* term.action.status only CodeableConcept314e
* term.action.context only Reference314e
* term.action.requester only Reference314e
* term.action.requesterLinkId only string
* term.action.performerType only CodeableConcept314e
* term.action.performerRole only CodeableConcept314e
* term.action.performer only Reference314e
* term.action.reasonCode only CodeableConcept314e
* term.action.reasonReference only Reference314e
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
* legal.content[x] only Attachment314e or Reference314e
* rule.content[x] only Attachment314e or Reference314e
* meta only Meta314e
