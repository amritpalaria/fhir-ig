Profile: Endpoint314e
Parent: Endpoint
Id: endpoint-314e
Title: "314e Endpoint"
Description: """
314e-constrained Endpoint profile derived from FHIR R4 Endpoint.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
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
* connectionType only Coding314e
* managingOrganization only Reference314e
* managingOrganization ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* contact only ContactPoint314e
* period only Period314e
* payloadType only CodeableConcept314e
* meta only Meta314e
