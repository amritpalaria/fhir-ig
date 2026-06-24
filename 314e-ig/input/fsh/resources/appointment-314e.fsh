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
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* reasonReference ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* reasonReference ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* reasonReference ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* reasonReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* reasonReference ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* start only instant314e
* end only instant314e
* created only dateTime314e
* basedOn only Reference314e
* basedOn ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* participant.type only CodeableConcept314e
* participant.actor only Reference314e
* participant.actor ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* participant.actor ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* participant.actor ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* participant.actor ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* participant.actor ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* participant.actor ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* participant.actor ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* participant.actor ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/location-314e"
* participant.period only Period314e
* requestedPeriod only Period314e
* meta only Meta314e
