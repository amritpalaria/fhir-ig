Profile: DocumentReference314e
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference
Id: documentreference-314e
Title: "314e DocumentReference"
Description: """
314e-constrained DocumentReference profile derived from QI-Core DocumentReference.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS — AUTHOR
// ======================================================

* author.extension contains
    DocumentReferenceAuthorDictationDateTime named dictationDateTime 0..1

* author.extension[dictationDateTime] ^short =
    "Date and time the author dictated the document"

// ======================================================
// 314e EXTENSIONS — CONTEXT
// ======================================================

* context.extension contains
    DocumentReferenceContextDictationDateTime named contextDictationDateTime 0..1

* context.extension[contextDictationDateTime] ^short =
    "Date and time the document content was dictated"

* context.extension contains
    DocumentReferenceContextCosigner named cosigner 0..1

* context.extension[cosigner] ^short =
    "Co-signer of the document"

* context.extension contains
    DocumentReferenceContextReportDateTime named reportDateTime 0..1

* context.extension[reportDateTime] ^short =
    "Date and time the finalized report was released"

// ======================================================
// 314e EXTENSIONS — ROOT
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
* category only CodeableConcept314e
* subject only Reference314e
* date only instant314e
* author only Reference314e
* authenticator only Reference314e
* custodian only Reference314e
* relatesTo.target only Reference314e
* description only string
* securityLabel only CodeableConcept314e
* content.attachment only Attachment314e
* content.format only Coding314e
* context.encounter only Reference314e
* context.event only CodeableConcept314e
* context.period only Period314e
* context.facilityType only CodeableConcept314e
* context.practiceSetting only CodeableConcept314e
* context.sourcePatientInfo only Reference314e
* context.related only Reference314e
* meta only Meta314e
