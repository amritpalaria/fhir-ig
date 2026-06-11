Profile: ImmunizationEvaluation314e
Parent: ImmunizationEvaluation
Id: immunizationevaluation-314e
Title: "314e ImmunizationEvaluation"
Description: """
314e-constrained ImmunizationEvaluation profile derived from FHIR R4 ImmunizationEvaluation.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
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
* patient only Reference314e
* date only dateTime314e
* authority only Reference314e
* targetDisease only CodeableConcept314e
* immunizationEvent only Reference314e
* doseStatus only CodeableConcept314e
* doseStatusReason only CodeableConcept314e
* meta only Meta314e
