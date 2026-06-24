Profile: Media314e
Parent: Media
Id: media-314e
Title: "314e Media"
Description: """
314e-constrained Media profile derived from FHIR R4 Media.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/media-314e"
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
* basedOn only Reference314e
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* partOf only Reference314e
* partOf ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/media-314e"
* type only CodeableConcept314e
* modality only CodeableConcept314e
* view only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* subject ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* subject ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/group-314e"
* subject ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/device-314e"
* subject ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* subject ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/location-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* created[x] only dateTime314e or Period314e
* issued only instant314e
* operator only Reference314e
* operator ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* operator ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* operator ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* operator ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* operator ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* operator ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"
* operator ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* reasonCode only CodeableConcept314e
* bodySite only CodeableConcept314e
* device only Reference314e
* device ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* device ^type.targetProfile[1] = "http://hl7.org/fhir/StructureDefinition/DeviceMetric"
* content only Attachment314e
* note only Annotation314e
* meta only Meta314e
