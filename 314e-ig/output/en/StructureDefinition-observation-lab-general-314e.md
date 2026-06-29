# 314e General Laboratory Observation - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e General Laboratory Observation 

 
314e profile for general laboratory observations. 
This profile derives from the QI Core Laboratory Result Observation profile and constrains datatypes to corresponding 314e datatype profiles where applicable. 
A required category slice SHALL identify the laboratory subcategory using a code from LabCategorySubcategory314eVS. 
This profile also supports the ValueAttachment314e extension for scenarios where the laboratory result cannot be represented using structured Observation.value[x] datatypes or plain text. 

**Usages:**

* Derived from this Profile: [314e Microbiology Observation](StructureDefinition-observation-microbiology-314e.md)
* Refer to this Profile: [314e Appointment](StructureDefinition-appointment-314e.md), [314e CarePlan](StructureDefinition-careplan-314e.md), [314e ClinicalImpression](StructureDefinition-clinicalimpression-314e.md), [314e CommunicationRequest](StructureDefinition-communicationrequest-314e.md)... Show 21 more, [314e Condition](StructureDefinition-condition-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e Contract](StructureDefinition-contract-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md), [314e DiagnosticReport](StructureDefinition-diagnosticreport-314e.md), [314e DiagnosticReport Laboratory Results](StructureDefinition-diagnosticreport-lab-314e.md), [314e DiagnosticReport Note and Report](StructureDefinition-diagnosticreport-notereport-314e.md), [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e Goal](StructureDefinition-goal-314e.md), [314e Immunization](StructureDefinition-immunization-314e.md), [314e MedicationAdministration](StructureDefinition-medicationadministration-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e Procedure](StructureDefinition-procedure-314e.md), [314e QuestionnaireResponse](StructureDefinition-questionnaireresponse-314e.md), [314e RequestGroup](StructureDefinition-requestgroup-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/observation-lab-general-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-observation-lab-general-314e.csv), [Excel](../StructureDefinition-observation-lab-general-314e.xlsx), [Schematron](../StructureDefinition-observation-lab-general-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "observation-lab-general-314e",
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
    "valueString" : "LaboratoryResultObservation"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
  "version" : "1.0.0",
  "name" : "ObservationLabGeneral314e",
  "title" : "314e General Laboratory Observation",
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
  "description" : "314e profile for general laboratory observations.\n\nThis profile derives from the QI Core Laboratory Result Observation profile\nand constrains datatypes to corresponding 314e datatype profiles where applicable.\n\nA required category slice SHALL identify the laboratory subcategory\nusing a code from LabCategorySubcategory314eVS.\n\nThis profile also supports the ValueAttachment314e extension\nfor scenarios where the laboratory result cannot be represented\nusing structured Observation.value[x] datatypes or plain text.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation-lab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
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
      "id" : "Observation.extension:valueAttachment",
      "path" : "Observation.extension",
      "sliceName" : "valueAttachment",
      "short" : "Attachment representation of the observation result",
      "definition" : "Used when the laboratory result cannot reasonably be represented\nusing one of the structured Observation.value[x] datatypes\nor as plain text.\n\nExamples include:\n- rendered PDF reports\n- image-based results\n- externally generated proprietary payloads\n- complex formatted laboratory output",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/observation-valueAttachment"]
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
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
      "id" : "Observation.identifier:internalIdentifier",
      "path" : "Observation.identifier",
      "sliceName" : "internalIdentifier",
      "short" : "Customer-specific internal identifier whose system SHALL follow the 314e internal naming convention",
      "definition" : "Customer-specific or internally defined identifier.\n\nIdentifier.system SHALL follow the mandated 314e naming convention:\n\n[customer]-[ehr]-[ResourceType]-[resource-subtype]-[eleMent]-[SourceSpecificString]-InternalIdentifier\n\nExample:\nacme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Observation.identifier:internalIdentifier.system",
      "path" : "Observation.identifier.system",
      "example" : [{
        "label" : "Internal laboratory accession identifier system",
        "valueUri" : "acme-cerner-Observation-lab-identifier-AccessionNumber-InternalIdentifier"
      }]
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/servicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/careplan-314e",
        "http://314e.com/fhir/StructureDefinition/devicerequest-314e",
        "http://314e.com/fhir/StructureDefinition/immunizationrecommendation-314e",
        "http://314e.com/fhir/StructureDefinition/medicationrequest-314e",
        "http://314e.com/fhir/StructureDefinition/nutritionorder-314e"]
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/medicationadministration-314e",
        "http://314e.com/fhir/StructureDefinition/medicationdispense-314e",
        "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
        "http://314e.com/fhir/StructureDefinition/procedure-314e",
        "http://314e.com/fhir/StructureDefinition/immunization-314e",
        "http://314e.com/fhir/StructureDefinition/imagingstudy-314e"]
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 2,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.category:us-core",
      "path" : "Observation.category",
      "sliceName" : "us-core",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.category:labSubcategory",
      "path" : "Observation.category",
      "sliceName" : "labSubcategory",
      "short" : "Required laboratory category/subcategory classification",
      "definition" : "Required laboratory category/subcategory classification\nfor the non-microbiology laboratory observation.\n\nThe code SHALL be drawn from LabCategorySubcategory314eVS.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://314e.com/fhir/ValueSet/lab-category-subcategory-314e"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
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
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
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
      },
      {
        "code" : "instant",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/instant-314e"]
      }]
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "type" : [{
        "code" : "instant",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/instant-314e"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e",
        "http://314e.com/fhir/StructureDefinition/careteam-314e",
        "http://314e.com/fhir/StructureDefinition/patient-314e",
        "http://314e.com/fhir/StructureDefinition/relatedperson-314e"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
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
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
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
        "code" : "string"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "boolean"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "integer"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "Ratio",
        "profile" : ["http://314e.com/fhir/StructureDefinition/ratio-314e"]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "SampledData",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/sampleddata-314e"]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-keyelement",
          "valueBoolean" : true
        }],
        "code" : "time",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/time-314e"]
      },
      {
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
        }],
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/specimen-314e"]
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/device-314e",
        "http://hl7.org/fhir/StructureDefinition/DeviceMetric"]
      }]
    },
    {
      "id" : "Observation.referenceRange.low",
      "path" : "Observation.referenceRange.low",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Observation.referenceRange.high",
      "path" : "Observation.referenceRange.high",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Observation.referenceRange.type",
      "path" : "Observation.referenceRange.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.referenceRange.appliesTo",
      "path" : "Observation.referenceRange.appliesTo",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.referenceRange.age",
      "path" : "Observation.referenceRange.age",
      "type" : [{
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.hasMember:childObservation",
      "path" : "Observation.hasMember",
      "sliceName" : "childObservation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-lab-general-314e"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/documentreference-314e",
        "http://314e.com/fhir/StructureDefinition/imagingstudy-314e",
        "http://314e.com/fhir/StructureDefinition/media-314e",
        "http://314e.com/fhir/StructureDefinition/questionnaireresponse-314e",
        "http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e",
        "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e",
        "http://314e.com/fhir/StructureDefinition/molecularsequence-314e"]
      }]
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/quantity-314e"]
      },
      {
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      },
      {
        "code" : "string"
      },
      {
        "code" : "boolean"
      },
      {
        "code" : "integer"
      },
      {
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      },
      {
        "code" : "Ratio",
        "profile" : ["http://314e.com/fhir/StructureDefinition/ratio-314e"]
      },
      {
        "code" : "SampledData",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/sampleddata-314e"]
      },
      {
        "code" : "time",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/time-314e"]
      },
      {
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "code" : "Period",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/period-314e"]
      }]
    },
    {
      "id" : "Observation.component.interpretation",
      "path" : "Observation.component.interpretation",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.component.referenceRange",
      "path" : "Observation.component.referenceRange",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Observation.component.referenceRange.low",
      "path" : "Observation.component.referenceRange.low",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Observation.component.referenceRange.high",
      "path" : "Observation.component.referenceRange.high",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Observation.component.referenceRange.type",
      "path" : "Observation.component.referenceRange.type",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.component.referenceRange.appliesTo",
      "path" : "Observation.component.referenceRange.appliesTo",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Observation.component.referenceRange.age",
      "path" : "Observation.component.referenceRange.age",
      "type" : [{
        "code" : "Range",
        "profile" : ["http://314e.com/fhir/StructureDefinition/range-314e"]
      }]
    }]
  }
}

```
