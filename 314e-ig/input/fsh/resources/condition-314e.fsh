Profile: Condition314e
Parent: Condition
Id: condition-314e
Title: "314e Condition"
Description: """
314e-constrained Condition profile derived from R4B Condition.

This profile applies 314e-defined extensions and uses 314e datatype profiles
where applicable.
"""

* ^url = "http://314e.com/fhir/StructureDefinition/condition-314e"
* ^status = #active

// ======================================================
// 314e EXTENSIONS
// ======================================================

* extension contains
    ResourceLastEditedUser named lastEditedUser 0..1

* extension[lastEditedUser] ^short =
    "Person who last edited this resource"

* extension contains
    ResourceEpisode named episode 0..1

* extension[episode] ^short =
    "Associated episode of care"

* extension contains
    ResourceAdditionalInfo named additionalInfo 0..*

* extension[additionalInfo] ^short =
    "Supplementary information for this resource"

* extension contains
    ConditionAssertedDate314e named assertedDate 0..1

* extension[assertedDate] ^short =
    "Date the condition, problem, or diagnosis was asserted"

// ======================================================
// 314e DATATYPE CONSTRAINTS
// ======================================================

* identifier only Identifier314e
* clinicalStatus only CodeableConcept314e
* verificationStatus only CodeableConcept314e
* category only CodeableConcept314e
* severity only CodeableConcept314e
* code only CodeableConcept314e
* bodySite only CodeableConcept314e
* subject only Reference314e
* subject ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* subject ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/group-314e"
* encounter only Reference314e
* encounter ^type.targetProfile = "http://314e.com/fhir/StructureDefinition/encounter-314e"
* onset[x] only dateTime314e or Age314e or Period314e or Range314e or string
* abatement[x] only dateTime314e or Age314e or Period314e or Range314e or string
* recorder only Reference314e
* recorder ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* recorder ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* recorder ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* recorder ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* asserter only Reference314e
* asserter ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/practitioner-314e"
* asserter ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/practitionerrole-314e"
* asserter ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/patient-314e"
* asserter ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/relatedperson-314e"
* stage.summary only CodeableConcept314e
* stage.assessment only Reference314e
* stage.assessment ^type.targetProfile[0] = "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e"
* stage.assessment ^type.targetProfile[1] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e"
* stage.assessment ^type.targetProfile[2] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e"
* stage.assessment ^type.targetProfile[3] = "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e"
* stage.assessment ^type.targetProfile[4] = "http://314e.com/fhir/StructureDefinition/observation-314e"
* stage.assessment ^type.targetProfile[5] = "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"
* stage.assessment ^type.targetProfile[6] = "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e"
* stage.assessment ^type.targetProfile[7] = "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"
* stage.assessment ^type.targetProfile[8] = "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"
* stage.type only CodeableConcept314e
* evidence.code only CodeableConcept314e
* evidence.detail only Reference314e
* evidence.detail ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Resource"
* note only Annotation314e
* meta only Meta314e
