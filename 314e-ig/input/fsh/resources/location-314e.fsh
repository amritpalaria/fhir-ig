Profile: Location314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location
Id: location-314e
Title: "314e Location"
Description: """
314e-constrained Location profile derived from QI-Core Location.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/location-314e"
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
* type only CodeableConcept314e
* telecom only ContactPoint314e
* address only Address314e
* physicalType only CodeableConcept314e
* managingOrganization only Reference314e
* managingOrganization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* partOf only Reference314e
* partOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* endpoint only Reference314e
* endpoint ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* meta only Meta314e
