# 314e CodeableConcept - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e CodeableConcept 

 
314e profile of the FHIR CodeableConcept datatype. 
This profile supports: 
* standard terminology codings
* optional customer-specific internal codings
 
Internal codings are used to preserve customer, EHR, workflow, and source-system-native semantic classifications and source system fidelity. 
Any coding system intended to represent an internal coding system SHALL follow the required naming convention: 
[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode 
Example: acme-epic-Observation-lab-code-Glucose-InternalCode 

**Usages:**

* Use this DataType Profile: [314e Account](StructureDefinition-account-314e.md), [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Appointment](StructureDefinition-appointment-314e.md), [Attachment Tag](StructureDefinition-attachment-tag.md)... Show 58 more, [314e CarePlan](StructureDefinition-careplan-314e.md), [314e CareTeam](StructureDefinition-careteam-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e Coverage](StructureDefinition-coverage-314e.md), [314e DataRequirement](StructureDefinition-datarequirement-314e.md), [314e DetectedIssue](StructureDefinition-detectedissue-314e.md), [314e Device](StructureDefinition-device-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Dosage](StructureDefinition-dosage-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Endpoint](StructureDefinition-endpoint-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e Group](StructureDefinition-group-314e.md), [314e HealthcareService](StructureDefinition-healthcareservice-314e.md), [314e Identifier](StructureDefinition-identifier-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e ImmunizationEvaluation](StructureDefinition-immunizationevaluation-314e.md), [314e ImmunizationRecommendation](StructureDefinition-immunizationrecommendation-314e.md), [314e Location](StructureDefinition-location-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e Medication](StructureDefinition-medication-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e MolecularSequence](StructureDefinition-molecularsequence-314e.md), [314e NutritionOrder](StructureDefinition-nutritionorder-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Organization](StructureDefinition-organization-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [Patient Affiliation](StructureDefinition-patient-affiliation.md), [Patient Employment Status](StructureDefinition-patient-employmentStatus.md), [Patient Preferred Gender Pronoun](StructureDefinition-patient-preferredGenderPronoun.md), [314e Practitioner](StructureDefinition-practitioner-314e.md), [314e PractitionerRole](StructureDefinition-practitionerrole-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [Reference Context](StructureDefinition-reference-context.md), [314e RelatedPerson](StructureDefinition-relatedperson-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e Schedule](StructureDefinition-schedule-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md), [314e Slot](StructureDefinition-slot-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md), [314e Substance](StructureDefinition-substance-314e.md), [314e Task](StructureDefinition-task-314e.md), [314e Timing](StructureDefinition-timing-314e.md) and [314e VisionPrescription](StructureDefinition-visionprescription-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/codeableconcept-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-codeableconcept-314e.csv), [Excel](../StructureDefinition-codeableconcept-314e.xlsx), [Schematron](../StructureDefinition-codeableconcept-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "codeableconcept-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e",
  "version" : "1.0.0",
  "name" : "CodeableConcept314e",
  "title" : "314e CodeableConcept",
  "status" : "active",
  "date" : "2026-06-11T14:17:09+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR CodeableConcept datatype.\n\nThis profile supports:\n- standard terminology codings\n- optional customer-specific internal codings\n\nInternal codings are used to preserve customer, EHR,\nworkflow, and source-system-native semantic classifications and source system fidelity.\n\nAny coding system intended to represent an internal coding\nsystem SHALL follow the required naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[element]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CodeableConcept.coding",
      "path" : "CodeableConcept.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "CodeableConcept.coding:internalCode",
      "path" : "CodeableConcept.coding",
      "sliceName" : "internalCode",
      "short" : "Customer-specific internal coding with required internal code system format",
      "definition" : "Optional internal coding used to preserve\nsource-system-native semantics.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "CodeableConcept.coding:internalCode.system",
      "path" : "CodeableConcept.coding.system",
      "short" : "Internal code system identifier with required format",
      "definition" : "Internal customer-specific code system identifier.\n\nAny coding intended to represent an internal coding\nsystem SHALL use the following format:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalCode\n\nExample:\nacme-epic-Observation-lab-code-Glucose-InternalCode",
      "example" : [{
        "label" : "Internal Coding System",
        "valueUri" : "acme-epic-Observation-lab-code-Glucose-InternalCode"
      }]
    },
    {
      "id" : "CodeableConcept.coding:internalCode.code",
      "path" : "CodeableConcept.coding.code",
      "short" : "Internal source-specific code",
      "definition" : "Customer-specific or source-system-native code value."
    },
    {
      "id" : "CodeableConcept.coding:internalCode.display",
      "path" : "CodeableConcept.coding.display",
      "short" : "Internal source-specific display",
      "definition" : "Human-readable representation of the internal code."
    },
    {
      "id" : "CodeableConcept.text",
      "path" : "CodeableConcept.text",
      "definition" : "A human language representation of the concept\nas entered or chosen by the user."
    }]
  }
}

```
