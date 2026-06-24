Profile: Group314e
Parent: Group
Id: group-314e
Title: "314e Group"
Description: """
314e-constrained Group profile derived from FHIR R4 Group.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/group-314e"
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
* managingEntity only Reference314e
* managingEntity ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* managingEntity ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* managingEntity ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* managingEntity ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* characteristic.code only CodeableConcept314e
* characteristic.period only Period314e
* member.entity only Reference314e
* member.entity ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* member.entity ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* member.entity ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* member.entity ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/device-314e"
* member.entity ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* member.entity ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* member.entity ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/group-314e"
* member.period only Period314e
* meta only Meta314e
