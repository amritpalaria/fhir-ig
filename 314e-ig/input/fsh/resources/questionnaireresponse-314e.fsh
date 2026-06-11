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
* partOf only Reference314e
* subject only Reference314e
* encounter only Reference314e
* authored only dateTime314e
* author only Reference314e
* source only Reference314e
* meta only Meta314e
