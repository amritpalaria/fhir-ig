# Resource Additional Info - 314e FHIR Implementation Guide v1.0.0

## Extension: Resource Additional Info 

Applied at the root level of any resource. Used to capture supplementary or non-standard information related to a FHIR resource that is not represented by the core FHIR elements or existing profiles.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [314e Account](StructureDefinition-account-314e.md), [314e AllergyIntolerance](StructureDefinition-allergyintolerance-314e.md), [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md)... Show 48 more, [314e CareTeam](StructureDefinition-careteam-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e Coverage](StructureDefinition-coverage-314e.md), [314e DetectedIssue](StructureDefinition-detectedissue-314e.md), [314e Device](StructureDefinition-device-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Endpoint](StructureDefinition-endpoint-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e Group](StructureDefinition-group-314e.md), [314e HealthcareService](StructureDefinition-healthcareservice-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e ImmunizationEvaluation](StructureDefinition-immunizationevaluation-314e.md), [314e ImmunizationRecommendation](StructureDefinition-immunizationrecommendation-314e.md), [314e Location](StructureDefinition-location-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e Medication](StructureDefinition-medication-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e MolecularSequence](StructureDefinition-molecularsequence-314e.md), [314e NutritionOrder](StructureDefinition-nutritionorder-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e Organization](StructureDefinition-organization-314e.md), [314e Patient](StructureDefinition-patient-314e.md), [314e Practitioner](StructureDefinition-practitioner-314e.md), [314e PractitionerRole](StructureDefinition-practitionerrole-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e RelatedPerson](StructureDefinition-relatedperson-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e Schedule](StructureDefinition-schedule-314e.md), [314e Slot](StructureDefinition-slot-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md), [314e Substance](StructureDefinition-substance-314e.md), [314e Task](StructureDefinition-task-314e.md) and [314e VisionPrescription](StructureDefinition-visionprescription-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/resource-additionalInfo)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-resource-additionalInfo.csv), [Excel](../StructureDefinition-resource-additionalInfo.xlsx), [Schematron](../StructureDefinition-resource-additionalInfo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resource-additionalInfo",
  "url" : "http://314e.com/fhir/StructureDefinition/resource-additionalInfo",
  "version" : "1.0.0",
  "name" : "ResourceAdditionalInfo",
  "title" : "Resource Additional Info",
  "status" : "active",
  "date" : "2026-06-18T14:15:04+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "Applied at the root level of any resource. Used to capture supplementary\nor non-standard information related to a FHIR resource that is not\nrepresented by the core FHIR elements or existing profiles.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DomainResource"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Resource Additional Info",
      "definition" : "Applied at the root level of any resource. Used to capture supplementary\nor non-standard information related to a FHIR resource that is not\nrepresented by the core FHIR elements or existing profiles."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://314e.com/fhir/StructureDefinition/resource-additionalInfo"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Reference to supplementary information for this resource",
      "definition" : "Reference to an Observation resource that carries supplementary or\nnon-standard information associated with this resource that cannot be\nrepresented through standard FHIR elements or existing profiles.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"]
      }]
    }]
  }
}

```
