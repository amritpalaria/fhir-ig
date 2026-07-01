Profile: ImmunizationEvaluation314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationevaluation
Id: immunizationevaluation-314e
Title: "314e ImmunizationEvaluation"
Description: """
314e-constrained ImmunizationEvaluation profile derived from QI-Core ImmunizationEvaluation.

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
* patient ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* date only dateTime314e
* authority only Reference314e
* authority ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* targetDisease only CodeableConcept314e
* immunizationEvent only Reference314e
* immunizationEvent ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* doseStatus only CodeableConcept314e
* doseStatusReason only CodeableConcept314e
* meta only Meta314e
