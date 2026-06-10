Profile: DiagnosticReport314e
Parent: DiagnosticReport
Id: diagnosticreport-314e
Title: "314e DiagnosticReport"
Description: """
314e-constrained DiagnosticReport profile derived from R4B DiagnosticReport.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
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
* category only CodeableConcept314e
* code only CodeableConcept314e
* subject only Reference314e
* encounter only Reference314e
* effective[x] only dateTime314e or Period314e
* issued only instant314e
* performer only Reference314e
* resultsInterpreter only Reference314e
* specimen only Reference314e
* result only Reference314e
* imagingStudy only Reference314e
* media.link only Reference314e
* conclusionCode only CodeableConcept314e
* presentedForm only Attachment314e
