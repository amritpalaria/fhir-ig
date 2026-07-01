Profile: SupplyRequest314e
Parent: SupplyRequest
Id: supplyrequest-314e
Title: "314e SupplyRequest"
Description: """
314e-constrained SupplyRequest profile derived from FHIR R4 SupplyRequest.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/supplyrequest-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceCosigner named cosigner 0..1

* extension[cosigner] ^short =
    "Individual who co-signed or verified this supply request"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* category only CodeableConcept314e

* item[x] only CodeableConcept314e or Reference314e
* itemReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* itemReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* itemReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/device-314e"

* quantity only Quantity314e

* parameter.code only CodeableConcept314e
* parameter.value[x] only
    CodeableConcept314e or
    Quantity314e or
    Range314e or
    boolean

* occurrence[x] only
    dateTime314e or
    Period314e or
    Timing314e

* authoredOn only dateTime314e

* requester only Reference314e
* requester ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* requester ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* requester ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* requester ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* requester ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* requester ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"

* supplier only Reference314e
* supplier ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* supplier ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"

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
* reasonReference ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* reasonReference ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* reasonReference ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* reasonReference ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"

* deliverFrom only Reference314e
* deliverFrom ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* deliverFrom ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/location-314e"

* deliverTo only Reference314e
* deliverTo ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* deliverTo ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/location-314e"
* deliverTo ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"

* meta only Meta314e
