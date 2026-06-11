Profile: Immunization314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunization
Id: immunization-314e
Title: "314e Immunization"
Description: """
314e-constrained Immunization profile derived from QI-Core Immunization.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceLastEditedUser named lastEditedUser 0..1

* extension[lastEditedUser] ^short =
    "Person who last edited this resource"

* extension contains
    ResourceEpisode named episode 0..1

* extension[episode] ^short =
    "Associated episode of care"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* vaccineCode only CodeableConcept314e
* patient only Reference314e
* encounter only Reference314e
* occurrence[x] only dateTime314e or string
* recorded only dateTime314e
* reportOrigin only CodeableConcept314e
* location only Reference314e
* manufacturer only Reference314e
* site only CodeableConcept314e
* route only CodeableConcept314e
* doseQuantity only SimpleQuantity314e
* performer.function only CodeableConcept314e
* performer.actor only Reference314e
* note only Annotation314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* subpotentReason only CodeableConcept314e
* education.reference only uri
* reaction.date only dateTime314e
* reaction.detail only Reference314e
* protocolApplied.authority only Reference314e
* protocolApplied.targetDisease only CodeableConcept314e
* protocolApplied.doseNumber[x] only positiveInt or string
* protocolApplied.seriesDoses[x] only positiveInt or string
* meta only Meta314e
