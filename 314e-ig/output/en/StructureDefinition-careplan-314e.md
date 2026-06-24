# 314e CarePlan - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e CarePlan 

 
314e-constrained CarePlan profile derived from QI-Core CarePlan. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md)... Show 14 more, [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/careplan-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-careplan-314e.csv), [Excel](../StructureDefinition-careplan-314e.xlsx), [Schematron](../StructureDefinition-careplan-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "careplan-314e",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-primaryCodePath",
    "valueString" : "category"
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
    "valueString" : "CarePlan"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/careplan-314e",
  "version" : "1.0.0",
  "name" : "CarePlan314e",
  "title" : "314e CarePlan",
  "status" : "active",
  "date" : "2026-06-24T16:34:23+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "314e-constrained CarePlan profile derived from QI-Core CarePlan.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careplan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.meta",
      "path" : "CarePlan.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "CarePlan.extension",
      "path" : "CarePlan.extension",
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
      "id" : "CarePlan.extension:targetDateTime",
      "path" : "CarePlan.extension",
      "sliceName" : "targetDateTime",
      "short" : "Target date-time for care plan completion or review",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/carePlan-targetDateTime"]
      }]
    },
    {
      "id" : "CarePlan.extension:additionalInfo",
      "path" : "CarePlan.extension",
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
      "id" : "CarePlan.identifier",
      "path" : "CarePlan.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "CarePlan.basedOn",
      "path" : "CarePlan.basedOn",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/careplan-314e"]
      }]
    },
    {
      "id" : "CarePlan.replaces",
      "path" : "CarePlan.replaces",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/careplan-314e"]
      }]
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/careplan-314e"]
      }]
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "CarePlan.category:AssessPlan",
      "path" : "CarePlan.category",
      "sliceName" : "AssessPlan",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "CarePlan.author",
      "path" : "CarePlan.author",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e"]
      }]
    },
    {
      "id" : "CarePlan.contributor",
      "path" : "CarePlan.contributor",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e"]
      }]
    },
    {
      "id" : "CarePlan.careTeam",
      "path" : "CarePlan.careTeam",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/careteam-314e"]
      }]
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/condition-314e",
        "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e",
        "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e"]
      }]
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource",
        "http://314e.com/fhir/StructureDefinition/account-314e",
        "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e",
        "http://314e.com/fhir/StructureDefinition/appointment-314e",
        "http://314e.com/fhir/StructureDefinition/careplan-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e",
        "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e",
        "http://314e.com/fhir/StructureDefinition/communicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/condition-314e",
        "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e",
        "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e",
        "http://314e.com/fhir/StructureDefinition/contract-314e",
        "http://314e.com/fhir/StructureDefinition/coverage-314e",
        "http://314e.com/fhir/StructureDefinition/detectedissue-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/devicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e",
        "http://314e.com/fhir/StructureDefinition/documentreference-314e",
        "http://314e.com/fhir/StructureDefinition/encounter-314e",
        "http://314e.com/fhir/StructureDefinition/endpoint-314e",
        "http://314e.com/fhir/StructureDefinition/episodeofcare-314e",
        "http://314e.com/fhir/StructureDefinition/goal-314e",
        "http://314e.com/fhir/StructureDefinition/group-314e",
        "http://314e.com/fhir/StructureDefinition/healthcareservice-314e",
        "http://314e.com/fhir/StructureDefinition/imagingstudy-314e",
        "http://314e.com/fhir/StructureDefinition/immunization-314e",
        "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e",
        "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e",
        "http://314e.com/fhir/StructureDefinition/location-314e",
        "http://314e.com/fhir/StructureDefinition/media-314e",
        "http://314e.com/fhir/StructureDefinition/medication-314e",
        "http://314e.com/fhir/StructureDefinition/medicationadministration-314e",
        "http://314e.com/fhir/StructureDefinition/medicationdispense-314e",
        "http://314e.com/fhir/StructureDefinition/medicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/molecularsequence-314e",
        "http://314e.com/fhir/StructureDefinition/nutritionorder-314e",
        "http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e",
        "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/procedure-314e",
        "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/requestgroup-314e",
        "http://314e.com/fhir/StructureDefinition/schedule-314e",
        "http://314e.com/fhir/StructureDefinition/servicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/slot-314e",
        "http://314e.com/fhir/StructureDefinition/specimen-314e",
        "http://314e.com/fhir/StructureDefinition/substance-314e",
        "http://314e.com/fhir/StructureDefinition/task-314e",
        "http://314e.com/fhir/StructureDefinition/visionprescription-314e"]
      }]
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/goal-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.extension",
      "path" : "CarePlan.activity.extension",
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
      "id" : "CarePlan.activity.extension:activityTargetDateTime",
      "path" : "CarePlan.activity.extension",
      "sliceName" : "activityTargetDateTime",
      "short" : "Target date-time for completing this care plan activity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/carePlan-activity-targetDateTime"]
      }]
    },
    {
      "id" : "CarePlan.activity.outcomeCodeableConcept",
      "path" : "CarePlan.activity.outcomeCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.outcomeReference",
      "path" : "CarePlan.activity.outcomeReference",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource",
        "http://314e.com/fhir/StructureDefinition/account-314e",
        "http://314e.com/fhir/StructureDefinition/allergyintolerance-314e",
        "http://314e.com/fhir/StructureDefinition/appointment-314e",
        "http://314e.com/fhir/StructureDefinition/careplan-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e",
        "http://314e.com/fhir/StructureDefinition/clinicalimpression-314e",
        "http://314e.com/fhir/StructureDefinition/communicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/condition-314e",
        "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e",
        "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e",
        "http://314e.com/fhir/StructureDefinition/contract-314e",
        "http://314e.com/fhir/StructureDefinition/coverage-314e",
        "http://314e.com/fhir/StructureDefinition/detectedissue-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/devicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e",
        "http://314e.com/fhir/StructureDefinition/documentreference-314e",
        "http://314e.com/fhir/StructureDefinition/encounter-314e",
        "http://314e.com/fhir/StructureDefinition/endpoint-314e",
        "http://314e.com/fhir/StructureDefinition/episodeofcare-314e",
        "http://314e.com/fhir/StructureDefinition/goal-314e",
        "http://314e.com/fhir/StructureDefinition/group-314e",
        "http://314e.com/fhir/StructureDefinition/healthcareservice-314e",
        "http://314e.com/fhir/StructureDefinition/imagingstudy-314e",
        "http://314e.com/fhir/StructureDefinition/immunization-314e",
        "http://314e.com/fhir/StructureDefinition/immunizationevaluation-314e",
        "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e",
        "http://314e.com/fhir/StructureDefinition/location-314e",
        "http://314e.com/fhir/StructureDefinition/media-314e",
        "http://314e.com/fhir/StructureDefinition/medication-314e",
        "http://314e.com/fhir/StructureDefinition/medicationadministration-314e",
        "http://314e.com/fhir/StructureDefinition/medicationdispense-314e",
        "http://314e.com/fhir/StructureDefinition/medicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/molecularsequence-314e",
        "http://314e.com/fhir/StructureDefinition/nutritionorder-314e",
        "http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e",
        "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/procedure-314e",
        "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/requestgroup-314e",
        "http://314e.com/fhir/StructureDefinition/schedule-314e",
        "http://314e.com/fhir/StructureDefinition/servicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/slot-314e",
        "http://314e.com/fhir/StructureDefinition/specimen-314e",
        "http://314e.com/fhir/StructureDefinition/substance-314e",
        "http://314e.com/fhir/StructureDefinition/task-314e",
        "http://314e.com/fhir/StructureDefinition/visionprescription-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.progress",
      "path" : "CarePlan.activity.progress",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/appointment-314e",
        "http://314e.com/fhir/StructureDefinition/communicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/devicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/medicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/nutritionorder-314e",
        "http://314e.com/fhir/StructureDefinition/task-314e",
        "http://314e.com/fhir/StructureDefinition/servicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/visionprescription-314e",
        "http://314e.com/fhir/StructureDefinition/requestgroup-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.code",
      "path" : "CarePlan.activity.detail.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.reasonCode",
      "path" : "CarePlan.activity.detail.reasonCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.reasonReference",
      "path" : "CarePlan.activity.detail.reasonReference",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/condition-314e",
        "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e",
        "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e",
        "http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e",
        "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e",
        "http://314e.com/fhir/StructureDefinition/documentreference-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.goal",
      "path" : "CarePlan.activity.detail.goal",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/goal-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.scheduled[x]",
      "path" : "CarePlan.activity.detail.scheduled[x]",
      "type" : [{
        "code" : "Timing",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/timing-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "CarePlan.activity.detail.location",
      "path" : "CarePlan.activity.detail.location",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/location-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.performer",
      "path" : "CarePlan.activity.detail.performer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e",
        "http://314e.com/fhir/StructureDefinition/healthcareservice-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.product[x]",
      "path" : "CarePlan.activity.detail.product[x]",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      },
      {
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication",
        "http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.dailyAmount",
      "path" : "CarePlan.activity.detail.dailyAmount",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.quantity",
      "path" : "CarePlan.activity.detail.quantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    }]
  }
}

```
