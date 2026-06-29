Profile: Person314e
Parent: Person
Id: person-314e
Title: "314e Person"
Description: """
314e-constrained Person profile derived from FHIR R4 Person.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable. No QI Core or US Core Person profile exists; this profile
constrains the base FHIR R4 Person resource directly.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/person-314e"
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
* name only HumanName314e
* telecom only ContactPoint314e
* address only Address314e
* photo only Attachment314e
* managingOrganization only Reference314e
* managingOrganization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* link.target only Reference314e
* link.target ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* link.target ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* link.target ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* link.target ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/person-314e"
* meta only Meta314e
