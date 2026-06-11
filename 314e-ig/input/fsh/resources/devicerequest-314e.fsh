Profile: DeviceRequest314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-devicerequest
Id: devicerequest-314e
Title: "314e DeviceRequest"
Description: """
314e-constrained DeviceRequest profile derived from QI-Core DeviceRequest.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
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
* priorRequest only Reference314e
* groupIdentifier only Identifier314e
* code[x] only Reference314e or CodeableConcept314e
* parameter.code only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* occurrence[x] only dateTime314e or Period314e or Timing314e
* authoredOn only dateTime314e
* requester only Reference314e
* performerType only CodeableConcept314e
* performer only Reference314e
* reasonCode only CodeableConcept314e
* reasonReference only Reference314e
* insurance only Reference314e
* supportingInfo only Reference314e
* note only Annotation314e
* relevantHistory only Reference314e
* meta only Meta314e
