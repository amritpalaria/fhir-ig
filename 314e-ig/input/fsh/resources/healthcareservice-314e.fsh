Profile: HealthcareService314e
Parent: HealthcareService
Id: healthcareservice-314e
Title: "314e HealthcareService"
Description: """
314e-constrained HealthcareService profile derived from FHIR R4 HealthcareService.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
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
* providedBy only Reference314e
* providedBy ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* category only CodeableConcept314e
* type only CodeableConcept314e
* specialty only CodeableConcept314e
* location only Reference314e
* location ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* telecom only ContactPoint314e
* coverageArea only Reference314e
* coverageArea ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* serviceProvisionCode only CodeableConcept314e
* eligibility.code only CodeableConcept314e
* program only CodeableConcept314e
* characteristic only CodeableConcept314e
* communication only CodeableConcept314e
* referralMethod only CodeableConcept314e
* availableTime.availableStartTime only time314e
* availableTime.availableEndTime only time314e
* endpoint only Reference314e
* endpoint ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* meta only Meta314e
