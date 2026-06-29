# 314e ImmunizationRecommendation - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e ImmunizationRecommendation 

 
314e-constrained ImmunizationRecommendation profile derived from QI-Core ImmunizationRecommendation. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md)... Show 12 more, [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/immunizationrecommendation-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-immunizationrecommendation-314e.csv), [Excel](../StructureDefinition-immunizationrecommendation-314e.xlsx), [Schematron](../StructureDefinition-immunizationrecommendation-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunizationrecommendation-314e",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-primaryCodePath",
    "valueString" : "recommendation.vaccineCode"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-isIncluded",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-isRetrievable",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-label",
    "valueString" : "ImmunizationRecommendation"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e",
  "version" : "1.0.0",
  "name" : "ImmunizationRecommendation314e",
  "title" : "314e ImmunizationRecommendation",
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
  "description" : "314e-constrained ImmunizationRecommendation profile derived from QI-Core ImmunizationRecommendation.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImmunizationRecommendation",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrecommendation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImmunizationRecommendation",
      "path" : "ImmunizationRecommendation"
    },
    {
      "id" : "ImmunizationRecommendation.meta",
      "path" : "ImmunizationRecommendation.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.extension",
      "path" : "ImmunizationRecommendation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ImmunizationRecommendation.extension:additionalInfo",
      "path" : "ImmunizationRecommendation.extension",
      "sliceName" : "additionalInfo",
      "short" : "Supplementary information for this resource",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/resource-additionalInfo"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.identifier",
      "path" : "ImmunizationRecommendation.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.patient",
      "path" : "ImmunizationRecommendation.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.date",
      "path" : "ImmunizationRecommendation.date",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.authority",
      "path" : "ImmunizationRecommendation.authority",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.targetDisease",
      "path" : "ImmunizationRecommendation.recommendation.targetDisease",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.contraindicatedVaccineCode",
      "path" : "ImmunizationRecommendation.recommendation.contraindicatedVaccineCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "path" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.forecastReason",
      "path" : "ImmunizationRecommendation.recommendation.forecastReason",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.dateCriterion.code",
      "path" : "ImmunizationRecommendation.recommendation.dateCriterion.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.dateCriterion.value",
      "path" : "ImmunizationRecommendation.recommendation.dateCriterion.value",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.supportingImmunization",
      "path" : "ImmunizationRecommendation.recommendation.supportingImmunization",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/immunization-314e",
        "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.supportingPatientInformation",
      "path" : "ImmunizationRecommendation.recommendation.supportingPatientInformation",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e"]
      }]
    }]
  }
}

```
