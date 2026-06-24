# 314e DocumentReference - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e DocumentReference 

 
314e-constrained DocumentReference profile derived from QI-Core DocumentReference. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md)... Show 12 more, [314e Contract](StructureDefinition-contract-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e ImagingStudy](StructureDefinition-imagingstudy-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/documentreference-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-documentreference-314e.csv), [Excel](../StructureDefinition-documentreference-314e.xlsx), [Schematron](../StructureDefinition-documentreference-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "documentreference-314e",
  "url" : "http://314e.com/fhir/StructureDefinition/documentreference-314e",
  "version" : "1.0.0",
  "name" : "DocumentReference314e",
  "title" : "314e DocumentReference",
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
  "description" : "314e-constrained DocumentReference profile derived from QI-Core DocumentReference.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.meta",
      "path" : "DocumentReference.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
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
      "id" : "DocumentReference.extension:additionalInfo",
      "path" : "DocumentReference.extension",
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
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.category:uscore",
      "path" : "DocumentReference.category",
      "sliceName" : "uscore",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/group-314e",
        "http://314e.com/fhir/StructureDefinition/practitioner-314e"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        }]
      }]
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "type" : [{
        "code" : "instant",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/instant-314e"]
      }]
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/device-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        }]
      }]
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "DocumentReference.relatesTo.target",
      "path" : "DocumentReference.relatesTo.target",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/documentreference-314e"]
      }]
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://314e.com/fhir/StructureDefinition/attachment-314e"]
      }]
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/coding-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.extension",
      "path" : "DocumentReference.context.extension",
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
      "id" : "DocumentReference.context.extension:contextDictationDateTime",
      "path" : "DocumentReference.context.extension",
      "sliceName" : "contextDictationDateTime",
      "short" : "Date and time the document content was dictated",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/documentReference-context-dictationDateTime"]
      }]
    },
    {
      "id" : "DocumentReference.context.extension:cosigner",
      "path" : "DocumentReference.context.extension",
      "sliceName" : "cosigner",
      "short" : "Co-signer of the document",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/documentReference-context-cosigner"]
      }]
    },
    {
      "id" : "DocumentReference.context.extension:reportDateTime",
      "path" : "DocumentReference.context.extension",
      "sliceName" : "reportDateTime",
      "short" : "Date and time the finalized report was released",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/documentReference-context-reportDateTime"]
      }]
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.event",
      "path" : "DocumentReference.context.event",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "type" : [{
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.sourcePatientInfo",
      "path" : "DocumentReference.context.sourcePatientInfo",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
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
    }]
  }
}

```
