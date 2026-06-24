Profile: ImagingStudy314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-imagingstudy
Id: imagingstudy-314e
Title: "314e ImagingStudy"
Description: """
314e-constrained ImagingStudy profile derived from QI-Core ImagingStudy.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
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
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* started only dateTime314e
* basedOn only Reference314e
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* referrer only Reference314e
* referrer ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* referrer ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* interpreter only Reference314e
* interpreter ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* interpreter ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* endpoint only Reference314e
* endpoint ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* procedureReference only Reference314e
* procedureReference ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* procedureCode only CodeableConcept314e
* location only Reference314e
* location ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/location-314e"
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/media-314e"
* note only Annotation314e
* series.modality only Coding314e
* series.endpoint only Reference314e
* series.endpoint ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* series.bodySite only Coding314e
* series.laterality only Coding314e
* series.instance.sopClass only Coding314e
* series.specimen only Reference314e
* series.specimen ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* series.started only dateTime314e
* series.performer.function only CodeableConcept314e
* series.performer.actor only Reference314e
* series.performer.actor ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* series.performer.actor ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* series.performer.actor ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* series.performer.actor ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* series.performer.actor ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* series.performer.actor ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* series.performer.actor ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* meta only Meta314e
