Profile: Substance314e
Parent: Substance
Id: substance-314e
Title: "314e Substance"
Description: """
314e-constrained Substance profile derived from FHIR R4 Substance.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/substance-314e"
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
* category only CodeableConcept314e
* code only CodeableConcept314e
* instance.identifier only Identifier314e
* instance.expiry only dateTime314e
* instance.quantity only SimpleQuantity314e
* ingredient.quantity only Ratio314e
* ingredient.substance[x] only CodeableConcept314e or Reference314e
* meta only Meta314e
