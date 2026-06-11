Profile: AllergyIntolerance314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-allergyintolerance
Id: allergyintolerance-314e
Title: "314e AllergyIntolerance"
Description: """
314e-constrained AllergyIntolerance profile derived from QI-Core AllergyIntolerance.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
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
* type only code
* category only code
* criticality only code
* code only CodeableConcept314e
* patient only Reference314e
* encounter only Reference314e
* onset[x] only dateTime314e or Age314e or Period314e or Range314e
* recordedDate only dateTime314e
* recorder only Reference314e
* asserter only Reference314e
* lastOccurrence only dateTime314e
* note only Annotation314e
* reaction.substance only CodeableConcept314e
* reaction.manifestation only CodeableConcept314e
* reaction.onset only dateTime314e
* reaction.severity only code
* reaction.exposureRoute only CodeableConcept314e
* reaction.note only Annotation314e
* meta only Meta314e
