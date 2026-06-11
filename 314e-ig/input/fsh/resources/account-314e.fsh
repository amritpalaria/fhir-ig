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
* servicePeriod only Period314e
* coverage.coverage only Reference314e
* owner only Reference314e
* guarantor.party only Reference314e
* guarantor.period only Period314e
* partOf only Reference314e
* meta only Meta314e
