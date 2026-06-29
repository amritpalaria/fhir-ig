# 314e Identifier - 314e FHIR Implementation Guide v1.0.0

## Data Type Profile: 314e Identifier 

 
314e profile of the FHIR Identifier datatype. 
This profile requires Identifier.system whenever Identifier.value is populated. 
For customer-specific or internally defined identifiers, Identifier.system SHALL follow the naming convention: 
[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier 
Example: acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier 

**Usages:**

* Use this DataType Profile: [314e Account](StructureDefinition-account-314e.md), [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md)... Show 52 more, [314e CareTeam](StructureDefinition-careteam-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e Coverage](StructureDefinition-coverage-314e.md), [314e DetectedIssue](StructureDefinition-detectedissue-314e.md), [314e Device](StructureDefinition-device-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Endpoint](StructureDefinition-endpoint-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e Group](StructureDefinition-group-314e.md), [314e HealthcareService](StructureDefinition-healthcareservice-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e ImmunizationEvaluation](StructureDefinition-immunizationevaluation-314e.md), [314e ImmunizationRecommendation](StructureDefinition-immunizationrecommendation-314e.md), [314e Location](StructureDefinition-location-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e Medication](StructureDefinition-medication-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e MolecularSequence](StructureDefinition-molecularsequence-314e.md), [314e NutritionOrder](StructureDefinition-nutritionorder-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Organization](StructureDefinition-organization-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [314e Person](StructureDefinition-person-314e.md), [314e Practitioner](StructureDefinition-practitioner-314e.md), [314e PractitionerRole](StructureDefinition-practitionerrole-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e Reference](StructureDefinition-reference-314e.md), [314e RelatedPerson](StructureDefinition-relatedperson-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e Schedule](StructureDefinition-schedule-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md), [314e Slot](StructureDefinition-slot-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md), [314e Substance](StructureDefinition-substance-314e.md), [314e Task](StructureDefinition-task-314e.md) and [314e VisionPrescription](StructureDefinition-visionprescription-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/identifier-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-identifier-314e.csv), [Excel](../StructureDefinition-identifier-314e.xlsx), [Schematron](../StructureDefinition-identifier-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "identifier-314e",
  "url" : "http://314e.com/fhir/ig/StructureDefinition/identifier-314e",
  "version" : "1.0.0",
  "name" : "Identifier314e",
  "title" : "314e Identifier",
  "status" : "active",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e profile of the FHIR Identifier datatype.\n\nThis profile requires Identifier.system whenever\nIdentifier.value is populated.\n\nFor customer-specific or internally defined identifiers,\nIdentifier.system SHALL follow the naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier\n\nExample:\nacme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "constraint" : [{
        "key" : "identifier314e-1",
        "severity" : "error",
        "human" : "If Identifier.value is populated, Identifier.system SHALL also be populated.",
        "expression" : "value.exists() implies system.exists()",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/identifier-314e"
      },
      {
        "key" : "identifier314e-2",
        "severity" : "error",
        "human" : "If Identifier.system represents an internal identifier system,\nit SHALL follow the required naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier",
        "expression" : "system.exists()\n  and system.endsWith('-InternalIdentifier')\n  implies\n  system.matches('^[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-[^-]+-InternalIdentifier$')",
        "source" : "http://314e.com/fhir/ig/StructureDefinition/identifier-314e"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Identifier namespace URI or constrained-format internal identifier-system name",
      "definition" : "Establishes the namespace, issuer, or context in which the identifier value is unique.\n\nStandard identifiers SHOULD use canonical URIs whenever available.\n\nFor customer-specific or internally defined identifier systems,\nthe following naming convention SHALL be used:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier",
      "example" : [{
        "label" : "Internal Identifier System for Observation-lab",
        "valueUri" : "acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier"
      },
      {
        "label" : "Internal Identifier System for Patient",
        "valueUri" : "acme-epic-Patient--identifier-MRN-InternalIdentifier"
      }]
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "The identifier value",
      "definition" : "The portion of the identifier typically relevant to the user\nand which is unique within the context of the system.",
      "comment" : "If Identifier.value is populated,\nIdentifier.system SHALL also be populated."
    },
    {
      "id" : "Identifier.period",
      "path" : "Identifier.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    }]
  }
}

```
