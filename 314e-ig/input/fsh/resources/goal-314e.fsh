Profile: Goal314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-goal
Id: goal-314e
Title: "314e Goal"
Description: """
314e-constrained Goal profile derived from QI-Core Goal.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/goal-314e"
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
* achievementStatus only CodeableConcept314e
* category only CodeableConcept314e
* priority only CodeableConcept314e
* description only CodeableConcept314e
* subject only Reference314e
* start[x] only date or CodeableConcept314e
* target.measure only CodeableConcept314e
* target.due[x] only date or Duration314e
* statusDate only date
* expressedBy only Reference314e
* addresses only Reference314e
* note only Annotation314e
* outcomeCode only CodeableConcept314e
* outcomeReference only Reference314e
* meta only Meta314e
