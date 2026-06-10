Profile: EpisodeOfCare314e
Parent: http://hl7.org/fhir/StructureDefinition/EpisodeOfCare
Id: episodeofcare-314e
Title: "314e Episode Of Care"
Description: """
314e-constrained EpisodeOfCare profile derived from QI-Core EpisodeOfCare.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
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
* diagnosis.condition only Reference314e
* diagnosis.role only CodeableConcept314e
* patient only Reference314e
* managingOrganization only Reference314e
* period only Period314e
* referralRequest only Reference314e
* careManager only Reference314e
* team only Reference314e
* account only Reference314e
