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
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* start[x] only date or CodeableConcept314e
* target.measure only CodeableConcept314e
* target.due[x] only date or Duration314e
* statusDate only date
* expressedBy only Reference314e
* expressedBy ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* expressedBy ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* expressedBy ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* expressedBy ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* addresses only Reference314e
* addresses ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* addresses ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* addresses ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* addresses ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* addresses ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* addresses ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* addresses ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* addresses ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* addresses ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* addresses ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* note only Annotation314e
* outcomeCode only CodeableConcept314e
* outcomeReference only Reference314e
* outcomeReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* outcomeReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* outcomeReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* outcomeReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* outcomeReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* meta only Meta314e
