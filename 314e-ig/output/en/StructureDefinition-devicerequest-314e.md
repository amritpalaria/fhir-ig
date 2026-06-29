# 314e DeviceRequest - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e DeviceRequest 

 
314e-constrained DeviceRequest profile derived from QI-Core DeviceRequest. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md)... Show 8 more, [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/devicerequest-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-devicerequest-314e.csv), [Excel](../StructureDefinition-devicerequest-314e.xlsx), [Schematron](../StructureDefinition-devicerequest-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "devicerequest-314e",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-primaryCodePath",
    "valueString" : "code"
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
    "valueString" : "DeviceRequest"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/devicerequest-314e",
  "version" : "1.0.0",
  "name" : "DeviceRequest314e",
  "title" : "314e DeviceRequest",
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
  "description" : "314e-constrained DeviceRequest profile derived from QI-Core DeviceRequest.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
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
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceRequest",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-devicerequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DeviceRequest",
      "path" : "DeviceRequest"
    },
    {
      "id" : "DeviceRequest.meta",
      "path" : "DeviceRequest.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.extension",
      "path" : "DeviceRequest.extension",
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
      "id" : "DeviceRequest.extension:additionalInfo",
      "path" : "DeviceRequest.extension",
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
      "id" : "DeviceRequest.identifier",
      "path" : "DeviceRequest.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.basedOn",
      "path" : "DeviceRequest.basedOn",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/devicerequest-314e",
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
      "id" : "DeviceRequest.priorRequest",
      "path" : "DeviceRequest.priorRequest",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/devicerequest-314e",
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
      "id" : "DeviceRequest.groupIdentifier",
      "path" : "DeviceRequest.groupIdentifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.code[x]",
      "path" : "DeviceRequest.code[x]",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/device-314e"]
      },
      {
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.parameter.code",
      "path" : "DeviceRequest.parameter.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.subject",
      "path" : "DeviceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.encounter",
      "path" : "DeviceRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.occurrence[x]",
      "path" : "DeviceRequest.occurrence[x]",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      },
      {
        "code" : "Timing",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/timing-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.authoredOn",
      "path" : "DeviceRequest.authoredOn",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.requester",
      "path" : "DeviceRequest.requester",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.performerType",
      "path" : "DeviceRequest.performerType",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.performer",
      "path" : "DeviceRequest.performer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e",
        "http://314e.com/fhir/StructureDefinition/healthcareservice-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.reasonCode",
      "path" : "DeviceRequest.reasonCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.reasonReference",
      "path" : "DeviceRequest.reasonReference",
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
      "id" : "DeviceRequest.insurance",
      "path" : "DeviceRequest.insurance",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/coverage-314e",
        "http://hl7.org/fhir/StructureDefinition/ClaimResponse"]
      }]
    },
    {
      "id" : "DeviceRequest.supportingInfo",
      "path" : "DeviceRequest.supportingInfo",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/devicerequest-314e",
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
      "id" : "DeviceRequest.note",
      "path" : "DeviceRequest.note",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    },
    {
      "id" : "DeviceRequest.relevantHistory",
      "path" : "DeviceRequest.relevantHistory",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Provenance"]
      }]
    }]
  }
}

```
