# 314e ServiceRequest - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e ServiceRequest 

 
A 314e-constrained ServiceRequest profile derived from QI-Core ServiceRequest. 
This profile requires classification of the requested service using standardized high-level service categories and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md)... Show 19 more, [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Encounter](StructureDefinition-encounter-314e.md), [314e Episode Of Care](StructureDefinition-episodeofcare-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e Media](StructureDefinition-media-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md), [314e Specimen](StructureDefinition-specimen-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/servicerequest-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-servicerequest-314e.csv), [Excel](../StructureDefinition-servicerequest-314e.xlsx), [Schematron](../StructureDefinition-servicerequest-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "servicerequest-314e",
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
    "valueString" : "ServiceRequest"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/servicerequest-314e",
  "version" : "1.0.0",
  "name" : "ServiceRequest314e",
  "title" : "314e ServiceRequest",
  "status" : "draft",
  "date" : "2026-06-29T17:18:47+05:30",
  "publisher" : "314e",
  "contact" : [{
    "name" : "314e",
    "telecom" : [{
      "system" : "url",
      "value" : "http://314e.com"
    }]
  }],
  "description" : "A 314e-constrained ServiceRequest profile derived from\nQI-Core ServiceRequest.\n\nThis profile requires classification of the requested service\nusing standardized high-level service categories and uses\n314e datatype profiles where applicable.",
  "purpose" : "Provides a standardized and semantically categorized ServiceRequest\nprofile for clinical workflows.",
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
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.meta",
      "path" : "ServiceRequest.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier:internalIdentifier",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "internalIdentifier",
      "short" : "Customer-specific internal identifier whose system SHALL follow the mandated 314e naming convention",
      "definition" : "Customer-specific or internally defined identifier\nused within local workflows, source systems,\nor operational environments.\n\nIdentifier.system SHALL follow the naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier\n\nExample of Identifier.system for internal identifier:\nacme-cerner-ServiceRequest-imaging-identifier-AccessionNumber-InternalIdentifier",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier:internalIdentifier.system",
      "path" : "ServiceRequest.identifier.system",
      "example" : [{
        "label" : "Internal ServiceRequest accession identifier system",
        "valueUri" : "acme-cerner-ServiceRequest-imaging-identifier-AccessionNumber-InternalIdentifier"
      },
      {
        "label" : "Internal Identifier System for Patient",
        "valueUri" : "acme-epic-Patient--identifier-MRN-InternalIdentifier"
      }]
    },
    {
      "id" : "ServiceRequest.basedOn",
      "path" : "ServiceRequest.basedOn",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/careplan-314e",
        "http://314e.com/fhir/StructureDefinition/servicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/medicationrequest-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.replaces",
      "path" : "ServiceRequest.replaces",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/servicerequest-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Operational procedure/service categories",
      "definition" : "Broad and optional subcategory classifications used\nfor workflow, routing, analytics, and operational\ngrouping of ServiceRequest resources.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.category:us-core",
      "path" : "ServiceRequest.category",
      "sliceName" : "us-core",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.category:broadCategory",
      "path" : "ServiceRequest.category",
      "sliceName" : "broadCategory",
      "short" : "Required broad procedure/service category",
      "definition" : "Top-level operational classification of the requested\nservice or procedure.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ValueSet/procedure-category-broad-314e"
      }
    },
    {
      "id" : "ServiceRequest.category:subCategory",
      "path" : "ServiceRequest.category",
      "sliceName" : "subCategory",
      "short" : "Optional detailed subcategory",
      "definition" : "More granular operational sub-classification of the\nrequested service or procedure.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ValueSet/procedure-category-subcategory-314e"
      }
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.quantity[x]",
      "path" : "ServiceRequest.quantity[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
      },
      {
        "code" : "Ratio",
        "profile" : ["http://314e.com/fhir/StructureDefinition/ratio-314e"]
      },
      {
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "Timing",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/timing-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.asNeeded[x]",
      "path" : "ServiceRequest.asNeeded[x]",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : false
          }]
        },
        null]
      }]
    },
    {
      "id" : "ServiceRequest.performerType",
      "path" : "ServiceRequest.performerType",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
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
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e",
        "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e",
        "http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e",
        "http://314e.com/fhir/StructureDefinition/documentreference-314e"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
            "valueBoolean" : true
          }]
        },
        null,
        null,
        null]
      }]
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/coverage-314e",
        "http://hl7.org/fhir/StructureDefinition/ClaimResponse"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
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
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/specimen-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    }]
  }
}

```
