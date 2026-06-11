Profile: Appointment314e
Parent: Appointment
Id: appointment-314e
Title: "314e Appointment"
Description: """
314e-constrained Appointment profile derived from FHIR R4 Appointment.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/appointment-314e"
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
* cancelationReason only CodeableConcept314e
* serviceCategory only CodeableConcept314e
* serviceType only CodeableConcept314e
* specialty only CodeableConcept314e
* appointmentType only CodeableConcept314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* start only instant314e
* end only instant314e
* created only dateTime314e
* basedOn only Reference314e
* participant.type only CodeableConcept314e
* participant.actor only Reference314e
* participant.period only Period314e
* requestedPeriod only Period314e
* meta only Meta314e
