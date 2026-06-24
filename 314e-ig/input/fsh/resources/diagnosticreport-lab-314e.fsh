Profile: DiagnosticReportLab314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-lab
Id: diagnosticreport-lab-314e
Title: "314e DiagnosticReport Laboratory Results"
Description: """
314e-constrained DiagnosticReport profile for laboratory results reporting,
derived from QI-Core DiagnosticReport Profile for Laboratory Results Reporting.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

// ======================================================
// CATEGORY
// ======================================================

* category contains subCategory 0..1
* category[subCategory] from ProcedureCategorySubcategory314eVS (required)

* category[subCategory] ^short =
    "Optional detailed subcategory"

* category[subCategory] ^definition = """
More granular operational sub-classification of the
diagnostic report.
"""

* category only CodeableConcept314e

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* basedOn only Reference314e
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* basedOn ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* basedOn ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* basedOn ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* code only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* effective[x] only dateTime314e or Period314e
* issued only instant314e
* performer only Reference314e
* performer ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* performer ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* performer ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* resultsInterpreter only Reference314e
* resultsInterpreter ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* resultsInterpreter ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* resultsInterpreter ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* resultsInterpreter ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* specimen only Reference314e
* specimen ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* result only Reference314e
* result ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* result ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* result ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* result ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* imagingStudy only Reference314e
* imagingStudy ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* media.link only Reference314e
* media.link ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/media-314e"
* conclusionCode only CodeableConcept314e
* presentedForm ^slicing.discriminator.type = #value
* presentedForm ^slicing.discriminator.path = "title"
* presentedForm ^slicing.rules = #open
* presentedForm contains
    report 0..* and
    notes 0..*
* presentedForm[report] only Attachment314e
* presentedForm[report] ^short = "Entire report as issued"
* presentedForm[notes] only Attachment314e
* presentedForm[notes].title = "Note"
* presentedForm[notes] ^short = "Annotation/ notes associated with the diagnostic report"
* meta only Meta314e
