Profile: Condition314e
Parent: Condition
Id: condition-314e
Title: "314e Condition"
Description: """
314e-constrained Condition profile derived from R4B Condition.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/condition-314e"
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
* clinicalStatus only CodeableConcept314e
* verificationStatus only CodeableConcept314e
* category only CodeableConcept314e
* severity only CodeableConcept314e
* code only CodeableConcept314e
* bodySite only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* onset[x] only dateTime314e or Age314e or Period314e or Range314e or string
* abatement[x] only dateTime314e or Age314e or Period314e or Range314e or string
* recorder only Reference314e
* asserter only Reference314e
* stage.summary only CodeableConcept314e
* stage.assessment only Reference314e
* stage.type only CodeableConcept314e
* evidence.code only CodeableConcept314e
* evidence.detail only Reference314e
* note only Annotation314e
* meta only Meta314e
