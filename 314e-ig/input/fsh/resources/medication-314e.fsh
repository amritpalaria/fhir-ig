Profile: Medication314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medication
Id: medication-314e
Title: "314e Medication"
Description: """
314e-constrained Medication profile derived from QI-Core Medication.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/medication-314e"
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
* code only CodeableConcept314e
* manufacturer only Reference314e
* manufacturer ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* form only CodeableConcept314e
* amount only Ratio314e
* ingredient.item[x] only Reference314e
* ingredient.item[x] ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* ingredient.item[x] ^type.targetProfile[1] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-substance"
* ingredient.strength only Ratio314e
* meta only Meta314e
