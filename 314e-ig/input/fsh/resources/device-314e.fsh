Profile: Device314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-device
Id: device-314e
Title: "314e Device"
Description: """
314e-constrained Device profile derived from QI-Core Device.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/device-314e"
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
* specialization.systemType only CodeableConcept314e
* property.type only CodeableConcept314e
* patient only Reference314e
* owner only Reference314e
* contact only ContactPoint314e
* location only Reference314e
* note only Annotation314e
* safety only CodeableConcept314e
* parent only Reference314e
* meta only Meta314e
