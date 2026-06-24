# 314e Immunization - 314e FHIR Implementation Guide v1.0.0

## Resource Profile: 314e Immunization 

 
314e-constrained Immunization profile derived from QI-Core Immunization. 
This profile applies 314e-defined extensions and uses 314e datatype profiles where applicable. 

**Usages:**

* Refer to this Profile: [314e CarePlan](StructureDefinition-careplan-314e.md), [314e Condition Encounter Diagnosis](StructureDefinition-condition-diagnosis-314e.md), [314e Condition Problems Health Concerns](StructureDefinition-condition-problem-healthconcern-314e.md), [314e DeviceRequest](StructureDefinition-devicerequest-314e.md)... Show 9 more, [314e DocumentReference](StructureDefinition-documentreference-314e.md), [314e ImmunizationEvaluation](StructureDefinition-immunizationevaluation-314e.md), [314e ImmunizationRecommendation](StructureDefinition-immunizationrecommendation-314e.md), [314e MedicationDispense](StructureDefinition-medicationdispense-314e.md), [314e MedicationRequest](StructureDefinition-medicationrequest-314e.md), [314e Observation](StructureDefinition-observation-314e.md), [314e General Laboratory Observation](StructureDefinition-observation-lab-general-314e.md), [314e ServiceRequest](StructureDefinition-servicerequest-314e.md) and [314e Task](StructureDefinition-task-314e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.314e|current/StructureDefinition/immunization-314e)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-immunization-314e.csv), [Excel](../StructureDefinition-immunization-314e.xlsx), [Schematron](../StructureDefinition-immunization-314e.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunization-314e",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-modelInfo-primaryCodePath",
    "valueString" : "vaccineCode"
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
    "valueString" : "Immunization"
  }],
  "url" : "http://314e.com/fhir/StructureDefinition/immunization-314e",
  "version" : "1.0.0",
  "name" : "Immunization314e",
  "title" : "314e Immunization",
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
  "description" : "314e-constrained Immunization profile derived from QI-Core Immunization.\n\nThis profile applies 314e-defined extensions and uses 314e datatype profiles\nwhere applicable.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.meta",
      "path" : "Immunization.meta",
      "type" : [{
        "code" : "Meta",
        "profile" : ["http://314e.com/fhir/StructureDefinition/meta-314e"]
      }]
    },
    {
      "id" : "Immunization.extension",
      "path" : "Immunization.extension",
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
      "id" : "Immunization.extension:lastEditedUser",
      "path" : "Immunization.extension",
      "sliceName" : "lastEditedUser",
      "short" : "Person who last edited this resource",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314e.com/fhir/StructureDefinition/resource-lastEditedUser"]
      }]
    },
    {
      "id" : "Immunization.extension:episode",
      "path" : "Immunization.extension",
      "sliceName" : "episode",
      "short" : "Associated episode of care",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://314ecorp.com/fhir/StructureDefinition/resource-episode"]
      }]
    },
    {
      "id" : "Immunization.extension:additionalInfo",
      "path" : "Immunization.extension",
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
      "id" : "Immunization.identifier",
      "path" : "Immunization.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/identifier-314e"]
      }]
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/patient-314e"]
      }]
    },
    {
      "id" : "Immunization.encounter",
      "path" : "Immunization.encounter",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/encounter-314e"]
      }]
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "Immunization.recorded",
      "path" : "Immunization.recorded",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "Immunization.reportOrigin",
      "path" : "Immunization.reportOrigin",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.location",
      "path" : "Immunization.location",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/location-314e"]
      }]
    },
    {
      "id" : "Immunization.manufacturer",
      "path" : "Immunization.manufacturer",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.doseQuantity",
      "path" : "Immunization.doseQuantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://314e.com/fhir/StructureDefinition/simplequantity-314e"]
      }]
    },
    {
      "id" : "Immunization.performer.function",
      "path" : "Immunization.performer.function",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.performer.actor",
      "path" : "Immunization.performer.actor",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/practitioner-314e",
        "http://314e.com/fhir/StructureDefinition/practitionerrole-314e",
        "http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Immunization.note",
      "path" : "Immunization.note",
      "type" : [{
        "code" : "Annotation",
        "profile" : ["http://314e.com/fhir/StructureDefinition/annotation-314e"]
      }]
    },
    {
      "id" : "Immunization.reasonCode",
      "path" : "Immunization.reasonCode",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.reasonReference",
      "path" : "Immunization.reasonReference",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/condition-314e",
        "http://314e.com/fhir/StructureDefinition/condition-diagnosis-314e",
        "http://314e.com/fhir/StructureDefinition/condition-problem-healthconcern-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-lab-314e",
        "http://314e.com/fhir/StructureDefinition/diagnosticreport-notereport-314e",
        "http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e",
        "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e"]
      }]
    },
    {
      "id" : "Immunization.subpotentReason",
      "path" : "Immunization.subpotentReason",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    },
    {
      "id" : "Immunization.reaction.date",
      "path" : "Immunization.reaction.date",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/datetime-314e"]
      }]
    },
    {
      "id" : "Immunization.reaction.detail",
      "path" : "Immunization.reaction.detail",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/observation-314e",
        "http://314e.com/fhir/StructureDefinition/observation-antimicrobial-susceptibility-314e",
        "http://314e.com/fhir/StructureDefinition/observation-lab-general-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microbiology-314e",
        "http://314e.com/fhir/StructureDefinition/observation-microorganism-314e"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied.authority",
      "path" : "Immunization.protocolApplied.authority",
      "type" : [{
        "code" : "Reference",
        "profile" : ["http://314e.com/fhir/StructureDefinition/reference-314e"],
        "targetProfile" : ["http://314e.com/fhir/StructureDefinition/organization-314e"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease",
      "path" : "Immunization.protocolApplied.targetDisease",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["http://314e.com/fhir/ig/StructureDefinition/codeableconcept-314e"]
      }]
    }]
  }
}

```
