Profile: RelatedPerson314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-relatedperson
Id: relatedperson-314e
Title: "314e RelatedPerson"
Description: """
314e-constrained RelatedPerson profile derived from QI-Core RelatedPerson.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    RelatedPersonEncounter named encounter 0..*

* extension[encounter] ^short =
    "Encounter associated with the related person"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* patient only Reference314e
* relationship only CodeableConcept314e
* name only HumanName314e
* telecom only ContactPoint314e
* address only Address314e
* photo only Attachment314e
* period only Period314e
* communication.language only CodeableConcept314e
