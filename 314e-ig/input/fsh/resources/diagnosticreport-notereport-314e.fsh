Profile: DiagnosticReportNoteReport314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-note
Id: diagnosticreport-notereport-314e
Title: "314e DiagnosticReport Note and Report"
Description: """
314e-constrained DiagnosticReport profile for report and note exchange,
derived from QI-Core DiagnosticReport Profile for Report and Note Exchange.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
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
* meta only Meta314e
