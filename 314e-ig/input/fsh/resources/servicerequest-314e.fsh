Profile: ServiceRequest314e
Parent: QICoreServiceRequest
Id: servicerequest-314e
Title: "314e ServiceRequest"
Description: """
A 314e-constrained ServiceRequest profile derived from
QI-Core ServiceRequest.

This profile requires classification of the requested service
using standardized high-level service categories and uses
314e datatype profiles where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"

* ^purpose = """
Provides a standardized and semantically categorized ServiceRequest
profile for clinical workflows.
"""

// ======================================================
// INTERNAL IDENTIFIER SLICE
// ======================================================
* identifier 0..*

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains internalIdentifier 0..*
* identifier[internalIdentifier] only Identifier314e

* identifier[internalIdentifier] ^short =
    "Customer-specific internal identifier whose system SHALL follow the mandated 314e naming convention"

* identifier[internalIdentifier] ^definition = """
Customer-specific or internally defined identifier
used within local workflows, source systems,
or operational environments.

Identifier.system SHALL follow the naming convention:

[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier

Example of Identifier.system for internal identifier:
acme-cerner-ServiceRequest-imaging-identifier-AccessionNumber-InternalIdentifier
"""

* identifier[internalIdentifier].system ^example[0].label =
    "Internal ServiceRequest accession identifier system"

* identifier[internalIdentifier].system ^example[0].valueUri =
    "acme-cerner-ServiceRequest-imaging-identifier-AccessionNumber-InternalIdentifier"

* identifier only Identifier314e

// ======================================================
// CATEGORY
// ======================================================

// One required broad operational category
* category 1..*

* category ^short =
    "Operational procedure/service categories"

* category ^definition = """
Broad and optional subcategory classifications used
for workflow, routing, analytics, and operational
grouping of ServiceRequest resources.
"""

// Broad category slice
* category contains broadCategory 1..1
* category[broadCategory] from ProcedureCategoryBroad314eVS (required)

* category[broadCategory] ^short =
    "Required broad procedure/service category"

* category[broadCategory] ^definition = """
Top-level operational classification of the requested
service or procedure.
"""

// Optional subcategory slice
* category contains subCategory 0..1
* category[subCategory] from ProcedureCategorySubcategory314eVS (required)

* category[subCategory] ^short =
    "Optional detailed subcategory"

* category[subCategory] ^definition = """
More granular operational sub-classification of the
requested service or procedure.
"""

* category only CodeableConcept314e

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

// References
* subject only Reference314e
* subject ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/patient-314e"

* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"

* requester only Reference314e
* requester ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* requester ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* requester ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* requester ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* requester ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* requester ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/device-314e"

* performer only Reference314e
* performer ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* performer ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* performer ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* performer ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* performer ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* performer ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* performer ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/device-314e"
* performer ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"

* insurance only Reference314e
* insurance ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/coverage-314e"

* specimen only Reference314e
* specimen ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/specimen-314e"

* supportingInfo only Reference314e
* supportingInfo ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/Resource"
* supportingInfo ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/account-314e"
* supportingInfo ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"
* supportingInfo ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/appointment-314e"
* supportingInfo ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* supportingInfo ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/careteam-314e"
* supportingInfo ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* supportingInfo ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/communicationrequest-314e"
* supportingInfo ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/condition-314e"
* supportingInfo ^type.targetProfile[9] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* supportingInfo ^type.targetProfile[10] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* supportingInfo ^type.targetProfile[11] = "http://314e.com/fhir/StructureDefinition/contract-314e"
* supportingInfo ^type.targetProfile[12] = "http://314e.com/fhir/StructureDefinition/coverage-314e"
* supportingInfo ^type.targetProfile[13] = "http://314e.com/fhir/StructureDefinition/detectedissue-314e"
* supportingInfo ^type.targetProfile[14] = "http://314e.com/fhir/StructureDefinition/device-314e"
* supportingInfo ^type.targetProfile[15] = "http://314e.com/fhir/StructureDefinition/devicerequest-314e"
* supportingInfo ^type.targetProfile[16] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* supportingInfo ^type.targetProfile[17] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* supportingInfo ^type.targetProfile[18] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* supportingInfo ^type.targetProfile[19] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"
* supportingInfo ^type.targetProfile[20] = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* supportingInfo ^type.targetProfile[21] = "http://314e.com/fhir/StructureDefinition/endpoint-314e"
* supportingInfo ^type.targetProfile[22] = "http://314e.com/fhir/StructureDefinition/episodeofcare-314e"
* supportingInfo ^type.targetProfile[23] = "http://314e.com/fhir/StructureDefinition/goal-314e"
* supportingInfo ^type.targetProfile[24] = "http://314e.com/fhir/StructureDefinition/group-314e"
* supportingInfo ^type.targetProfile[25] = "http://314e.com/fhir/StructureDefinition/healthcareservice-314e"
* supportingInfo ^type.targetProfile[26] = "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"
* supportingInfo ^type.targetProfile[27] = "http://314e.com/fhir/StructureDefinition/immunization-314e"
* supportingInfo ^type.targetProfile[28] = "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"
* supportingInfo ^type.targetProfile[29] = "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e"
* supportingInfo ^type.targetProfile[30] = "http://314e.com/fhir/StructureDefinition/location-314e"
* supportingInfo ^type.targetProfile[31] = "http://314e.com/fhir/StructureDefinition/media-314e"
* supportingInfo ^type.targetProfile[32] = "http://314e.com/fhir/StructureDefinition/medication-314e"
* supportingInfo ^type.targetProfile[33] = "http://314e.com/fhir/StructureDefinition/medicationadministration-314e"
* supportingInfo ^type.targetProfile[34] = "http://314e.com/fhir/StructureDefinition/medicationdispense-314e"
* supportingInfo ^type.targetProfile[35] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"
* supportingInfo ^type.targetProfile[36] = "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"
* supportingInfo ^type.targetProfile[37] = "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"
* supportingInfo ^type.targetProfile[38] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* supportingInfo ^type.targetProfile[39] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* supportingInfo ^type.targetProfile[40] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* supportingInfo ^type.targetProfile[41] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* supportingInfo ^type.targetProfile[42] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* supportingInfo ^type.targetProfile[43] = "http://314e.com/fhir/StructureDefinition/organization-314e"
* supportingInfo ^type.targetProfile[44] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* supportingInfo ^type.targetProfile[45] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* supportingInfo ^type.targetProfile[46] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* supportingInfo ^type.targetProfile[47] = "http://314e.com/fhir/StructureDefinition/procedure-314e"
* supportingInfo ^type.targetProfile[48] = "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e"
* supportingInfo ^type.targetProfile[49] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* supportingInfo ^type.targetProfile[50] = "http://314e.com/fhir/StructureDefinition/requestgroup-314e"
* supportingInfo ^type.targetProfile[51] = "http://314e.com/fhir/StructureDefinition/schedule-314e"
* supportingInfo ^type.targetProfile[52] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* supportingInfo ^type.targetProfile[53] = "http://314e.com/fhir/StructureDefinition/slot-314e"
* supportingInfo ^type.targetProfile[54] = "http://314e.com/fhir/StructureDefinition/specimen-314e"
* supportingInfo ^type.targetProfile[55] = "http://314e.com/fhir/StructureDefinition/substance-314e"
* supportingInfo ^type.targetProfile[56] = "http://314e.com/fhir/StructureDefinition/task-314e"
* supportingInfo ^type.targetProfile[57] = "http://314e.com/fhir/StructureDefinition/visionprescription-314e"

* basedOn only Reference314e
* basedOn ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/careplan-314e"
* basedOn ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"
* basedOn ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"

* replaces only Reference314e
* replaces ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/servicerequest-314e"

* reasonReference only Reference314e
* reasonReference ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e"
* reasonReference ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"
* reasonReference ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* reasonReference ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* reasonReference ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/documentreference-314e"

// Identifiers
* identifier only Identifier314e
* requisition only Identifier314e

// CodeableConcepts
* code only CodeableConcept314e
* orderDetail only CodeableConcept314e
* reasonCode only CodeableConcept314e
* bodySite only CodeableConcept314e
* performerType only CodeableConcept314e
* asNeeded[x] only
    boolean or
    CodeableConcept314e

// dateTime
* authoredOn only dateTime314e

* occurrence[x] only
    dateTime314e or
    Period314e or
    Timing314e

// Quantity / Range / Ratio
* quantity[x] only
    Quantity314e or
    Range314e or
    Ratio314e

// Annotation
* note only Annotation314e



* meta only Meta314e
