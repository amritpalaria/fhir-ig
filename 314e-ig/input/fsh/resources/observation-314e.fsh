Profile: Observation314e
Parent: http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-simple-observation
Id: observation-314e
Title: "314e Observation"
Description: """
314e-constrained Observation profile derived from QI-Core Simple Observation.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/observation-314e"
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

* category 1..*

* category ^short =
    "Operational procedure/service categories"

* category ^definition = """
Broad and optional subcategory classifications used
for workflow, routing, analytics, and operational
grouping of Observation resources.
"""

* category contains broadCategory 1..1
* category[broadCategory] from ProcedureCategoryBroad314eVS (required)

* category[broadCategory] ^short =
    "Required broad procedure/service category"

* category[broadCategory] ^definition = """
Top-level operational classification of the
observation.
"""

* category contains subCategory 0..1
* category[subCategory] from ProcedureCategorySubcategory314eVS (required)

* category[subCategory] ^short =
    "Optional detailed subcategory"

* category[subCategory] ^definition = """
More granular operational sub-classification of the
observation.
"""

* category only CodeableConcept314e

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* basedOn only Reference314e
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* basedOn ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* basedOn ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* basedOn ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* basedOn ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* partOf only Reference314e
* partOf ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* partOf ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* partOf ^type.targetProfile[2] = "http://hl7.org/fhir/StructureDefinition/MedicationStatement"
* partOf ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* partOf ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* partOf ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* code only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"
* focus only Reference314e
* focus ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* focus ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* focus ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* focus ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* focus ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* focus ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* focus ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* focus ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* focus ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* focus ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* focus ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* focus ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* focus ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* focus ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* focus ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* focus ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* focus ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* focus ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* focus ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* focus ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* focus ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* focus ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* focus ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* focus ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* focus ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* focus ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* focus ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* focus ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* focus ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* focus ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* focus ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* focus ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* focus ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* focus ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* focus ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* focus ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* focus ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* focus ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* focus ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* focus ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* focus ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* focus ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* focus ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* focus ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* focus ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* focus ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* focus ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* focus ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* focus ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* focus ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* focus ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* focus ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* focus ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* focus ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* focus ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* focus ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* focus ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* focus ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* effective[x] only dateTime314e or Period314e or Timing314e or instant314e
* issued only instant314e
* performer only Reference314e
* performer ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* performer ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* performer ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* performer ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* performer ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* performer ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* dataAbsentReason only CodeableConcept314e
* interpretation only CodeableConcept314e
* note only Annotation314e
* bodySite only CodeableConcept314e
* method only CodeableConcept314e
* specimen only Reference314e
* specimen ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* device only Reference314e
* device ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/device-314e"
* device ^type.targetProfile[1] = "http://hl7.org/fhir/StructureDefinition/DeviceMetric"
* referenceRange.low only SimpleQuantity314e
* referenceRange.high only SimpleQuantity314e
* referenceRange.type only CodeableConcept314e
* referenceRange.appliesTo only CodeableConcept314e
* referenceRange.age only Range314e
* hasMember only Reference314e
* hasMember ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* hasMember ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* hasMember ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* hasMember ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* hasMember ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* hasMember ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* hasMember ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* derivedFrom only Reference314e
* derivedFrom ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* derivedFrom ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* derivedFrom ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* derivedFrom ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/media-314e"
* derivedFrom ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* component.code only CodeableConcept314e
* component.dataAbsentReason only CodeableConcept314e
* component.interpretation only CodeableConcept314e
* component.referenceRange.low only SimpleQuantity314e
* component.referenceRange.high only SimpleQuantity314e
* component.referenceRange.type only CodeableConcept314e
* component.referenceRange.appliesTo only CodeableConcept314e
* component.referenceRange.age only Range314e
* meta only Meta314e
