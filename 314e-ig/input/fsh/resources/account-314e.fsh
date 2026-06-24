Profile: Account314e
Parent: Account
Id: account-314e
Title: "314e Account"
Description: """
314e-constrained Account profile derived from FHIR R4 Account.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/account-314e"
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
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/device-314e"
* subject ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* subject ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/location-314e"
* subject ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* subject ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* servicePeriod only Period314e
* coverage.coverage only Reference314e
* coverage.coverage ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* owner only Reference314e
* owner ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/organization-314e"
* guarantor.party only Reference314e
* guarantor.party ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* guarantor.party ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* guarantor.party ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* guarantor.period only Period314e
* partOf only Reference314e
* partOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/account-314e"
* meta only Meta314e
